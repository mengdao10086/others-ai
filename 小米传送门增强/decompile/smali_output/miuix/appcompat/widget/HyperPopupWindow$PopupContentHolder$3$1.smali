.class Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

.field final synthetic val$endHeight:I

.field final synthetic val$endPaddingBottom:I

.field final synthetic val$endPaddingTop:I

.field final synthetic val$startHeight:I

.field final synthetic val$startPaddingBottom:I

.field final synthetic val$startPaddingTop:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;IIIIII)V
    .registers 8

    .line 727
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iput p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$startPaddingTop:I

    iput p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$endPaddingTop:I

    iput p4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$startPaddingBottom:I

    iput p5, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$endPaddingBottom:I

    iput p6, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$startHeight:I

    iput p7, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$endHeight:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .registers 3

    .line 766
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 767
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    const/4 v0, 0x0

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2202(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z

    .line 768
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 769
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2202(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z

    :cond_2a
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 757
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 758
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    const/4 v0, 0x0

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2202(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z

    .line 759
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 760
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mIsInAnimation:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2202(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;Z)Z

    :cond_2a
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 730
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 731
    const-string p1, "fraction"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 735
    :cond_c
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 736
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget v0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartLeft:I

    int-to-float v1, v0

    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndLeft:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 737
    iget v1, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartTop:I

    int-to-float v2, v1

    iget v3, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndTop:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 738
    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartRight:I

    int-to-float v3, v2

    iget v4, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndRight:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 739
    iget v3, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipStartBottom:I

    int-to-float v4, v3

    iget v5, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$clipEndBottom:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, p1

    add-float/2addr v4, v3

    float-to-int v3, v4

    .line 740
    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object p2

    invoke-virtual {p2, v0, v1, v2, v3}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setClipBounds(IIII)V

    .line 741
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->refreshClipPath()V

    .line 742
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget v0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startLeft:I

    int-to-float v1, v0

    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endLeft:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v3, v1

    .line 743
    iget v0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startTop:I

    int-to-float v1, v0

    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endTop:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v4, v1

    .line 744
    iget v0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startRight:I

    int-to-float v1, v0

    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endRight:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v5, v1

    .line 745
    iget v0, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$startBottom:I

    int-to-float v1, v0

    iget v2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->val$endBottom:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v6, v1

    .line 746
    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mInnerClip:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object p2

    invoke-virtual {p2, v3, v4, v5, v6}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setClipBounds(IIII)V

    .line 747
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    iget-object p2, p2, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mInnerClip:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->refreshClipPath()V

    .line 749
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$startPaddingTop:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$endPaddingTop:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int v8, v0

    .line 750
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$startPaddingBottom:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$endPaddingBottom:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int v9, v0

    .line 751
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$startHeight:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->val$endHeight:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int v7, v0

    .line 752
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3$1;->this$2:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;

    iget-object p1, p1, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$3;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mViewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$1300(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-result-object v2

    invoke-virtual/range {v2 .. v9}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->updateLeftTopRightBottom(IIIIIII)V

    return-void
.end method
