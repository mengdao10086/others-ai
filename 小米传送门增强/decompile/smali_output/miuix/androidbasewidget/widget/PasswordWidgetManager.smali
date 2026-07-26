.class public Lmiuix/androidbasewidget/widget/PasswordWidgetManager;
.super Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
.source "PasswordWidgetManager.java"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsChecked:Z

.field private mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

.field private mWidgetDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x10100a0

    .line 18
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    .line 32
    sget p2, Lmiuix/androidbasewidget/R$attr;->miuixAppcompatVisibilityIcon:I

    invoke-static {p1, p2}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2d

    const p2, 0x1010590

    const/4 v0, 0x1

    .line 34
    invoke-static {p1, p2, v0}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 38
    sget p2, Lmiuix/androidbasewidget/R$drawable;->miuix_appcompat_ic_visibility_selector_light:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2d

    .line 42
    :cond_25
    sget p2, Lmiuix/androidbasewidget/R$drawable;->miuix_appcompat_ic_visibility_selector_dark:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2d
    :goto_2d
    return-void
.end method


# virtual methods
.method public getWidgetDrawables()[Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 69
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0}, [Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onAttached(Lmiuix/androidbasewidget/widget/StateEditText;)V
    .registers 3

    .line 59
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    if-eqz p1, :cond_14

    .line 61
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    if-eqz v0, :cond_d

    .line 62
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    goto :goto_11

    .line 63
    :cond_d
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    .line 61
    :goto_11
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_14
    return-void
.end method

.method protected onDetached()V
    .registers 3

    .line 51
    invoke-super {p0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onDetached()V

    .line 52
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_b
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    const/4 p1, 0x1

    .line 89
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 90
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 91
    const-class p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/androidbasewidget/R$string;->miuix_show_password:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWidgetClick(I)V
    .registers 5

    .line 74
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    .line 75
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    if-eqz p1, :cond_31

    .line 76
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    .line 77
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 78
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    iget-boolean v2, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    if-eqz v2, :cond_1f

    .line 79
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    goto :goto_23

    .line 80
    :cond_1f
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    .line 78
    :goto_23
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 81
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextDirection(I)V

    .line 82
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 84
    :cond_31
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    if-eqz v0, :cond_3a

    sget-object v0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->CHECKED_STATE_SET:[I

    goto :goto_3d

    :cond_3a
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_3d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method
