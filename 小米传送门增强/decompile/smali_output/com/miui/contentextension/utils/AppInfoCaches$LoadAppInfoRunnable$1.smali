.class Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable$1;
.super Ljava/lang/Object;
.source "AppInfoCaches.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;

.field final synthetic val$icon:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable$1;->this$1:Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;

    iput-object p2, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable$1;->val$icon:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable$1;->this$1:Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;

    invoke-static {v0}, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->-$$Nest$fgetmImageView(Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 87
    iget-object v0, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable$1;->this$1:Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;

    invoke-static {v0}, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->-$$Nest$fgetmImageView(Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable$1;->this$1:Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;

    invoke-static {v1}, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->-$$Nest$fgetmPackageName(Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 89
    iget-object v0, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable$1;->this$1:Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;

    invoke-static {v0}, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;->-$$Nest$fgetmImageView(Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/contentextension/utils/AppInfoCaches$LoadAppInfoRunnable$1;->val$icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3b
    return-void
.end method
