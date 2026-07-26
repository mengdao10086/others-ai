.class public Lcom/miui/contentextension/text/ContentCatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContentCatcherReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 25
    const-string v0, "receiver finish success"

    const-string v1, "receive intent success"

    const-string v2, "Taplus.ContentCatcherReceiver"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_c

    return-void

    .line 28
    :cond_c
    :try_start_c
    const-string v1, "content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lmiui/contentcatcher/sdk/ClientCatcherResult;

    if-eqz p2, :cond_2f

    .line 30
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.TEXT_CONTENT_EXTENSION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v3, "com.miui.contentextension"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v3, "ClientCatcherResult"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    invoke-static {p1, v1}, Lcom/miui/contentextension/utils/AdaptUtils$AdaptO;->startService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_2d
    .catchall {:try_start_c .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception p1

    goto :goto_3a

    :catch_2d
    move-exception p1

    goto :goto_33

    .line 38
    :cond_2f
    :goto_2f
    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 36
    :goto_33
    :try_start_33
    const-string p2, "onReceive error"

    invoke-static {v2, p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_2b

    goto :goto_2f

    :goto_39
    return-void

    .line 38
    :goto_3a
    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    throw p1
.end method
