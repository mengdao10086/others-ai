.class Lmiuix/appcompat/app/AlertController$LayoutChangeListener;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutChangeListener"
.end annotation


# instance fields
.field private final mCutoutInsets:Landroid/graphics/Rect;

.field private final mHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AlertController;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 3

    .line 3636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3634
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mCutoutInsets:Landroid/graphics/Rect;

    .line 3637
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    .line 3638
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private changeViewPadding(Landroid/view/View;II)V
    .registers 5

    const/4 v0, 0x0

    .line 3740
    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private handleImeChange(Landroid/view/View;Landroid/graphics/Rect;Lmiuix/appcompat/app/AlertController;)V
    .registers 6

    .line 3706
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    # invokes: Lmiuix/appcompat/app/AlertController;->getDialogPanelExtraBottomPadding()I
    invoke-static {p3}, Lmiuix/appcompat/app/AlertController;->access$3100(Lmiuix/appcompat/app/AlertController;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 3707
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    if-lez v0, :cond_33

    neg-int v0, v0

    .line 3713
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3714
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_2b

    const/16 p2, 0x1e

    if-lt v1, p2, :cond_27

    .line 3717
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 3718
    iget p2, p1, Landroid/graphics/Insets;->bottom:I

    goto :goto_2b

    .line 3720
    :cond_27
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p2

    :cond_2b
    :goto_2b
    add-int/2addr p2, v0

    .line 3731
    # getter for: Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;
    invoke-static {p3}, Lmiuix/appcompat/app/AlertController;->access$1900(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/widget/DialogAnimHelper;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->cancelAnimator()V

    .line 3736
    :cond_33
    # invokes: Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V
    invoke-static {p3, p2}, Lmiuix/appcompat/app/AlertController;->access$2500(Lmiuix/appcompat/app/AlertController;I)V

    return-void
.end method

.method private handleMultiWindowLandscapeChange(Lmiuix/appcompat/app/AlertController;I)V
    .registers 8

    .line 3744
    # getter for: Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$3200(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 3748
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x24

    const/4 v3, 0x1

    if-lt v0, v2, :cond_14

    move v0, v3

    goto :goto_15

    :cond_14
    move v0, v1

    .line 3749
    :goto_15
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mCutoutInsets:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_1f

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_22

    :cond_1f
    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    move v3, v1

    .line 3751
    :goto_23
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_47

    if-nez v3, :cond_47

    .line 3752
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int v0, p2, v0

    .line 3754
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v2, p2, :cond_3f

    .line 3756
    # getter for: Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_62

    .line 3759
    :cond_3f
    # getter for: Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_62

    .line 3762
    :cond_47
    # getter for: Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    move-result-object p1

    invoke-direct {p0, p1, v1, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_62

    .line 3765
    :cond_4f
    # getter for: Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    move-result-object p1

    .line 3766
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    if-gtz p2, :cond_5f

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    if-lez p2, :cond_62

    .line 3768
    :cond_5f
    invoke-direct {p0, p1, v1, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    :cond_62
    :goto_62
    return-void
.end method

.method private updateCutoutInsets(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 3678
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    if-nez p1, :cond_c

    return-void

    .line 3684
    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1a

    .line 3685
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    :cond_1a
    if-eqz v0, :cond_30

    const/16 p1, 0x1d

    if-lt v1, p1, :cond_30

    .line 3688
    iget p1, v0, Landroid/graphics/Insets;->left:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 3689
    iget p1, v0, Landroid/graphics/Insets;->top:I

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 3690
    iget p1, v0, Landroid/graphics/Insets;->right:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 3691
    iget p1, v0, Landroid/graphics/Insets;->bottom:I

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_30
    return-void
.end method


# virtual methods
.method public hasNavigationBarHeightInMultiWindowMode()Z
    .registers 5

    .line 3780
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$3200(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$3300(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 3781
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    if-nez v1, :cond_4d

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$3300(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_4d

    .line 3783
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$3200(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lmiuix/core/util/EnvStateManager;->getStatusBarHeight(Landroid/content/Context;Z)I

    move-result v1

    if-le v0, v1, :cond_4c

    goto :goto_4d

    :cond_4c
    move v2, v3

    :cond_4d
    :goto_4d
    return v2
.end method

.method public isInMultiScreenTop()Z
    .registers 5

    .line 3799
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AlertController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    .line 3801
    # getter for: Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$3200(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object v2

    # getter for: Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$3300(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    move-result-object v3

    invoke-static {v2, v3}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 3802
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_3c

    iget v2, v2, Landroid/graphics/Rect;->right:I

    # getter for: Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$3300(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_3c

    .line 3805
    # getter for: Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$3300(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 3806
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_3c

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v0, :cond_3c

    const/4 v1, 0x1

    :cond_3c
    return v1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 3644
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/AlertController;

    if-eqz p2, :cond_40

    .line 3647
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3648
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mCutoutInsets:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p3}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->updateCutoutInsets(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3649
    invoke-direct {p0, p2, p4}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->handleMultiWindowLandscapeChange(Lmiuix/appcompat/app/AlertController;I)V

    .line 3650
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1e

    if-ge p3, p4, :cond_40

    .line 3651
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2f

    .line 3654
    # invokes: Lmiuix/appcompat/app/AlertController;->isFreeFormMode()Z
    invoke-static {p2}, Lmiuix/appcompat/app/AlertController;->access$3000(Lmiuix/appcompat/app/AlertController;)Z

    move-result p3

    if-nez p3, :cond_40

    .line 3655
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p3, p2}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->handleImeChange(Landroid/view/View;Landroid/graphics/Rect;Lmiuix/appcompat/app/AlertController;)V

    goto :goto_40

    .line 3658
    :cond_2f
    # getter for: Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    invoke-static {p2}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    const/4 p3, 0x0

    cmpg-float p1, p1, p3

    if-gez p1, :cond_40

    const/4 p1, 0x0

    .line 3659
    # invokes: Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V
    invoke-static {p2, p1}, Lmiuix/appcompat/app/AlertController;->access$2500(Lmiuix/appcompat/app/AlertController;I)V

    :cond_40
    :goto_40
    return-void
.end method

.method public updateLayout(Landroid/view/View;)V
    .registers 4

    .line 3667
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AlertController;

    if-eqz v0, :cond_1b

    .line 3669
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3670
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mCutoutInsets:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->updateCutoutInsets(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3671
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->handleMultiWindowLandscapeChange(Lmiuix/appcompat/app/AlertController;I)V

    :cond_1b
    return-void
.end method
