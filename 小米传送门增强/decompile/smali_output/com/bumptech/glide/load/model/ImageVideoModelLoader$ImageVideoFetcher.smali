.class Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;
.super Ljava/lang/Object;
.source "ImageVideoModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/ImageVideoModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageVideoFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/data/DataFetcher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 60
    iput-object p2, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_7

    .line 120
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_e

    .line 123
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    :cond_e
    return-void
.end method

.method public cleanup()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_7

    .line 100
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_e

    .line 103
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    :cond_e
    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v0, :cond_9

    .line 111
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/load/model/ImageVideoWrapper;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->streamFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    const/4 v1, 0x2

    const-string v2, "IVML"

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    .line 70
    :try_start_8
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_22

    :catch_f
    move-exception v0

    .line 72
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 73
    const-string v4, "Exception fetching input stream, trying ParcelFileDescriptor"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_1b
    iget-object v4, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v4, :cond_20

    goto :goto_21

    .line 76
    :cond_20
    throw v0

    :cond_21
    :goto_21
    move-object v0, v3

    .line 81
    :goto_22
    iget-object v4, p0, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->fileDescriptorFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    if-eqz v4, :cond_3e

    .line 83
    :try_start_26
    invoke-interface {v4, p1}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_2e

    move-object v3, p1

    goto :goto_3e

    :catch_2e
    move-exception p1

    .line 85
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 86
    const-string v1, "Exception fetching ParcelFileDescriptor"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    if-eqz v0, :cond_3d

    goto :goto_3e

    .line 89
    :cond_3d
    throw p1

    .line 93
    :cond_3e
    :goto_3e
    new-instance p1, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-direct {p1, v0, v3}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    return-object p1
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/ImageVideoModelLoader$ImageVideoFetcher;->loadData(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    move-result-object p1

    return-object p1
.end method
