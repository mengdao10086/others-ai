.class Lmiuix/appcompat/app/AlertController$AlertParams$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController$AlertParams;->getDefaultAccessibilityDelegateCompat(Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;)Landroidx/core/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;)V
    .registers 2

    .line 3271
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$1;->val$type:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 7

    .line 3275
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 3276
    sget-object v0, Lmiuix/appcompat/app/AlertController$10;->$SwitchMap$miuix$appcompat$app$AlertController$AlertParams$ItemType:[I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams$1;->val$type:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_26

    const/4 p1, 0x3

    if-eq v0, p1, :cond_19

    goto :goto_4f

    .line 3294
    :cond_19
    const-class p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3295
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_4f

    .line 3281
    :cond_26
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 3282
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3283
    instance-of v0, p1, Lmiuix/androidbasewidget/widget/CheckedTextView;

    if-eqz v0, :cond_4f

    .line 3284
    check-cast p1, Lmiuix/androidbasewidget/widget/CheckedTextView;

    .line 3285
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    .line 3286
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    xor-int/lit8 v0, p1, 0x1

    .line 3287
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    if-eqz p1, :cond_4f

    .line 3289
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    goto :goto_4f

    .line 3278
    :cond_4c
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_4f
    :goto_4f
    return-void
.end method
