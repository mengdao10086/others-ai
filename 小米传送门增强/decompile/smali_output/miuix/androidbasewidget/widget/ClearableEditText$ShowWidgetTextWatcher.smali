.class Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;
.super Ljava/lang/Object;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/ClearableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShowWidgetTextWatcher"
.end annotation


# instance fields
.field mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/androidbasewidget/widget/ClearableEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmiuix/androidbasewidget/widget/ClearableEditText;)V
    .registers 3

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    .line 340
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$ShowWidgetTextWatcher;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/ClearableEditText;

    if-nez v0, :cond_b

    return-void

    .line 344
    :cond_b
    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v2, 0x1

    if-lez p1, :cond_18

    move p1, v2

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    if-eq v1, p1, :cond_33

    .line 345
    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    move-result p1

    xor-int/2addr p1, v2

    # setter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z
    invoke-static {v0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$002(Lmiuix/androidbasewidget/widget/ClearableEditText;Z)Z

    .line 346
    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    .line 347
    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$300(Lmiuix/androidbasewidget/widget/ClearableEditText;)Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 348
    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$300(Lmiuix/androidbasewidget/widget/ClearableEditText;)Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_33
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method
