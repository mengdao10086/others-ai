.class Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;
.super Ljava/lang/Object;
.source "AppInfoCaches.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/AppInfoCaches;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAppInfoRunnable"
.end annotation


# instance fields
.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/contentextension/utils/AppInfoCaches;


# direct methods
.method static bridge synthetic -$$Nest$fgetmImageView(Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->mImageView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/miui/contentextension/utils/AppInfoCaches;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    .line 73
    iput-object p1, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->this$0:Lcom/miui/contentextension/utils/AppInfoCaches;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->mImageView:Ljava/lang/ref/WeakReference;

    .line 75
    iput-object p3, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->this$0:Lcom/miui/contentextension/utils/AppInfoCaches;

    invoke-static {v0}, Lcom/miui/contentextension/utils/AppInfoCaches;->-$$Nest$fgetmContext(Lcom/miui/contentextension/utils/AppInfoCaches;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/Utilities;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/AppInfoCaches;->getBitmapByDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    .line 82
    :cond_17
    iget-object v1, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->this$0:Lcom/miui/contentextension/utils/AppInfoCaches;

    iget-object v2, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/contentextension/utils/AppInfoCaches;->addBitmapToLruCaches(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 83
    invoke-static {}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->getInstance()Lcom/miui/contentextension/utils/ExtensionThreadPool;

    move-result-object v1

    new-instance v2, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable$1;-><init>(Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/miui/contentextension/utils/ExtensionThreadPool;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
