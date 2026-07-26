.class Lmiuix/animation/internal/AndroidEngine$EngineHandler;
.super Landroid/os/Handler;
.source "AndroidEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/internal/AndroidEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 37
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    goto :goto_17

    .line 42
    :cond_8
    invoke-static {}, Lmiuix/animation/internal/AndroidEngine;->getInst()Lmiuix/animation/internal/AndroidEngine;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/internal/FolmeEngine;->endAnim()V

    goto :goto_17

    .line 39
    :cond_10
    invoke-static {}, Lmiuix/animation/internal/AndroidEngine;->getInst()Lmiuix/animation/internal/AndroidEngine;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/internal/FolmeEngine;->startAnim()V

    :goto_17
    return-void
.end method
