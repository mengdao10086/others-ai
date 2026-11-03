package com.mengdao.lsposedtoolkit.gallery;

/**
 * 相册与 aicr 之间唯一的跨进程约定。
 *
 * 相册侧按 ACTION_* 启动 aicr 的保活服务（备用通道为显式广播）；aicr 侧在
 * :searchDataService 内把它转成 provider.SearchDataBaseProvider 的 call。
 * 两边共用一个常量来源，避免字面量漂移。
 */
public final class AicrProtocol {

    public static final String PACKAGE = "com.xiaomi.aicr";
    public static final String RECEIVER_CLASS =
            "com.xiaomi.aicr.aisearch.receiver.AISearchStaticReceiver";

    /**
     * aicr 自身的保活前台服务，同样位于 :searchDataService。
     * aicr 在 AISearchOperation.startWork 里也是用 startService 拉起它，
     * 这里借它做「启动进程」的可靠入口。
     */
    public static final String SERVICE_CLASS =
            "com.xiaomi.aicr.searchpro.service.AiCrSearchDataBaseService";

    public static final String ACTION_START = "com.mengdao.lsposedtoolkit.action.AICR_START";
    public static final String ACTION_STOP = "com.mengdao.lsposedtoolkit.action.AICR_STOP";
    /** 相册主动问一次当前状态，让设置页首次渲染就有值。 */
    public static final String ACTION_QUERY = "com.mengdao.lsposedtoolkit.action.AICR_QUERY";

    /** aicr → 相册的状态回报（运行状态 + 进度），相册侧动态注册接收器。 */
    public static final String ACTION_STATE = "com.mengdao.lsposedtoolkit.action.AICR_STATE";
    public static final String GALLERY_PACKAGE = "com.miui.gallery";
    public static final String EXTRA_STATUS = "status";
    public static final String EXTRA_PROGRESS = "progress";
    public static final String EXTRA_STARTED_AT = "started_at";
    /** 进度明细：已处理张数|总张数|最慢阶段（拿不到时为空串）。 */
    public static final String EXTRA_DETAIL = "detail";

    /** 与 aicr RunningStatus.RUNNING_LEVEL_OVERLOAD 一致：设备重载，暂停建库。 */
    public static final int RUNNING_LEVEL_OVERLOAD = 5;
    /** 与 aicr RunningStatus.RUNNING_LEVEL_OVERLOAD_WAIT_RECOVER 一致：等待重载恢复。 */
    public static final int RUNNING_LEVEL_OVERLOAD_WAIT_RECOVER = 6;

    /** 与 SearchDataBaseProvider 的 Manifest authority 一致（exported=false，仅同进程/同 UID 可用）。 */
    public static final String PROVIDER_AUTHORITY = "provider.SearchDataBaseProvider";
    public static final String METHOD_START_UNLIMITED = "method_algo_analyse_UNLIMITED";
    public static final String METHOD_STOP = "method_algo_analyse_stop";
    public static final String EXTRA_SCOPE = "scope";
    public static final int SCOPE_GALLERY = 1;

    /** AI Search 的能力号；checkCTASwitch(5001) 返回 false 时不得启动。 */
    public static final int CTA_CAPABILITY = 5001;

    private AicrProtocol() {
    }
}
