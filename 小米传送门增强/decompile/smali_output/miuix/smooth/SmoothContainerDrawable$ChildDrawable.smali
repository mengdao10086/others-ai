.class Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "SmoothContainerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/SmoothContainerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;Lmiuix/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .registers 6

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iget-object p1, p1, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3a

    .line 367
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_f

    move-object p3, p1

    goto :goto_21

    :cond_f
    if-nez p3, :cond_16

    .line 371
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_21

    :cond_16
    if-nez p4, :cond_1d

    .line 373
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_21

    .line 376
    :cond_1d
    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 382
    :goto_21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 384
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 385
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 386
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_3b

    :cond_3a
    const/4 p3, 0x0

    .line 391
    :goto_3b
    iput-object p3, p0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
