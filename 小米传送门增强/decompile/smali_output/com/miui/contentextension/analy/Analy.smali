.class public Lcom/miui/contentextension/analy/Analy;
.super Ljava/lang/Object;
.source "Analy.java"


# static fields
.field private static sActivity:Ljava/lang/String;

.field private static sCatchType:Ljava/lang/String;

.field private static sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

.field private static sPackageName:Ljava/lang/String;

.field private static sSessionId:Ljava/lang/String;

.field private static sStartTime:J

.field private static sTriggerType:Ljava/lang/String;


# direct methods
.method private static clearCommonProperty()V
    .registers 3

    .line 165
    sget-object v0, Lcom/miui/contentextension/analy/Analy;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/OneTrack;->clearCommonProperty()V

    const/4 v0, 0x0

    .line 166
    sput-object v0, Lcom/miui/contentextension/analy/Analy;->sSessionId:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 167
    sput-wide v1, Lcom/miui/contentextension/analy/Analy;->sStartTime:J

    .line 168
    sput-object v0, Lcom/miui/contentextension/analy/Analy;->sCatchType:Ljava/lang/String;

    .line 169
    sput-object v0, Lcom/miui/contentextension/analy/Analy;->sPackageName:Ljava/lang/String;

    .line 170
    sput-object v0, Lcom/miui/contentextension/analy/Analy;->sActivity:Ljava/lang/String;

    return-void
.end method

