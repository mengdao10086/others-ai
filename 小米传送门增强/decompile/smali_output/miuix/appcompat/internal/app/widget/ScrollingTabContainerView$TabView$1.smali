.class Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;->setAccessibilityDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;)V
    .registers 2

    .line 745
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    .line 748
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 749
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 750
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    .line 751
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 752
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    goto :goto_31

    :cond_1a
    const/4 p1, 0x1

    .line 754
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 755
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/miuixbasewidget/R$string;->accessibility_tab_state_description_unselect:I

    .line 756
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 755
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_31
    return-void
.end method
