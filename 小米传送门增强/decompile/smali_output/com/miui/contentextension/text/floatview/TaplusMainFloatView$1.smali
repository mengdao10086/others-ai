.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "TaplusMainFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->shrinkFloatView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 5

    .line 165
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecognitionAttachments(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;

    move-result-object p1

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 166
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmShadow(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;

    move-result-object p1

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 10

    .line 171
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->setRecommendListVisibility(Z)V

    .line 172
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecommendList(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 173
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmIconDrag(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecognitionAttachments(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;

    move-result-object p1

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/high16 v5, 0x43480000    # 200.0f

    new-array v6, v2, [F

    aput v5, v6, v0

    const/4 v7, -0x1

    .line 175
    invoke-virtual {v4, v7, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-array v6, v0, [Lmiuix/animation/property/FloatProperty;

    invoke-interface {p1, v4, v6}, Lmiuix/animation/IStateStyle;->setConfig(Lmiuix/animation/base/AnimConfig;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;

    .line 176
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmShadow(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Landroid/view/View;

    move-result-object p1

    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v2, v2, [F

    aput v5, v2, v0

    .line 177
    invoke-virtual {v1, v7, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 178
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    .line 177
    invoke-interface {p1, v1, v0}, Lmiuix/animation/IStateStyle;->setConfig(Lmiuix/animation/base/AnimConfig;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;

    return-void
.end method
