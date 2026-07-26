.class Landroidx/recyclerview/widget/SpringRecyclerView$1;
.super Lmiuix/spring/view/SpringHelper;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field final synthetic this$0:Landroidx/recyclerview/widget/SpringRecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V
    .registers 2

    .line 306
    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-direct {p0}, Lmiuix/spring/view/SpringHelper;-><init>()V

    return-void
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    .line 356
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_11

    .line 357
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 359
    :cond_11
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    return-object v0
.end method


# virtual methods
.method protected canScrollHorizontally()Z
    .registers 2

    .line 311
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected canScrollVertically()Z
    .registers 2

    .line 316
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected dispatchNestedPreScroll(II[I[II)Z
    .registers 13

    .line 364
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    move-result v0

    if-nez v0, :cond_14

    .line 365
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # setter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    .line 368
    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    move-result v0

    if-nez v0, :cond_27

    .line 369
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # setter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    .line 372
    :cond_27
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$800(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;->super_dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method protected dispatchNestedScroll(IIII[II[I)V
    .registers 19

    move-object v0, p0

    move v9, p3

    move v10, p4

    .line 377
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$800(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;->super_dispatchNestedScroll(IIII[II[I)V

    .line 379
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->springAvailable()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$900(Landroidx/recyclerview/widget/SpringRecyclerView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_57

    .line 380
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_3e

    if-eqz v9, :cond_3e

    .line 381
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$1000(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->notifyHorizontalEdgeReached(I)V

    .line 383
    :cond_3e
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_57

    if-eqz v10, :cond_57

    .line 384
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;
    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$1000(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->notifyVerticalEdgeReached(I)V

    :cond_57
    return-void
.end method

.method protected getHeight()I
    .registers 2

    .line 321
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getWidth()I
    .registers 2

    .line 326
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method

.method public onSpringDistanceChanged(FF)V
    .registers 6

    .line 336
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # setter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringX:F
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$502(Landroidx/recyclerview/widget/SpringRecyclerView;F)F

    .line 337
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # setter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringY:F
    invoke-static {v0, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$602(Landroidx/recyclerview/widget/SpringRecyclerView;F)F

    const/4 v0, 0x0

    move v1, v0

    .line 338
    :goto_c
    iget-object v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringStateListeners:Ljava/util/List;
    invoke-static {v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$700(Landroidx/recyclerview/widget/SpringRecyclerView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 339
    iget-object v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # getter for: Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringStateListeners:Ljava/util/List;
    invoke-static {v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$700(Landroidx/recyclerview/widget/SpringRecyclerView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/spring/view/SpringStateListener;

    invoke-interface {v2, p1, p2}, Lmiuix/spring/view/SpringStateListener;->onSpringDistanceChanged(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2a
    return-void
.end method

.method protected springAvailable()Z
    .registers 2

    .line 331
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    # invokes: Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z
    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->access$200(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    return v0
.end method

.method protected vibrate()V
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 346
    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 347
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 348
    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedbackAsync(I)V

    goto :goto_21

    .line 351
    :cond_1a
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    :cond_21
    :goto_21
    return-void
.end method
