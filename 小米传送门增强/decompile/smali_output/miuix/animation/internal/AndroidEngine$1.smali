.class Lmiuix/animation/internal/AndroidEngine$1;
.super Ljava/lang/ThreadLocal;
.source "AndroidEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/internal/AndroidEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lmiuix/animation/internal/AndroidEngine;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0}, Lmiuix/animation/internal/AndroidEngine$1;->initialValue()Lmiuix/animation/internal/AndroidEngine;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lmiuix/animation/internal/AndroidEngine;
    .registers 5

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 62
    :cond_8
    invoke-static {}, Lmiuix/animation/Folme;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_1c

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lmiuix/animation/Folme;->getUiLooperByTid(J)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 63
    :cond_1c
    new-instance v1, Lmiuix/animation/internal/AndroidEngine;

    invoke-direct {v1}, Lmiuix/animation/internal/AndroidEngine;-><init>()V

    :cond_21
    return-object v1
.end method
