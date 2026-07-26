.class public Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
.super Ljava/lang/Object;
.source "DrawableCrossFadeViewAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final defaultAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final duration:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "TT;>;I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->defaultAnimation:Lcom/bumptech/glide/request/animation/GlideAnimation;

    .line 26
    iput p2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;->duration:I

    return-void
.end method
