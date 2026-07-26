.class Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;
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
    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 0
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mIsRegister:Z
    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$000(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Z

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;
    invoke-static {v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    and-int/2addr p1, v0

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;
    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_50

    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->val$context:Landroid/content/Context;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->URI_VISIBLE:Landroid/net/Uri;
    invoke-static {}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$200()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInt(Landroid/content/Context;Landroid/net/Uri;I)I

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;
    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    invoke-interface {p1}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconShow()V

    goto :goto_50

    :cond_41
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    # getter for: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->mRefCallback:Ljava/lang/ref/SoftReference;
    invoke-static {p1}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$100(Lcom/xiaomi/mirror/synergy/RelayIconHelper;)Ljava/lang/ref/SoftReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/synergy/RelayIconCallback;

    invoke-interface {p1}, Lcom/xiaomi/mirror/synergy/RelayIconCallback;->onIconHide()V

    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->this$0:Lcom/xiaomi/mirror/synergy/RelayIconHelper;

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/RelayIconHelper$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/xiaomi/mirror/synergy/RelayIconHelper;->checkRemoteProcess(Landroid/content/Context;)V
    invoke-static {p1, v0}, Lcom/xiaomi/mirror/synergy/RelayIconHelper;->access$300(Lcom/xiaomi/mirror/synergy/RelayIconHelper;Landroid/content/Context;)V

    return-void
.end method
