.class public Lorg/ansj/util/AnsjReader;
.super Ljava/io/Reader;
.source "AnsjReader.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static closeFileSafely(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 222
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_a
    return-void
.end method
