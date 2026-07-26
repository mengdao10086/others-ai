.class Lcom/xiaomi/mirror/onehop/OneHopHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/onehop/OneHopHelper;->registerOneHopShareReceiver(Landroid/content/Context;Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

.field public final synthetic val$oneHopShareCallback:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/onehop/OneHopHelper;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    iput-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->val$oneHopShareCallback:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.onehop.action.MIRROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "_device_type"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "_bt_mac"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_ability_lyra"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelfIsSupportLyra: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    # getter for: Lcom/xiaomi/mirror/onehop/OneHopHelper;->mSelfIsSupportLyra:Z
    invoke-static {v4}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$200(Lcom/xiaomi/mirror/onehop/OneHopHelper;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", abilityLyra: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OneHopHelper"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    # getter for: Lcom/xiaomi/mirror/onehop/OneHopHelper;->mSelfIsSupportLyra:Z
    invoke-static {v2}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$200(Lcom/xiaomi/mirror/onehop/OneHopHelper;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_64

    if-nez p2, :cond_50

    goto :goto_64

    :cond_50
    iget-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    const-string v2, "com.miui.mishare.connectivity"

    const-string v3, "com.miui.mishare.connectivity.nfc"

    # invokes: Lcom/xiaomi/mirror/onehop/OneHopHelper;->checkAbilitySupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p2, p1, v2, v3}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$300(Lcom/xiaomi/mirror/onehop/OneHopHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_62

    const-string p1, "mishare version not support one hop share"

    :goto_5e
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_62
    move v3, v5

    goto :goto_73

    :cond_64
    :goto_64
    iget-object p2, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->this$0:Lcom/xiaomi/mirror/onehop/OneHopHelper;

    const-string v2, "com.xiaomi.mirror"

    const-string v6, "com.xiaomi.mirror.nfc"

    # invokes: Lcom/xiaomi/mirror/onehop/OneHopHelper;->checkAbilitySupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {p2, p1, v2, v6}, Lcom/xiaomi/mirror/onehop/OneHopHelper;->access$300(Lcom/xiaomi/mirror/onehop/OneHopHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_73

    const-string p1, "miui plus version not support one hop share"

    goto :goto_5e

    :cond_73
    :goto_73
    if-ltz v0, :cond_97

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_97

    iget-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->val$oneHopShareCallback:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_b3

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b3

    iget-object p1, p0, Lcom/xiaomi/mirror/onehop/OneHopHelper$1;->val$oneHopShareCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;

    invoke-interface {p1, v0, v1, v3}, Lcom/xiaomi/mirror/onehop/OneHopHelper$OneHopShareCallback;->onOneHopShare(ILjava/lang/String;I)Z

    move-result p1

    if-ne p1, v5, :cond_b3

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    goto :goto_b3

    :cond_97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OneHop receive, params is illegal: deviceType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " btMac:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    :goto_b3
    return-void
.end method
