.class public Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

.field private mTab:Landroidx/appcompat/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 615
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 616
    new-array p1, p1, [Landroid/view/View;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, v0}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, p2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 617
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->setAccessibilityDelegate()V

    return-void
.end method

.method private setAccessibilityDelegate()V
    .registers 2

    .line 745
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public getTab()Landroidx/appcompat/app/ActionBar$Tab;
    .registers 2

    .line 720
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .line 724
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 729
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 730
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_12

    .line 731
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mParent:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->getTabTextStyleId(Landroid/widget/TextView;)I

    move-result p1

    .line 733
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 739
    :cond_12
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1f

    .line 740
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->mTab:Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    return-void
.end method
