.class Lcom/miui/contentextension/App$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkReceiver"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$8-EHx4-Sb8OqXThY1rs0ZWZqtTo(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/miui/contentextension/App$NetworkReceiver;->lambda$onReceive$0(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/App-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/App$NetworkReceiver;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 2

    .line 143
    invoke-static {p0}, Lcom/miui/contentextension/utils/DeviceUtils;->updateNetwork(Landroid/content/Context;)V

    if-eqz p1, :cond_8

    .line 145
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_25

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_25

    .line 140
    :cond_9
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 141
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 142
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object p2

    new-instance v1, Lcom/miui/contentextension/App$NetworkReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/miui/contentextension/App$NetworkReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {p2, v1}, Lcom/miui/contentextension/setting/TaplusWorker;->postToWorker(Ljava/lang/Runnable;)V

    :cond_25
    :goto_25
    return-void
.end method
