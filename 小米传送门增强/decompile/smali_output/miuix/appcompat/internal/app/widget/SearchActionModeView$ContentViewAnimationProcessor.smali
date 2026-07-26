.class Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContentViewAnimationProcessor"
.end annotation


# instance fields
.field private mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field private mAnimationAnchorView:Landroid/view/View;

.field private mAnimationAnimateView:Landroid/view/View;

.field private mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

.field private mAnimationResultView:Landroid/view/View;

.field private mContentViewTranslationYBeforeMode:I

.field private mContentViewTranslationYLength:I

.field private mIsActionBarNestedScrolledBeforeMode:Z

.field private mModeViewTranslationYBeforeMode:I

.field private mModeViewTranslationYLength:I

.field private mNestedCoordObTranslationYLength:I

.field private mTmpAnchorAccessibilityMode:I

.field private mTmpAnimAccessibilityMode:I

.field private mTmpResultAccessibilityMode:I

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V
    .registers 2

    .line 1041
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1042
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnchorAccessibilityMode:I

    .line 1043
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnimAccessibilityMode:I

    .line 1044
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpResultAccessibilityMode:I

    return-void
.end method

.method private updateAnimValues()V
    .registers 6

    .line 1215
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    if-eqz v0, :cond_a

    .line 1216
    invoke-interface {v0}, Lmiuix/core/view/NestedCoordinatorObserver;->getNestedScrollableValue()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    .line 1218
    :cond_a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v1, 0x1

    if-eqz v0, :cond_58

    .line 1219
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    .line 1220
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getCollapsedHeight()I

    move-result v2

    .line 1221
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandedHeight()I

    move-result v3

    .line 1222
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v4

    if-nez v4, :cond_29

    add-int/2addr v0, v2

    goto :goto_32

    .line 1224
    :cond_29
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v4

    if-ne v4, v1, :cond_32

    add-int/2addr v0, v3

    .line 1227
    :cond_32
    :goto_32
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    neg-int v0, v0

    .line 1228
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYLength:I

    .line 1229
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 1230
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mContentViewTranslationYLength:I

    .line 1231
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    if-eqz v0, :cond_7b

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mIsActionBarNestedScrolledBeforeMode:Z

    if-nez v0, :cond_7b

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1232
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    sub-int/2addr v3, v2

    neg-int v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    goto :goto_7b

    .line 1235
    :cond_58
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1236
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v0

    aget v0, v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    .line 1238
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    neg-int v0, v0

    .line 1239
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYLength:I

    .line 1240
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mContentViewTranslationYLength:I

    :cond_7b
    :goto_7b
    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .registers 5

    .line 1059
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarView()Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 1060
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1f

    :cond_1e
    move-object v0, v1

    :goto_1f
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    .line 1061
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_37

    :cond_36
    move-object v0, v1

    :goto_37
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnimateView:Landroid/view/View;

    .line 1062
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_4f

    :cond_4e
    move-object v0, v1

    :goto_4f
    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 1063
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnchorParentView:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 1064
    :cond_66
    instance-of v0, v1, Lmiuix/core/view/NestedCoordinatorObserver;

    if-eqz v0, :cond_6e

    .line 1065
    check-cast v1, Lmiuix/core/view/NestedCoordinatorObserver;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    .line 1067
    :cond_6e
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-ne v0, v1, :cond_96

    .line 1069
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1070
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1071
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mLocation:[I
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v1

    aget v1, v1, v2

    # setter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mParentLocationY:I
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1302(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    .line 1073
    :cond_96
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    if-eqz v0, :cond_9e

    const/4 v1, 0x0

    .line 1074
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_9e
    const/4 v0, 0x0

    if-eqz p1, :cond_b0

    .line 1076
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-eqz v1, :cond_b0

    .line 1078
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->getExpandState()I

    move-result v1

    if-nez v1, :cond_ad

    move v1, v2

    goto :goto_ae

    :cond_ad
    move v1, v0

    :goto_ae
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mIsActionBarNestedScrolledBeforeMode:Z

    .line 1080
    :cond_b0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    if-eqz v1, :cond_b7

    .line 1081
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->updateAnimValues()V

    :cond_b7
    if-eqz p1, :cond_112

    .line 1085
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz p1, :cond_c9

    .line 1086
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnchorAccessibilityMode:I

    .line 1087
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1090
    :cond_c9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnimateView:Landroid/view/View;

    if-eqz p1, :cond_d8

    .line 1091
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnimAccessibilityMode:I

    .line 1092
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnimateView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1095
    :cond_d8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    if-eqz p1, :cond_e7

    .line 1096
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpResultAccessibilityMode:I

    .line 1097
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1100
    :cond_e7
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1101
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    move-result p1

    if-nez p1, :cond_166

    .line 1102
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mContentViewTranslationYBeforeMode:I

    .line 1103
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 1104
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    goto :goto_166

    .line 1107
    :cond_112
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    move-result-object p1

    if-eqz p1, :cond_123

    .line 1108
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/view/SearchActionMode$AnimatedViewListener;->onInSearchMode(Z)V

    .line 1110
    :cond_123
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnchorView:Landroid/view/View;

    if-eqz p1, :cond_12c

    .line 1111
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnchorAccessibilityMode:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1113
    :cond_12c
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationAnimateView:Landroid/view/View;

    if-eqz p1, :cond_135

    .line 1114
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAnimAccessibilityMode:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1116
    :cond_135
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    if-eqz p1, :cond_13e

    .line 1117
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpResultAccessibilityMode:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1119
    :cond_13e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    move-result p1

    if-nez p1, :cond_166

    .line 1120
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    if-eqz p1, :cond_166

    .line 1121
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 1122
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    invoke-interface {p1, v0, v0}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    .line 1123
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1, v0, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    :cond_166
    :goto_166
    return-void
.end method

.method public onStop(Z)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_61

    .line 1167
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1168
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lmiuix/view/SearchActionMode$AnimatedViewListener;->onUpdateOffsetY(I)V

    .line 1170
    :cond_15
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 1171
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    if-eqz p1, :cond_24

    .line 1172
    invoke-interface {p1, v1, v1}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    .line 1174
    :cond_24
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 1175
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingTop:I
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mContentOriginPaddingBottom:I
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 1177
    :cond_38
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    if-eqz p1, :cond_e6

    .line 1178
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 1179
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 1180
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1181
    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingTop:I
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 1182
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1183
    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingBottom:I
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v3

    .line 1179
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_e6

    .line 1187
    :cond_61
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 1188
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    move-result-object p1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    invoke-interface {p1, v2}, Lmiuix/view/SearchActionMode$AnimatedViewListener;->onUpdateOffsetY(I)V

    .line 1189
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lmiuix/view/SearchActionMode$AnimatedViewListener;->onInSearchMode(Z)V

    .line 1191
    :cond_7e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    move-result p1

    if-nez p1, :cond_ae

    .line 1192
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 1193
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    if-eqz p1, :cond_a5

    .line 1194
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    invoke-interface {p1, v0, v1}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    .line 1195
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    goto :goto_ae

    .line 1197
    :cond_a5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 1200
    :cond_ae
    :goto_ae
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    if-eqz p1, :cond_e6

    .line 1201
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 1202
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 1203
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1204
    invoke-virtual {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingTop:I
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationResultView:Landroid/view/View;

    .line 1205
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1206
    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mResultViewOriginPaddingBottom:I
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v3

    .line 1202
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1210
    :cond_e6
    :goto_e6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYLength:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1211
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onUpdate(ZF)V
    .registers 7

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_6

    sub-float p2, v0, p2

    .line 1135
    :cond_6
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYLength:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    .line 1136
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1137
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mDimView:Landroid/view/View;
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1138
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mNestedCoordObTranslationYLength:I

    int-to-float v2, v1

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1139
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mOriginOverlayMode:Z
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Z

    move-result v2

    if-nez v2, :cond_b8

    const/4 v2, 0x0

    if-eqz p1, :cond_72

    .line 1141
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    if-eqz p1, :cond_5e

    sub-float/2addr v0, p2

    .line 1142
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mContentViewTranslationYBeforeMode:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    .line 1143
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 1144
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    invoke-interface {p1, v1, v2}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    goto :goto_b8

    .line 1146
    :cond_5e
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, p2

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v0, p2

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    goto :goto_b8

    .line 1149
    :cond_72
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    if-eqz p1, :cond_a5

    .line 1150
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result p1

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v3

    add-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr v0, p2

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mModeViewTranslationYBeforeMode:I

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    .line 1151
    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getViewHeight()I

    move-result v3

    sub-int/2addr p2, v3

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v3

    sub-int/2addr p2, v3

    int-to-float p2, p2

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 1152
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 1153
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mAnimationNestedCoordOb:Lmiuix/core/view/NestedCoordinatorObserver;

    invoke-interface {p1, v1, v2}, Lmiuix/core/view/NestedCoordinatorObserver;->updateCoordinatorHeightGapInfo(II)V

    goto :goto_b8

    .line 1155
    :cond_a5
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v0, p2

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mPendingInsetTop:I
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v0, p2

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(F)V

    .line 1159
    :cond_b8
    :goto_b8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    move-result-object p1

    if-eqz p1, :cond_c9

    .line 1160
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mAnimatedViewListener:Lmiuix/view/SearchActionMode$AnimatedViewListener;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/view/SearchActionMode$AnimatedViewListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lmiuix/view/SearchActionMode$AnimatedViewListener;->onUpdateOffsetY(I)V

    :cond_c9
    return-void
.end method
