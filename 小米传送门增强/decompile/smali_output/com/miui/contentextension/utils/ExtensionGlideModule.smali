.class public Lcom/miui/contentextension/utils/ExtensionGlideModule;
.super Ljava/lang/Object;
.source "ExtensionGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/module/GlideModule;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .registers 6

    .line 20
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    const/high16 v1, 0x1e00000

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setMemoryCache(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/GlideBuilder;

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "glide_cache"

    const/high16 v2, 0x3200000

    invoke-direct {v0, p1, v1, v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/GlideBuilder;->setDiskCache(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/GlideBuilder;

    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;)V
    .registers 3

    .line 0
    return-void
.end method
