.class Lcom/miui/contentextension/utils/IconManager$1;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "IconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/IconManager;->getIcon(Landroid/content/Context;Ljava/lang/String;Lcom/miui/contentextension/utils/IconManager$IconReadyListener;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/BaseTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iconUrl:Ljava/lang/String;

.field final synthetic val$readyListener:Lcom/miui/contentextension/utils/IconManager$IconReadyListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/contentextension/utils/IconManager$IconReadyListener;Ljava/lang/String;)V
    .registers 4

    .line 46
    iput-object p1, p0, Lcom/miui/contentextension/utils/IconManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/contentextension/utils/IconManager$1;->val$readyListener:Lcom/miui/contentextension/utils/IconManager$IconReadyListener;

    iput-object p3, p0, Lcom/miui/contentextension/utils/IconManager$1;->val$iconUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 3

    const/16 v0, 0x64

    .line 55
    invoke-interface {p1, v0, v0}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 49
    iget-object p2, p0, Lcom/miui/contentextension/utils/IconManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 50
    iget-object p2, p0, Lcom/miui/contentextension/utils/IconManager$1;->val$readyListener:Lcom/miui/contentextension/utils/IconManager$IconReadyListener;

    iget-object v0, p0, Lcom/miui/contentextension/utils/IconManager$1;->val$iconUrl:Ljava/lang/String;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/miui/contentextension/utils/IconManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p2, v0, v1}, Lcom/miui/contentextension/utils/IconManager$IconReadyListener;->onIconReady(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .registers 3

    .line 46
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/utils/IconManager$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
