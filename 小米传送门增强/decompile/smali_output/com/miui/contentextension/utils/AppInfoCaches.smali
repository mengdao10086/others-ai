.class public Lcom/miui/contentextension/utils/AppInfoCaches;
.super Ljava/lang/Object;
.source "AppInfoCaches.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;
    }
.end annotation


# instance fields
.field private mAppInfoCaches:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/miui/contentextension/utils/AppInfoCaches;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/utils/AppInfoCaches;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/miui/contentextension/utils/AppInfoCaches;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addBitmapToLruCaches(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 63
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/utils/AppInfoCaches;->getBitmapFromLruCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_b

    .line 65
    iget-object v0, p0, Lcom/miui/contentextension/utils/AppInfoCaches;->mAppInfoCaches:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public getBitmapByDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/miui/contentextension/utils/AppInfoCaches;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 102
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 103
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 104
    invoke-virtual {p1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method public getBitmapFromLruCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/miui/contentextension/utils/AppInfoCaches;->mAppInfoCaches:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public loadAppInfoByThread(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/miui/contentextension/utils/AppInfoCaches;->mAppInfoCaches:Landroidx/collection/LruCache;

    invoke-virtual {v0, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_11

    .line 52
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1d

    .line 54
    :cond_11
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;-><init>(Lcom/miui/contentextension/utils/AppInfoCaches;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->runInBackgroud(Ljava/lang/Runnable;)V

    :goto_1d
    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    .line 30
    div-int/lit8 v0, v0, 0x28

    .line 31
    new-instance v1, Lcom/miui/contentextension/utils/AppInfoCaches$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/contentextension/utils/AppInfoCaches$1;-><init>(Lcom/miui/contentextension/utils/AppInfoCaches;I)V

    iput-object v1, p0, Lcom/miui/contentextension/utils/AppInfoCaches;->mAppInfoCaches:Landroidx/collection/LruCache;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/miui/contentextension/utils/AppInfoCaches;->mAppInfoCaches:Landroidx/collection/LruCache;

    if-eqz v0, :cond_7

    .line 44
    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    :cond_7
    return-void
.end method
