.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;
.super Ljava/lang/Object;
.source "TaplusMainFloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->updateRecommendCards(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

.field final synthetic val$isTrack:Z


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 713
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iput-boolean p2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;->val$isTrack:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 717
    iget-boolean v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;->val$isTrack:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecognitionCard(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;->hasRefreshed()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 718
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecommendAdapter(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMoveRefresh(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->trackRecommendView(Z)V

    .line 719
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecommendAdapter(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$8;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {v1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMoveRefresh(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->uploadExposingItems(Z)V

    :cond_2e
    return-void
.end method
