.class Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SpinnerCheckableArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->setAccessibilityDelegate(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;I)V
    .registers 3

    .line 85
    iput-object p1, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;->this$0:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    iput p2, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;->val$position:I

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    .line 88
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const v0, 0x1020016

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/CheckedTextView;

    const v1, 0x1020010

    .line 90
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/androidbasewidget/widget/CheckedTextView;

    const v2, 0x1020001

    .line 91
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 93
    const-class v2, Landroid/widget/RadioButton;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 94
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 95
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    const/4 v3, 0x0

    if-eqz p1, :cond_43

    .line 97
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 98
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 99
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 100
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    goto :goto_46

    .line 102
    :cond_43
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :goto_46
    const/4 p1, 0x0

    if-eqz v0, :cond_52

    .line 108
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_52
    move-object v0, p1

    :goto_53
    if-eqz v1, :cond_5d

    .line 111
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_5d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 114
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    :cond_80
    iget-object p1, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;->this$0:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    # getter for: Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {p1}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->access$100(Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    instance-of p1, p1, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    if-eqz p1, :cond_ab

    .line 118
    iget-object p1, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;->this$0:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    # getter for: Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {p1}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->access$100(Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    invoke-virtual {p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->isIconOnlyEnabled()Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 120
    iget-object p1, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;->this$0:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    # getter for: Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {p1}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->access$100(Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    :cond_ab
    iget-object p1, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;->this$0:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    # getter for: Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {p1}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->access$100(Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    instance-of p1, p1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$AccessibilityBehavior;

    if-eqz p1, :cond_d6

    .line 125
    iget-object p1, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;->this$0:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    # getter for: Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {p1}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->access$100(Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$AccessibilityBehavior;

    invoke-interface {p1}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$AccessibilityBehavior;->isExtraContentDescriptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 126
    iget-object p1, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;->this$0:Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    # getter for: Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->mContentAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {p1}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;->access$100(Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iget v0, p0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d6
    return-void
.end method
