.class public Lcom/miui/contentextension/clipboard/ClipboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClipboardReceiver.java"


# static fields
.field private static mDescriptionTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private segmentClipboardContentIfNeed(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 134
    const-string p1, ""

    return-object p1

    .line 136
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_12

    return-object p1

    .line 139
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segmentClipboardContentIfNeed: clipboard content too long, the length is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Taplus.ClipboardReceiver"

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private startClipboardService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 145
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TEXT_CONTENT_EXTENSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    const-string v1, "com.miui.contentextension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "clipboard_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/AdaptUtils$AdaptO;->startService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_2c

    :catch_15
    move-exception p1

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startClipboardService exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Taplus.ClipboardReceiver"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-void
.end method

.method public static startSelf(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "taplus_clipboard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 156
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/contentextension/clipboard/ClipboardReceiver;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 46
    invoke-static {p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isClipboardSettingOpen(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "Taplus.ClipboardReceiver"

    if-nez p2, :cond_1d

    .line 47
    const-string p2, "taplus clipboard setting not open"

    invoke-static {v1, p2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isCtaOpen(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 49
    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCatcherClipboardEnable(Landroid/content/Context;Z)V

    .line 50
    const-string p1, "taplus clipboard setting not open and cta not agree"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_1d
    invoke-static {p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportClipboard(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_29

    .line 55
    const-string p1, "catcher not support clipboard"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_29
    sget-boolean p2, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz p2, :cond_3d

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p2

    invoke-static {p2}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 59
    const-string p1, "copy operation, but is flip device\uff0creturn false"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_3d
    const-string p2, "clipboard"

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    if-nez p2, :cond_48

    return-void

    .line 67
    :cond_48
    :try_start_48
    sget-boolean v2, Lcom/miui/contentextension/utils/LogUtils;->DEBUG:Z

    if-eqz v2, :cond_81

    .line 68
    const-class v2, Ljava/lang/String;

    const-string v3, "getPrimaryClipSource"

    const/4 v4, 0x0

    invoke-static {p2, v2, v3, v4, v4}, Lcom/miui/contentextension/utils/ReflectUtil;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get clip data source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6b} :catch_6c

    goto :goto_81

    :catch_6c
    move-exception v2

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get clip data source exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_81
    :goto_81
    :try_start_81
    invoke-virtual {p2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p2

    if-nez p2, :cond_90

    .line 78
    const-string p1, "get clip data is null, so return"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8c} :catch_8d

    return-void

    :catch_8d
    move-exception p1

    goto/16 :goto_1a5

    .line 86
    :cond_90
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 87
    sget-wide v3, Lcom/miui/contentextension/clipboard/ClipboardReceiver;->mDescriptionTimestamp:J

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_b3

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "clip data timestamp is same with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_b3
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clip date description:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "--label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10b

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mirror"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    const-string v4, "universalClipData"

    .line 94
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 95
    :cond_f1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "clip date from label "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", so taplus do not show UI"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_10b
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-nez v3, :cond_117

    .line 100
    const-string p1, "receive clip clipData, but clipData.getItemCount() is 0"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_11c
    if-ge v0, v3, :cond_15d

    .line 105
    invoke-virtual {p2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    if-eqz v5, :cond_15a

    .line 106
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15a

    .line 107
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clip date text:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v3, -0x1

    if-ne v0, v6, :cond_152

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15a

    .line 112
    :cond_152
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15a
    :goto_15a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11c

    .line 117
    :cond_15d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/contentextension/clipboard/ClipboardReceiver;->segmentClipboardContentIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19f

    .line 119
    invoke-static {p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isClipboardSettingOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 120
    invoke-static {p1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->isDouyinPrivacyEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 121
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getTimestamp()J

    move-result-wide v2

    sput-wide v2, Lcom/miui/contentextension/clipboard/ClipboardReceiver;->mDescriptionTimestamp:J

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remember clip data timestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/miui/contentextension/clipboard/ClipboardReceiver;->mDescriptionTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/miui/contentextension/clipboard/ClipboardReceiver;->startClipboardService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a4

    .line 125
    :cond_197
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->isShowPrivacyDialog(Landroid/content/Context;)Z

    goto :goto_1a4

    .line 128
    :cond_19f
    const-string p1, "receive clip clipData, but item.getText is empty"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a4
    return-void

    .line 82
    :goto_1a5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clipboardManager.getPrimaryClip exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
