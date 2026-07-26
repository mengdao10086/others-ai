.class Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$2;
.super Ljava/lang/Object;
.source "TaplusRecognitionExpandedImageCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->initPopupWindowContent()Landroid/view/View;
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

    .line 304
    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 307
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-static {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->-$$Nest$mdismissPopup(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)V

    .line 308
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-static {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->-$$Nest$fgetmIsRemember(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 309
    const-string p1, "Taplus.RecognitionImageCard"

    const-string v0, "onClick: save normal mode"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/SuperImageUtils;->setImageSaveMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    :cond_1f
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-static {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->-$$Nest$fgetmBitmapWidth(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    invoke-static {v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;->-$$Nest$fgetmBitmapHeight(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/miui/contentextension/utils/SaveImageUtils;->saveNormalImage(Landroid/content/Context;II)V

    return-void
.end method
