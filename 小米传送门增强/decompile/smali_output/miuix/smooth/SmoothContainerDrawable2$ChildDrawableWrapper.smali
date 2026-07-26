.class Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;
.super Ljava/lang/Object;
.source "SmoothContainerDrawable2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/SmoothContainerDrawable2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawableWrapper"
.end annotation


# instance fields
.field mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method constructor <init>(Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;Lmiuix/smooth/SmoothContainerDrawable2;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .registers 6

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iget-object p1, p1, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3a

    .line 474
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_f

    move-object p3, p1

    goto :goto_21

    :cond_f
    if-nez p3, :cond_16

    .line 478
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_21

    :cond_16
    if-nez p4, :cond_1d

    .line 480
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_21

    .line 483
    :cond_1d
    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 489
    :goto_21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 491
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 492
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 493
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_3b

    :cond_3a
    const/4 p3, 0x0

    .line 498
    :goto_3b
    iput-object p3, p0, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
