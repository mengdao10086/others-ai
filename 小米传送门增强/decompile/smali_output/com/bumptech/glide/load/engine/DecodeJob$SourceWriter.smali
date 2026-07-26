.class Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SourceWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Encoder<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder<",
            "TDataType;>;TDataType;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lcom/bumptech/glide/load/Encoder;

    .line 261
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public write(Ljava/io/File;)Z
    .registers 5

    .line 266
    const-string v0, "DecodeJob"

    const/4 v1, 0x0

    .line 269
    :try_start_3
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    # getter for: Lcom/bumptech/glide/load/engine/DecodeJob;->fileOpener:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    invoke-static {v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;->open(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v1

    .line 270
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->encoder:Lcom/bumptech/glide/load/Encoder;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;->data:Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Lcom/bumptech/glide/load/Encoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_15} :catch_1d
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    if-eqz v1, :cond_30

    .line 278
    :try_start_17
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_30

    goto :goto_30

    :catchall_1b
    move-exception p1

    goto :goto_31

    :catch_1d
    move-exception p1

    const/4 v2, 0x3

    .line 272
    :try_start_1f
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 273
    const-string v2, "Failed to find file to write to disk cache"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_1b

    :cond_2a
    if-eqz v1, :cond_2f

    .line 278
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_2f

    :catch_2f
    :cond_2f
    const/4 p1, 0x0

    :catch_30
    :cond_30
    :goto_30
    return p1

    :goto_31
    if-eqz v1, :cond_36

    :try_start_33
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_36

    .line 281
    :catch_36
    :cond_36
    throw p1
.end method