.method public static getSessionId()Ljava/lang/String;
    .registers 1

    .line 59
    sget-object v0, Lcom/miui/contentextension/analy/Analy;->sSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getStartTime()J
    .registers 2

    .line 79
    sget-wide v0, Lcom/miui/contentextension/analy/Analy;->sStartTime:J

    return-wide v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 36
    sget-object v0, Lcom/miui/contentextension/analy/Analy;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    if-eqz v0, :cond_5

    return-void

    .line 39
    :cond_5
    new-instance v0, Lcom/xiaomi/onetrack/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;-><init>()V

    const-string v1, "31000000006"

    .line 40
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setAppId(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const-string v1, "xiaomi"

    .line 41
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 42
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setMode(Lcom/xiaomi/onetrack/OneTrack$Mode;)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/Configuration$Builder;->setExceptionCatcherEnable(Z)Lcom/xiaomi/onetrack/Configuration$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration$Builder;->build()Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/OneTrack;->createInstance(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)Lcom/xiaomi/onetrack/OneTrack;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/analy/Analy;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    .line 46
    sget-boolean v0, Lcom/miui/contentextension/utils/LogUtils;->DEBUG:Z

    invoke-static {v0}, Lcom/xiaomi/onetrack/OneTrack;->setDebugMode(Z)V

    .line 47
    invoke-static {p0, v1}, Lcom/miui/contentextension/analy/Analy;->setAccessNetworkEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setAccessNetworkEnable(Landroid/content/Context;Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 51
    invoke-static {p0}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isTaplusCtaEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->setAccessNetworkEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method private static setCommonProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 145
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/miui/contentextension/utils/DeviceUtils;->createSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/contentextension/analy/Analy;->sSessionId:Ljava/lang/String;

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/miui/contentextension/analy/Analy;->sStartTime:J

    .line 148
    sput-object p0, Lcom/miui/contentextension/analy/Analy;->sCatchType:Ljava/lang/String;

    .line 149
    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCurrentInDoubleMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 150
    const-string p0, "couple"

    goto :goto_1d

    .line 151
    :cond_1b
    const-string p0, "single"

    :goto_1d
    sput-object p0, Lcom/miui/contentextension/analy/Analy;->sTriggerType:Ljava/lang/String;

    .line 152
    sput-object p1, Lcom/miui/contentextension/analy/Analy;->sPackageName:Ljava/lang/String;

    .line 153
    sput-object p2, Lcom/miui/contentextension/analy/Analy;->sActivity:Ljava/lang/String;

    .line 155
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 156
    const-string p1, "sessionid"

    sget-object p2, Lcom/miui/contentextension/analy/Analy;->sSessionId:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string p1, "selected_type"

    sget-object p2, Lcom/miui/contentextension/analy/Analy;->sCatchType:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string p1, "package"

    sget-object p2, Lcom/miui/contentextension/analy/Analy;->sPackageName:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string p1, "activity_page"

    sget-object p2, Lcom/miui/contentextension/analy/Analy;->sActivity:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string p1, "trigger_type"

    sget-object p2, Lcom/miui/contentextension/analy/Analy;->sTriggerType:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object p1, Lcom/miui/contentextension/analy/Analy;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {p1, p0}, Lcom/xiaomi/onetrack/OneTrack;->setCommonProperty(Ljava/util/Map;)V

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/miui/contentextension/analy/Analy;->sOneTrack:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/onetrack/OneTrack;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackApiReceiveErrorEvent(Ljava/lang/String;ZIJ)V
    .registers 7

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    const-string v1, "link"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string p0, "status"

    const-string v1, "error"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1c

    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "error_code"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_1c
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "stime"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string p0, "tip"

    const-string p1, "66.0.0.0.1064"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string p0, "G_RECEIVE"

    invoke-static {p0, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackApiReceiveSuccessEvent(Ljava/lang/String;J)V
    .registers 5

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    const-string v1, "link"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string p0, "status"

    const-string v1, "success"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "stime"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string p0, "tip"

    const-string p1, "66.0.0.0.1064"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string p0, "G_RECEIVE"

    invoke-static {p0, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackApiSendEvent(Ljava/lang/String;)V
    .registers 3

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    const-string v1, "link"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string p0, "tip"

    const-string v1, "66.0.0.0.1063"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string p0, "G_SEND"

    invoke-static {p0, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackQuitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V
    .registers 18

    move-object v0, p0

    .line 104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v2, "save_image"

    if-eqz v0, :cond_20

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 107
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 108
    aget-object v3, v0, v3

    const/4 v4, 0x1

    .line 109
    aget-object v0, v0, v4

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    .line 111
    :goto_21
    const-string v4, "quit_type"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 113
    const-string v4, "save_type"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 116
    const-string v3, "module_type"

    move-object v4, p1

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_3d
    const-string v3, "page_type"

    move-object v4, p2

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    move v4, p3

    if-ne v4, v3, :cond_4d

    .line 119
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 120
    :cond_4d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "selected_number"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v3, "selected_words"

    move-object v4, p4

    invoke-interface {v1, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_5c
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 124
    const-string v3, "quit_way"

    move-object v4, p6

    invoke-interface {v1, v3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_68
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 127
    const-string v3, "quit_stage"

    move-object v4, p7

    invoke-interface {v1, v3, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_74
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_81

    .line 130
    const-string v3, "screen_type"

    move-object/from16 v4, p11

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_81
    const-wide/16 v3, -0x1

    cmp-long v3, p8, v3

    if-eqz v3, :cond_90

    .line 133
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "rtime"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_90
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "removesend"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v3, "tip"

    move-object v4, p5

    invoke-interface {v1, v3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v3, "G_QUIT"

    invoke-static {v3, v1}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 140
    invoke-static {}, Lcom/miui/contentextension/analy/Analy;->clearCommonProperty()V

    :cond_ad
    return-void
.end method

.method public static trackStartEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 83
    invoke-static {p0, p1, p2}, Lcom/miui/contentextension/analy/Analy;->setCommonProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 86
    const-string p1, "tip"

    const-string p2, "66.0.0.0.1060"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string p1, "G_START"

    invoke-static {p1, p0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackStartFailedEvent(Ljava/lang/String;)V
    .registers 3

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    const-string v1, "reason"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string p0, "tip"

    const-string v1, "66.0.0.0.1062"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string p0, "G_START_FAIL"

    invoke-static {p0, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    invoke-static {}, Lcom/miui/contentextension/analy/Analy;->clearCommonProperty()V

    return-void
.end method

.method public static trackToastExpose(IILjava/lang/String;JI)V
    .registers 9

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    const-string v1, "module_type"

    const-string v2, "toast"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "image_length"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "image_width"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string p0, "toast_type"

    const-string p1, "save_image"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string p0, "save_type"

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "stime"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/SuperImageUtils;->getImageSaveMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 211
    const-string p1, "0"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 212
    const-string p0, "original"

    goto :goto_5d

    .line 213
    :cond_46
    const-string p1, "1"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 214
    const-string p0, "image_SR"

    goto :goto_5d

    .line 215
    :cond_51
    const-string p1, "2"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5c

    .line 216
    const-string p0, "none"

    goto :goto_5d

    :cond_5c
    const/4 p0, 0x0

    .line 218
    :goto_5d
    const-string p1, "default_options"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x7d0

    if-ne p5, p0, :cond_69

    .line 221
    const-string p0, "success"

    goto :goto_6b

    .line 223
    :cond_69
    const-string p0, "failed"

    .line 225
    :goto_6b
    const-string p1, "status"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "error_code"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string p0, "tip"

    const-string p1, "66.12.1.1.7799"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string p0, "G_EXPOSE"

    invoke-static {p0, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    invoke-static {}, Lcom/miui/contentextension/analy/Analy;->clearCommonProperty()V

    return-void
.end method

.method public static trackViewChangeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 9

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    const-string v1, "page_type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_15

    .line 239
    const-string p2, "module_type"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const/4 p1, -0x1

    if-ne p3, p1, :cond_1e

    .line 241
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 242
    :cond_1e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "selected_number"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string p1, "selected_words"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_2c
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "cards_number"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string p1, "tip"

    invoke-interface {v0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {p0, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
