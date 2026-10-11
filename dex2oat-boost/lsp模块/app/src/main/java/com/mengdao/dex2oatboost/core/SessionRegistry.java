package com.mengdao.dex2oatboost.core;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/**
 * 会话表：记录 {@code sessionId → 被装包名}（纯 Java，无 Android 依赖，可离线单测）。
 *
 * <p>① 在 {@code createSession} 前后登记；装完收到 {@code ACTION_PACKAGE_ADDED/REPLACED} 时，
 * 用它判断「这个包是不是我们本次降过档的」，避免去重编译无关的安装。
 * 容量有界（FIFO 淘汰），不会随安装次数无限增长。
 */
public final class SessionRegistry {

    /** 保留最近这么多次会话，够覆盖「安装中 → 装完」的窗口。 */
    public static final int MAX_SESSIONS = 64;

    /** pending（待完成判定）同样设上限，避免取消安装/漏收信号导致无界增长。 */
    public static final int MAX_PENDING = 64;

    /** 进程内单例；模块与广播接收器共用同一张表。 */
    public static final SessionRegistry INSTANCE = new SessionRegistry();

    private final LinkedHashMap<Integer, String> idToPkg = new LinkedHashMap<>();
    private final Set<String> pending = new LinkedHashSet<>();

    /** 记录一次会话。pkg 可能为空（会话创建时包名尚未写入），此时只记 id，不列入 pending。 */
    public synchronized void record(int sessionId, String pkg) {
        String value = pkg == null ? "" : pkg;
        idToPkg.put(sessionId, value);
        while (idToPkg.size() > MAX_SESSIONS) {
            Iterator<Integer> it = idToPkg.keySet().iterator();
            it.next();
            it.remove(); // 淘汰最早的一条
        }
        if (!value.isEmpty()) {
            pending.add(value);
            while (pending.size() > MAX_PENDING) {
                Iterator<String> it = pending.iterator();
                it.next();
                it.remove(); // 淘汰最早的一条，保持有界
            }
        }
    }

    public synchronized String pkgFor(int sessionId) {
        return idToPkg.get(sessionId);
    }

    /** 命中即消费（同一次安装不会重复触发）。 */
    public synchronized boolean shouldHandleAndConsume(String pkg) {
        return pkg != null && pending.remove(pkg);
    }

    public synchronized boolean isPending(String pkg) {
        return pkg != null && pending.contains(pkg);
    }

    public synchronized int size() {
        return idToPkg.size();
    }

    public synchronized int pendingSize() {
        return pending.size();
    }

    public synchronized Map<Integer, String> snapshot() {
        return new LinkedHashMap<>(idToPkg);
    }
}
