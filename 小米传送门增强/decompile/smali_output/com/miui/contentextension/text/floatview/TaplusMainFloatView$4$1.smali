.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4$1;
.super Ljava/lang/Object;
.source "TaplusMainFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;)V
    .registers 2

    .line 342
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fputmMoveRefresh(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;Z)V

    .line 346
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecommendAdapter(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->clearRecommendInfos()V

    .line 347
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->doRefreshImage(ZZ)V

    .line 348
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;

    iget-object v0, v0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$4;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->expandFloatView(Z)V

    return-void
.end method
