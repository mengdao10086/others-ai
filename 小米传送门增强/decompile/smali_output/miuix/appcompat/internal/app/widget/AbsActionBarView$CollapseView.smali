.class public Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CollapseView"
.end annotation


# instance fields
.field private mAlpha:F

.field private mDetached:Z

.field private mIsAcceptAlphaChange:Z

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    return-void
.end method


# virtual methods
.method public animTo(FIILmiuix/animation/base/AnimConfig;)V
    .registers 10

    .line 539
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    if-eqz v0, :cond_5

    return-void

    .line 542
    :cond_5
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    .line 543
    :goto_c
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "to"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    float-to-double v2, p1

    .line 544
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    int-to-double v2, p2

    .line 545
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v2, p3

    .line 546
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 548
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_2e

    .line 552
    :cond_41
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_5b

    .line 553
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    int-to-float v4, p2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5b

    .line 554
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    int-to-float v4, p3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2e

    .line 555
    :cond_5b
    filled-new-array {v2}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    filled-new-array {p4}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2e

    :cond_6f
    return-void
.end method

.method public attachViews(Landroid/view/View;)V
    .registers 3

    .line 455
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 458
    :cond_9
    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$1;-><init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 469
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public detachView(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 473
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 474
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    const/4 v0, 0x1

    .line 575
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    .line 576
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 577
    invoke-static {v1}, Lmiuix/animation/Folme;->clean(Landroid/view/View;)V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public onHide()V
    .registers 4

    .line 567
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 568
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    const/4 v2, 0x0

    .line 569
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    const/4 v2, 0x4

    .line 570
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public onShow()V
    .registers 4

    .line 561
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    .line 562
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6

    :cond_17
    return-void
.end method

.method public setAcceptAlphaChange(Z)V
    .registers 2

    .line 489
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    return-void
.end method

.method public setAlpha(F)V
    .registers 6

    .line 479
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    if-eqz v0, :cond_5

    return-void

    .line 482
    :cond_5
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    .line 483
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 484
    filled-new-array {v1}, [Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_d

    :cond_33
    return-void
.end method

.method public setAnimFrom(FII)V
    .registers 5

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FIIZ)V

    return-void
.end method

.method public setAnimFrom(FIIZ)V
    .registers 9

    .line 518
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mDetached:Z

    if-eqz v0, :cond_5

    return-void

    .line 521
    :cond_5
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "from"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 522
    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mIsAcceptAlphaChange:Z

    if-eqz v2, :cond_14

    float-to-double v2, p1

    goto :goto_17

    :cond_14
    iget v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mAlpha:F

    float-to-double v2, v2

    :goto_17
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    int-to-double v2, p2

    .line 523
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v2, p3

    .line 524
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz p4, :cond_48

    .line 527
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    int-to-float v3, p2

    .line 528
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v3, p3

    .line 529
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 531
    :cond_48
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_2f

    .line 534
    :cond_4f
    filled-new-array {v2}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_2f

    :cond_5f
    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 505
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 506
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    .line 508
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_6

    :cond_1b
    return-void
.end method
