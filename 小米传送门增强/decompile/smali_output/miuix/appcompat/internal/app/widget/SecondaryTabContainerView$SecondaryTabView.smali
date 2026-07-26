.class public Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;
.super Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;
.source "SecondaryTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecondaryTabView"
.end annotation


# instance fields
.field private final mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

.field private mBadgeDisappearOnClick:Z

.field private mBadgeNeeded:Z

.field private mTab:Landroidx/appcompat/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 288
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeNeeded:Z

    const/4 p2, 0x1

    .line 290
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeDisappearOnClick:Z

    .line 302
    new-instance p2, Lmiuix/appcompat/widget/BadgeDrawable;

    const/4 p3, 0x2

    invoke-direct {p2, p1, p3}, Lmiuix/appcompat/widget/BadgeDrawable;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    return-void
.end method

.method private attachBadge()V
    .registers 2

    .line 350
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    if-eqz v0, :cond_7

    .line 351
    invoke-virtual {v0, p0}, Lmiuix/appcompat/widget/BadgeDrawable;->attachBadgeDrawable(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method private detachBadge()V
    .registers 2

    .line 344
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadge:Lmiuix/appcompat/widget/BadgeDrawable;

    if-eqz v0, :cond_7

    .line 345
    invoke-virtual {v0}, Lmiuix/appcompat/widget/BadgeDrawable;->detachBadgeDrawable()V

    :cond_7
    return-void
.end method

.method private setBadgeDisappearOnClick(Z)V
    .registers 2

    .line 326
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeDisappearOnClick:Z

    return-void
.end method

.method private setBadgeNeeded(Z)V
    .registers 2

    .line 321
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeNeeded:Z

    .line 322
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->updateBadge()V

    return-void
.end method

.method private updateBadge()V
    .registers 2

    .line 336
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeNeeded:Z

    if-eqz v0, :cond_8

    .line 337
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->attachBadge()V

    goto :goto_b

    .line 339
    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->detachBadge()V

    :goto_b
    return-void
.end method

.method private updateIconView()V
    .registers 3

    .line 420
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 422
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public getTab()Landroidx/appcompat/app/ActionBar$Tab;
    .registers 2

    .line 415
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 428
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 429
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->updateIconView()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 331
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 332
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->updateBadge()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 434
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 435
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView$SecondaryTabView;->mBadgeNeeded:Z

    if-eqz v0, :cond_2f

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 438
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 439
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 441
    :cond_1f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$string;->miuix_appcompat_accessibility_new_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2f
    return-void
.end method
