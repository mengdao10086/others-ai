.class final Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SmoothContainerDrawable2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/SmoothContainerDrawable2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContainerState"
.end annotation


# instance fields
.field mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

.field mLayerType:I

.field mRadii:[F

.field mRadius:F

.field mStrokeColor:I

.field mStrokeWidth:I

.field mUseSmooth:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 513
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 509
    iput v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 514
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    return-void
.end method

.method public constructor <init>(Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .registers 7

    .line 518
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 509
    iput v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 519
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v1, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    invoke-direct {v0, v1, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;-><init>(Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;Lmiuix/smooth/SmoothContainerDrawable2;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 520
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadius:F

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadius:F

    .line 521
    iget-object p2, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadii:[F

    iput-object p2, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mRadii:[F

    .line 522
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeWidth:I

    .line 523
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mStrokeColor:I

    .line 524
    iget p2, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    iput p2, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mLayerType:I

    .line 525
    iget-boolean p1, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mUseSmooth:Z

    iput-boolean p1, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mUseSmooth:Z

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlpha()I
    .registers 2

    .line 622
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 594
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 553
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 2

    .line 606
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 569
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 565
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 581
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 626
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final isStateful()Z
    .registers 2

    .line 557
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    .line 577
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 531
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 537
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 543
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;Lmiuix/smooth/SmoothContainerDrawable2$1;)V

    return-object v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 573
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .registers 3

    .line 561
    invoke-virtual {p0}, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public setAlpha(I)V
    .registers 3

    .line 585
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 586
    iget-object p1, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object p1, p1, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    .line 602
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 598
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    .line 610
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 590
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    .line 614
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    .line 618
    iget-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    iget-object v0, v0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    return-void
.end method
