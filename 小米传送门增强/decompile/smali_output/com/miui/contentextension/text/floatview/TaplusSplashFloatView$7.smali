.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$7;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initRecognitionCard(Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

.field final synthetic val$recognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 653
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$7;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$7;->val$recognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 656
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$7;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$7;->val$recognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    invoke-static {p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mgetModuleType(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mtrackRecognitionCardClick(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Ljava/lang/String;)V

    .line 657
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$7;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V

    .line 658
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$7;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$7;->val$recognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/services/TextContentExtensionService;->showMainFloatView(Z)V

    return-void
.end method
