.class public final Lcom/xiaomi/taiyi/sdk/core/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;


# instance fields
.field public final synthetic a:Lcom/xiaomi/taiyi/sdk/core/j;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lcom/xiaomi/taiyi/sdk/core/j;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/h;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/core/h;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailed(ILjava/lang/String;)V
    .registers 4

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/core/h;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/h;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 3
    iget-object p1, p1, Lcom/xiaomi/taiyi/sdk/core/j;->g:Ljava/util/concurrent/CountDownLatch;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onConnected()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/h;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 2
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/j;->g:Ljava/util/concurrent/CountDownLatch;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onConnecting()V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/taiyi/sdk/common/ConnectCallback$DefaultImpls;->onConnecting(Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;)V

    return-void
.end method

.method public final onDisconnected()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/h;->b:Lkotlin/jvm/internal/Ref$IntRef;

    const/16 v1, 0x2777

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/h;->a:Lcom/xiaomi/taiyi/sdk/core/j;

    .line 3
    iget-object v0, v0, Lcom/xiaomi/taiyi/sdk/core/j;->g:Ljava/util/concurrent/CountDownLatch;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
