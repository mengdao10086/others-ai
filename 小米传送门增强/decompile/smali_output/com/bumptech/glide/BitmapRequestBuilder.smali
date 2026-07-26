.class public Lcom/bumptech/glide/BitmapRequestBuilder;
.super Lcom/bumptech/glide/GenericRequestBuilder;
.source "BitmapRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/GenericRequestBuilder<",
        "TModelType;",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider<",
            "TModelType;",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V

    .line 55
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    iput-object p1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->downsampler:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 63
    iget-object p1, p3, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 64
    iget-object p2, p3, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {p2}, Lcom/bumptech/glide/Glide;->getDecodeFormat()Lcom/bumptech/glide/load/DecodeFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    .line 66
    new-instance p3, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {p3, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object p3, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->imageDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 67
    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    iget-object p3, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object p2, p0, Lcom/bumptech/glide/BitmapRequestBuilder;->videoDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    return-void
.end method


# virtual methods
.method public clone()Lcom/bumptech/glide/BitmapRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 571
    invoke-super {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/BitmapRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->clone()Lcom/bumptech/glide/BitmapRequestBuilder;

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

    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/BitmapRequestBuilder;->clone()Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 174
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 516
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public override(II)Lcom/bumptech/glide/BitmapRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 525
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/BitmapRequestBuilder;->override(II)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 559
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/BitmapRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 507
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 307
    invoke-super {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/BitmapRequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method
