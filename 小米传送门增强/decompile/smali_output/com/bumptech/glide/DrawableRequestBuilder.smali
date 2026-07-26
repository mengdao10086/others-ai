.class public Lcom/bumptech/glide/DrawableRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "DrawableRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder<",
        "TModelType;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider<",
            "TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .line 49
    const-class v4, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 51
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    return-void
.end method


# virtual methods
.method public clone()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 440
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableRequestBuilder;->clone()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 386
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 434
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public override(II)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 404
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 428
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 395
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/bumptech/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 229
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method
