.class Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/RelayIconHelper;->registerCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/RelayIconCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 0
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z
    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Z

    move-result p1

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;
    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;
    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->val$context:Landroid/content/Context;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_RELAY_RESULT:Landroid/net/Uri;
    invoke-static {}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$600()Landroid/net/Uri;

    move-result-object v1

    # invokes: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->getRelayResult(Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;
    invoke-static {p1, v0, v1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$700(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;Landroid/net/Uri;)Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->isRelaySuccess()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->getRelayType()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onRelayComplete(I)V

    goto :goto_5b

    :cond_44
    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$3;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->getRelayErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper$RelayResult;->getRelayErrMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onRelayError(ILjava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method
