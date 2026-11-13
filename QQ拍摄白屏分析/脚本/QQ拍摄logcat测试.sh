#!/system/bin/sh
# QQ拍摄logcat测试.sh
# 用途：在手机本地（root）抓取打开 QQ「拍摄」界面时的图形/相机日志，
#       用于判断白屏是 EGL/GLES/着色器问题，还是相机 buffer 没送到 SurfaceTexture。
# 用法：
#   1) MT 管理器终端（推荐，MT 的 su -c 会错误处理引号，不要用 su -c）：
#        su
#        sh /storage/emulated/0/一键另存/测试/QQ拍摄logcat测试.sh
#        exit
#   2) PC 端：adb push QQ拍摄logcat测试.sh /data/local/tmp/
#            adb shell
#            su
#            sh /data/local/tmp/QQ拍摄logcat测试.sh
# 注意：本脚本不会自动运行；需要手动执行。运行期间请打开 QQ 的拍摄界面。
#       只读采集，不修改系统、不安装应用。

SELF="$0"
case "$SELF" in
  /*) ;;
  *) SELF="$(cd "$(dirname "$0")" 2>/dev/null && pwd)/$(basename "$0")" ;;
esac

# ---------- 1. root 检查与重入 ----------
if [ "$(id -u 2>/dev/null)" != "0" ]; then
  echo "[!] 当前不是 root，尝试通过 su 重新执行..."
  if command -v su >/dev/null 2>&1; then
    if su -c "sh \"$SELF\""; then
      exit 0
    fi
    echo "[x] su -c 执行失败（MT 终端可能错误处理引号）。请先执行 su，再运行："
    echo "    sh \"$SELF\""
    exit 1
  else
    echo "[x] 未找到 su，无法读取完整 logcat。"
    echo "    请先在 KernelSU/Magisk 中授予 root，然后：su → sh \"$SELF\""
    exit 1
  fi
fi

# ---------- 2. 选择可写输出目录 ----------
PREFER="/storage/emulated/0/一键另存/测试"
FALLBACK="/data/local/tmp"
OUTDIR=""
for d in "$PREFER" "$FALLBACK"; do
  mkdir -p "$d" 2>/dev/null
  if [ -d "$d" ] && touch "$d/.qq_log_test" 2>/dev/null; then
    rm -f "$d/.qq_log_test"
    OUTDIR="$d"
    break
  fi
done
if [ -z "$OUTDIR" ]; then
  echo "[x] 找不到可写目录（$PREFER / $FALLBACK）"
  exit 1
fi

RESULT="$OUTDIR/QQ拍摄logcat结果.log"
RAW="$OUTDIR/QQ拍摄logcat原始.log"
TMPFLAG="$OUTDIR/.qq_stop_$$"

echo "[i] 输出目录：$OUTDIR"
echo "[i] 结果文件：$RESULT"
echo "[i] 原始日志：$RAW"

# ---------- 3. 清理与开始采集 ----------
logcat -c 2>/dev/null
logcat -b all -v threadtime > "$RAW" 2>&1 &
LOGPID=$!

cleanup() {
  kill "$LOGPID" 2>/dev/null
  wait "$LOGPID" 2>/dev/null
  rm -f "$TMPFLAG"
}
trap cleanup EXIT INT TERM

# 30 秒定时器 + 回车提前结束
( sleep 30; touch "$TMPFLAG" 2>/dev/null ) &
TIMERPID=$!

echo ""
echo "============================================================"
echo " 现在请打开 QQ → 进入「拍摄」界面（让白屏出现），保持 30 秒。"
echo " 提前结束请按回车。"
echo "============================================================"
echo ""

if (echo | read -t 1 -r _ ) 2>/dev/null; then
  while [ ! -f "$TMPFLAG" ]; do
    if read -t 1 -r _ 2>/dev/null; then
      break
    fi
  done
else
  echo "[i] 当前 shell 的 read 不支持 -t，改为固定等待 30 秒。"
  sleep 30
fi

kill "$TIMERPID" 2>/dev/null
rm -f "$TMPFLAG"
cleanup

echo "[i] 采集结束，正在整理日志..."

# ---------- 4. 生成结果文件 ----------
{
  echo "QQ 拍摄白屏 logcat 测试结果"
  echo "生成时间：$(date '+%Y-%m-%d %H:%M:%S')"
  echo "设备：$(getprop ro.product.manufacturer) $(getprop ro.product.model)"
  echo "ROM：$(getprop ro.build.display.id)"
  echo "Android：$(getprop ro.build.version.release) (SDK $(getprop ro.build.version.sdk))"
  echo "内核：$(uname -a)"
  echo "SoC：$(getprop ro.soc.model) / $(getprop ro.board.platform)"
  echo ""

  echo "==================== 一、图形属性快照 ===================="
  getprop 2>/dev/null | grep -iE "gpu|adreno|egl|vulkan" | sort
  echo ""

  echo "==================== 二、SurfaceFlinger / 驱动 ===================="
  dumpsys SurfaceFlinger 2>/dev/null | grep -iE "GLES|Vulkan|Driver|GPU" | head -40
  echo ""

  echo "==================== 三、Camera 服务 ===================="
  dumpsys media.camera 2>/dev/null | head -100
  echo ""

  echo "==================== 四、关键日志（过滤） ===================="
  echo "---- EGL / GLES / Adreno / gralloc / Camera / SurfaceTexture / BufferQueue / shader / tencent / qq / linker / AEKit ----"
  grep -iE "EGL|GLES|Adreno|gralloc|Camera|Camera2|SurfaceTexture|BufferQueue|shader|tencent|qq|linker|AELightLog|loadMem|ReadSample|LightResourceChecker|app_lib|bundle|shader name" "$RAW" 2>/dev/null | tail -500
  echo ""

  echo "==================== 五、错误摘要 ===================="
  echo "---- EGL_BAD_* ----"
  grep -E "EGL_BAD_[A-Z_]+" "$RAW" 2>/dev/null | tail -30
  echo "---- GL_INVALID_* ----"
  grep -E "GL_INVALID_[A-Z_]+" "$RAW" 2>/dev/null | tail -30
  echo "---- 着色器编译/链接 ----"
  grep -iE "shader.*(error|fail)|compile.*(error|fail)|link.*(error|fail)|Could not compile|Could not link|glGetShaderInfoLog|glGetProgramInfoLog" "$RAW" 2>/dev/null | tail -40
  echo "---- AEKit / Light SDK 着色器资源 ----"
  grep -iE "loadMem open file failed|vertex shader is invalid|ReadSample error|checkBundleResources fails|isAEKitNeedDownload|assets/shaders" "$RAW" 2>/dev/null | tail -50
  echo "---- BufferQueue abandoned ----"
  grep -iE "BufferQueue.*abandon|abandoned" "$RAW" 2>/dev/null | tail -20
  echo "---- linker / dlopen ----"
  grep -iE "linker.*(not found|cannot locate|unable to)|dlopen failed|couldn't find" "$RAW" 2>/dev/null | tail -30
  echo "---- Adreno / kgsl / GPU 错误 ----"
  grep -iE "Adreno.*(error|fail|timeout)|kgsl.*(error|fail|timeout)|GPU.*(fault|hang|timeout)" "$RAW" 2>/dev/null | tail -30
  echo "---- Camera 错误 ----"
  grep -iE "onConfigureFailed|onError|Camera.*(error|fail)|createCaptureSession.*(fail|error)|setPreviewTexture.*(fail|error)" "$RAW" 2>/dev/null | tail -30
  echo "---- SurfaceTexture / EGLImage 导入 ----"
  grep -iE "SurfaceTexture.*(error|fail)|eglCreateImage.*(fail|error)|EGLImage.*(fail|error)|dequeueBuffer.*(fail|error)" "$RAW" 2>/dev/null | tail -30
  echo ""

  echo "==================== 六、文件位置 ===================="
  echo "原始全量日志：$RAW"
  echo "若上面各节为空，请把原始日志整体取出，用 PC 端继续分析。"
} > "$RESULT" 2>&1

# ---------- 5. 终端摘要 ----------
echo ""
echo "==================== 关键错误摘要 ===================="
grep -hE "EGL_BAD_|GL_INVALID_|onConfigureFailed|BufferQueue.*abandon|Could not compile|Could not link|linker.*(not found|cannot locate)|dlopen failed|eglCreateImage.*(fail|error)|loadMem open file failed|vertex shader is invalid|ReadSample error|checkBundleResources fails" "$RAW" 2>/dev/null | tail -40
echo "======================================================"
echo ""
echo "[✓] 完成。结果：$RESULT"
echo "    原始日志：$RAW"
echo ""
echo "提示：若结果里没有明显报错，重点看："
echo "  1) 是否有 Camera2 onConfigureFailed / onError"
echo "  2) 是否有 SurfaceTexture / BufferQueue / eglCreateImage 失败"
echo "  3) 是否有 Adreno / kgsl 超时或 metadata mismatch"
echo "  4) 是否有 QQ 的 AECameraGLSurfaceView / AEFilterProcessTex 日志中断"
