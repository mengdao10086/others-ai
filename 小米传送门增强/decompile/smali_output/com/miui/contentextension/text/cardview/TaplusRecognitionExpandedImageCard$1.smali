.class Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$1;
.super Ljava/lang/Object;
.source "TaplusRecognitionExpandedImageCard.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->createPopupMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$1;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 5

    .line 258
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$1;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-static {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->-$$Nest$mdismissPopup(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)V

    .line 261
    :try_start_5
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$1;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 262
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_33

    .line 263
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$1;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    move-exception v0

    .line 266
    const-string v1, "Taplus.RecognitionImageCard"

    const-string v2, "onDismiss: "

    invoke-static {v1, v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_33
    return-void
.end method
