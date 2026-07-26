.class Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "FilterSortView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;)V
    .registers 2

    .line 440
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    .line 443
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    const v0, 0x1020014

    .line 445
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_26

    .line 446
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 447
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 449
    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x0

    .line 450
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 451
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    goto :goto_4d

    :cond_36
    const/4 p1, 0x1

    .line 453
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 454
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView2$TabView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/miuixbasewidget/R$string;->accessibility_tab_state_description_unselect:I

    .line 455
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_4d
    return-void
.end method
