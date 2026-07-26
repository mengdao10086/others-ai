.class Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;
.super Ljava/lang/Object;
.source "EditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/androidbasewidget/widget/EditText;


# direct methods
.method private constructor <init>(Lmiuix/androidbasewidget/widget/EditText;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/androidbasewidget/widget/EditText;Lmiuix/androidbasewidget/widget/EditText$1;)V
    .registers 3

    .line 161
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;-><init>(Lmiuix/androidbasewidget/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 175
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/androidbasewidget/widget/EditText;->setMiuiStyleError(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    # getter for: Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z
    invoke-static {p1}, Lmiuix/androidbasewidget/widget/EditText;->access$100(Lmiuix/androidbasewidget/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 177
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    const/4 v0, 0x0

    # setter for: Lmiuix/androidbasewidget/widget/EditText;->isAddListener:Z
    invoke-static {p1, v0}, Lmiuix/androidbasewidget/widget/EditText;->access$102(Lmiuix/androidbasewidget/widget/EditText;Z)Z

    .line 178
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/EditText$ErrorWatcher;->this$0:Lmiuix/androidbasewidget/widget/EditText;

    # getter for: Lmiuix/androidbasewidget/widget/EditText;->mErrorWatcher:Landroid/text/TextWatcher;
    invoke-static {p1}, Lmiuix/androidbasewidget/widget/EditText;->access$200(Lmiuix/androidbasewidget/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1d
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
