package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.database.Cursor;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import de.robv.android.xposed.XposedHelpers;

/**
 * 仅诊断：首次 DIAG 采样时对 aicr 的 gallery 表做一次状态分布快照。
 *
 * 通过 ManagerDataBase → getOpenHelper().getReadableDatabase() 拿只读句柄，
 * 逐列执行 GROUP BY；失败只记一条后永久跳过。调用方保证在 DIAG 后台线程执行，
 * 且整个进程只跑一次。
 */
final class DbStateSnapshot {

    private static final String DB_CLASS =
            "com.xiaomi.aicr.aisearch.database.managerdb.ManagerDataBase";

    /** "GalleryAnalyze: DIAG " 占 21 字符，body 控制在 370 以内，整行不超 399。 */
    private static final int MAX_BODY_LENGTH = 370;

    private static final String[] STATE_COLUMNS = {
            "face_state", "ocr_state", "tag_state", "pet_state",
            "clip_state", "quality_state", "store_state"
    };

    private static boolean sDone;
    private static boolean sFailureLogged;

    private DbStateSnapshot() {
    }

    static void queryOnce(ClassLoader classLoader) {
        if (sDone) {
            return;
        }
        sDone = true;
        try {
            Object database = openDatabase(classLoader);
            for (String column : STATE_COLUMNS) {
                emitColumn(database, column);
            }
            emitTotal(database);
        } catch (Throwable t) {
            if (!sFailureLogged) {
                sFailureLogged = true;
                AicrProgressDiagnostics.logDiagLine("db query failed: " + describe(t));
            }
        }
    }

    private static Object openDatabase(ClassLoader classLoader) {
        Class<?> dbClass = XposedHelpers.findClassIfExists(DB_CLASS, classLoader);
        if (dbClass == null) {
            throw new IllegalStateException("ManagerDataBase not found");
        }
        Object database = XposedHelpers.callStaticMethod(dbClass, "getInstance");
        Object helper = XposedHelpers.callMethod(database, "getOpenHelper");
        return XposedHelpers.callMethod(helper, "getReadableDatabase");
    }

    private static void emitColumn(Object database, String column) throws Throwable {
        List<Entry> entries = new ArrayList<>();
        Cursor cursor = null;
        try {
            cursor = (Cursor) XposedHelpers.callMethod(database, "query",
                    "SELECT " + column + ", COUNT(*) FROM gallery GROUP BY " + column);
            while (cursor.moveToNext()) {
                entries.add(new Entry(cursor.getInt(0), cursor.getLong(1)));
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        Collections.sort(entries);
        AicrProgressDiagnostics.logDiagLine(buildLine("db " + column + ":", entries));
    }

    private static void emitTotal(Object database) throws Throwable {
        Cursor cursor = null;
        long total = -1;
        try {
            cursor = (Cursor) XposedHelpers.callMethod(database, "query",
                    "SELECT COUNT(*) FROM gallery");
            if (cursor.moveToFirst()) {
                total = cursor.getLong(0);
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        AicrProgressDiagnostics.logDiagLine("db total=" + total);
    }

    private static String buildLine(String prefix, List<Entry> entries) {
        if (entries.isEmpty()) {
            return prefix + " (none)";
        }
        StringBuilder body = new StringBuilder(prefix);
        for (Entry entry : entries) {
            body.append(body.length() == prefix.length() ? ' ' : ", ")
                    .append(entry.state).append('=').append(entry.count);
        }
        if (body.length() <= MAX_BODY_LENGTH) {
            return body.toString();
        }
        // 超长时按数量从大到小保留，剩余标 ...
        List<Entry> byCount = new ArrayList<>(entries);
        Collections.sort(byCount, (left, right) -> Long.compare(right.count, left.count));
        StringBuilder truncated = new StringBuilder(prefix);
        for (Entry entry : byCount) {
            String piece = (truncated.length() == prefix.length() ? " " : ", ")
                    + entry.state + '=' + entry.count;
            if (truncated.length() + piece.length() + 5 > MAX_BODY_LENGTH) {
                break;
            }
            truncated.append(piece);
        }
        truncated.append(truncated.length() == prefix.length() ? "..." : ", ...");
        return truncated.toString();
    }

    private static String describe(Throwable t) {
        Throwable root = t;
        int guard = 0;
        while (root.getCause() != null && root.getCause() != root && guard++ < 10) {
            root = root.getCause();
        }
        String message = root.getMessage();
        if (message == null) {
            message = "";
        }
        message = message.replace('\n', ' ').replace('\r', ' ').replace('\t', ' ');
        if (message.length() > 100) {
            message = message.substring(0, 100);
        }
        return root.getClass().getSimpleName() + (message.isEmpty() ? "" : ": " + message);
    }

    private static final class Entry implements Comparable<Entry> {
        final int state;
        final long count;

        Entry(int state, long count) {
            this.state = state;
            this.count = count;
        }

        @Override
        public int compareTo(Entry other) {
            return Integer.compare(state, other.state);
        }
    }
}
