.class Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultAnimationFactory"
.end annotation


# instance fields
.field private final duration:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;->duration:I

    return-void
.end method
