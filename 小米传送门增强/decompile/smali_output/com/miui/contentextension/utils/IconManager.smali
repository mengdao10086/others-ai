.class public Lcom/miui/contentextension/utils/IconManager;
.super Ljava/lang/Object;
.source "IconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/utils/IconManager$IconReadyListener;
    }
.end annotation


# direct methods
.method public static getIcon(Landroid/content/Context;Ljava/lang/String;Lcom/miui/contentextension/utils/IconManager$IconReadyListener;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 43
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 46
    :cond_8
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v0

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/BitmapRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/BitmapRequestBuilder;

    move-result-object v0

    new-instance v2, Lcom/miui/contentextension/utils/IconManager$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/miui/contentextension/utils/IconManager$1;-><init>(Landroid/content/Context;Lcom/miui/contentextension/utils/IconManager$IconReadyListener;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-object v1
.end method

.method public static loadImageSync(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 81
    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object p0

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->into(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    return-object v1
.end method
