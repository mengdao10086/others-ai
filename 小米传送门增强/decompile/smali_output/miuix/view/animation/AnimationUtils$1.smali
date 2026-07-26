.class Lmiuix/view/animation/AnimationUtils$1;
.super Ljava/lang/ThreadLocal;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/view/animation/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lmiuix/view/animation/AnimationUtils$AnimationNanoState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 16
    invoke-virtual {p0}, Lmiuix/view/animation/AnimationUtils$1;->initialValue()Lmiuix/view/animation/AnimationUtils$AnimationNanoState;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lmiuix/view/animation/AnimationUtils$AnimationNanoState;
    .registers 3

    .line 19
    new-instance v0, Lmiuix/view/animation/AnimationUtils$AnimationNanoState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/view/animation/AnimationUtils$AnimationNanoState;-><init>(Lmiuix/view/animation/AnimationUtils$1;)V

    return-object v0
.end method
