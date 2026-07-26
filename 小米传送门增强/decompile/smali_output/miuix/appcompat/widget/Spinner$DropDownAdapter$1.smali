.class Lmiuix/appcompat/widget/Spinner$DropDownAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/Spinner$DropDownAdapter;->setAccessibilityDelegate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/Spinner$DropDownAdapter;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/Spinner$DropDownAdapter;)V
    .registers 2

    .line 959
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropDownAdapter$1;->this$0:Lmiuix/appcompat/widget/Spinner$DropDownAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    .line 962
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const v0, 0x1020014

    .line 963
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/CheckedTextView;

    .line 964
    const-class v0, Landroid/widget/Checkable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 965
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    if-eqz p1, :cond_35

    .line 967
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 968
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    .line 969
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 970
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    goto :goto_35

    .line 972
    :cond_32
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_35
    :goto_35
    return-void
.end method
