.class public Lcom/xiaomi/continuity/channel/SendResultCallbackTransport;
.super Lcom/xiaomi/continuity/channel/ISendResultCallback$Stub;
.source "SourceFile"


# instance fields
.field private final callback:Lcom/xiaomi/continuity/channel/SendResultCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$SFFLiauYffIAaP1_INp8kn1pZUs(Lcom/xiaomi/continuity/channel/SendResultCallbackTransport;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/continuity/channel/SendResultCallbackTransport;->lambda$onResult$0(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/continuity/channel/SendResultCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Lcom/xiaomi/continuity/channel/ISendResultCallback$Stub;-><init>()V

    const-string v0, "invalid null lListener"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/xiaomi/continuity/channel/SendResultCallbackTransport;->callback:Lcom/xiaomi/continuity/channel/SendResultCallback;

    iput-object p2, p0, Lcom/xiaomi/continuity/channel/SendResultCallbackTransport;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic lambda$onResult$0(ILjava/lang/String;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/SendResultCallbackTransport;->callback:Lcom/xiaomi/continuity/channel/SendResultCallback;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/continuity/channel/SendResultCallback;->onResult(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/SendResultCallbackTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/continuity/channel/SendResultCallbackTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/continuity/channel/SendResultCallbackTransport$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/continuity/channel/SendResultCallbackTransport;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
