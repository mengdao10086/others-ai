.class public Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;
.super Ljava/lang/Exception;
.source "ErrorWrappingGlideException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Error;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_6

    return-void

    .line 10
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The causing error must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCause()Ljava/lang/Error;
    .registers 2

    .line 17
    invoke-super {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .registers 2

    .line 6
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;->getCause()Ljava/lang/Error;

    move-result-object v0

    return-object v0
.end method
