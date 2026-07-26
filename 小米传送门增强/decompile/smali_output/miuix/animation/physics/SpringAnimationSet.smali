.class public Lmiuix/animation/physics/SpringAnimationSet;
.super Ljava/lang/Object;
.source "SpringAnimationSet.java"


# instance fields
.field private mAnimationContainer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/physics/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 25
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 26
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/physics/SpringAnimation;

    if-eqz v1, :cond_e

    .line 28
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    goto :goto_e

    .line 31
    :cond_20
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_25
    return-void
.end method

.method public endAnimation()V
    .registers 3

    .line 36
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 37
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/physics/SpringAnimation;

    if-eqz v1, :cond_e

    .line 39
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->skipToEnd()V

    goto :goto_e

    .line 42
    :cond_20
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_25
    return-void
.end method

.method public play(Lmiuix/animation/physics/SpringAnimation;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 48
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public varargs playTogether([Lmiuix/animation/physics/SpringAnimation;)V
    .registers 6

    .line 53
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    if-eqz v2, :cond_d

    .line 55
    iget-object v3, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method public start()V
    .registers 3

    .line 15
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 16
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/physics/SpringAnimation;

    if-eqz v1, :cond_e

    .line 18
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    goto :goto_e

    :cond_20
    return-void
.end method
