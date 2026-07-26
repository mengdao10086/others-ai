.class Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "FilterSortView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    .line 578
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 579
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    # getter for: Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    # getter for: Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 580
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    # getter for: Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 582
    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 583
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3f

    const/4 p1, 0x0

    .line 584
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 585
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    goto :goto_56

    :cond_3f
    const/4 p1, 0x1

    .line 587
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 588
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/miuixbasewidget/R$string;->accessibility_tab_state_description_unselect:I

    .line 589
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_56
    return-void
.end method
