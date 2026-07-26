.class Lmiuix/appcompat/widget/HyperPopupWindow$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;->doCollapseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

.field final synthetic val$clipEndBottom:I

.field final synthetic val$clipEndLeft:I

.field final synthetic val$clipEndRight:I

.field final synthetic val$clipEndTop:I

.field final synthetic val$clipStartBottom:I

.field final synthetic val$clipStartLeft:I

.field final synthetic val$clipStartRight:I

.field final synthetic val$clipStartTop:I

.field final synthetic val$endBottom:I

.field final synthetic val$endHeight:I

.field final synthetic val$endLeft:I

.field final synthetic val$endPaddingBottom:I

.field final synthetic val$endPaddingTop:I

.field final synthetic val$endRight:I

.field final synthetic val$endTop:I

.field final synthetic val$startBottom:I

.field final synthetic val$startHeight:I

.field final synthetic val$startLeft:I

.field final synthetic val$startPaddingBottom:I

.field final synthetic val$startPaddingTop:I

.field final synthetic val$startRight:I

.field final synthetic val$startTop:I

.field final synthetic val$view:Lmiuix/smooth/SmoothFrameLayout2;

.field final synthetic val$viewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;IIIIIIIIIIIIIIIIIIIIIILmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;Lmiuix/smooth/SmoothFrameLayout2;)V
    .registers 28

    move-object v0, p0

    move-object v1, p1

    .line 432
    iput-object v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    move v1, p2

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipStartLeft:I

    move v1, p3

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipEndLeft:I

    move v1, p4

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipStartTop:I

    move v1, p5

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipEndTop:I

    move v1, p6

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipStartRight:I

    move v1, p7

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipEndRight:I

    move v1, p8

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipStartBottom:I

    move v1, p9

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipEndBottom:I

    move v1, p10

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startLeft:I

    move v1, p11

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endLeft:I

    move v1, p12

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startTop:I

    move v1, p13

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endTop:I

    move/from16 v1, p14

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startRight:I

    move/from16 v1, p15

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endRight:I

    move/from16 v1, p16

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startBottom:I

    move/from16 v1, p17

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endBottom:I

    move/from16 v1, p18

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startPaddingTop:I

    move/from16 v1, p19

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endPaddingTop:I

    move/from16 v1, p20

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startPaddingBottom:I

    move/from16 v1, p21

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endPaddingBottom:I

    move/from16 v1, p22

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startHeight:I

    move/from16 v1, p23

    iput v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endHeight:I

    move-object/from16 v1, p24

    iput-object v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$viewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    move-object/from16 v1, p25

    iput-object v1, v0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$view:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .registers 3

    .line 471
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 472
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$view:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 473
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mInnerClip:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 474
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 463
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 464
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$view:Lmiuix/smooth/SmoothFrameLayout2;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 465
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mInnerClip:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 466
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 435
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 436
    const-string p1, "fraction"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 440
    :cond_c
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 441
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipStartLeft:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipEndLeft:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int p2, v0

    .line 442
    iget v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipStartTop:I

    int-to-float v1, v0

    iget v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipEndTop:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 443
    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipStartRight:I

    int-to-float v2, v1

    iget v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipEndRight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 444
    iget v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipStartBottom:I

    int-to-float v3, v2

    iget v4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$clipEndBottom:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    float-to-int v2, v3

    .line 445
    iget-object v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {v3}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object v3

    invoke-virtual {v3, p2, v0, v1, v2}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setClipBounds(IIII)V

    .line 446
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mClipView:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2300(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->refreshClipPath()V

    .line 447
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startLeft:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endLeft:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int v2, v0

    .line 448
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startTop:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endTop:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int v3, v0

    .line 449
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startRight:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endRight:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int v4, v0

    .line 450
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startBottom:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endBottom:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int v5, v0

    .line 451
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mInnerClip:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object p2

    invoke-virtual {p2, v2, v3, v4, v5}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setClipBounds(IIII)V

    .line 452
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mInnerClip:Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$2400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->refreshClipPath()V

    .line 455
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startPaddingTop:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endPaddingTop:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int v7, v0

    .line 456
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startPaddingBottom:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endPaddingBottom:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int v8, v0

    .line 457
    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$startHeight:I

    int-to-float v0, p2

    iget v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$endHeight:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int v6, v0

    .line 458
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$2;->val$viewBounds:Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    invoke-virtual/range {v1 .. v8}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->updateLeftTopRightBottom(IIIIIII)V

    return-void
.end method
