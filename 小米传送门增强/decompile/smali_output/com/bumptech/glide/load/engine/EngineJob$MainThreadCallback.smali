.class Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V
    .registers 2

    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_b

    const/4 v2, 0x2

    if-ne v2, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    .line 200
    :cond_b
    :goto_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/engine/EngineJob;

    if-ne v1, v0, :cond_15

    .line 202
    # invokes: Lcom/bumptech/glide/load/engine/EngineJob;->handleResultOnMainThread()V
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/EngineJob;->access$100(Lcom/bumptech/glide/load/engine/EngineJob;)V

    goto :goto_18

    .line 204
    :cond_15
    # invokes: Lcom/bumptech/glide/load/engine/EngineJob;->handleExceptionOnMainThread()V
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/EngineJob;->access$200(Lcom/bumptech/glide/load/engine/EngineJob;)V

    :goto_18
    return v1
.end method
