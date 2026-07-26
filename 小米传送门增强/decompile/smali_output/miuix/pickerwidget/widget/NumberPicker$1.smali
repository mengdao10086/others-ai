.class Lmiuix/pickerwidget/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/pickerwidget/widget/NumberPicker;->initInputText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 755
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_c

    .line 758
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1b

    .line 760
    :cond_c
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 761
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$1;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # invokes: Lmiuix/pickerwidget/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {p2, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$200(Lmiuix/pickerwidget/widget/NumberPicker;Landroid/view/View;)V

    :goto_1b
    return-void
.end method
