.class Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 2213
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 10

    .line 2229
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$700(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_63

    .line 2230
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_15

    .line 2232
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2235
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2236
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2238
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    return-object p1

    .line 2241
    :cond_3e
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # invokes: Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {p2, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$800(Lmiuix/pickerwidget/widget/NumberPicker;Ljava/lang/String;)I

    move-result p2

    .line 2250
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I
    invoke-static {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$900(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p3

    if-gt p2, p3, :cond_62

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I
    invoke-static {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->access$900(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_61

    goto :goto_62

    :cond_61
    return-object v0

    :cond_62
    :goto_62
    return-object v2

    .line 2256
    :cond_63
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_72

    return-object v2

    .line 2260
    :cond_72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v1, p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2261
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p4, p6, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2262
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 2263
    iget-object p3, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$700(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object p3

    array-length p4, p3

    :goto_a3
    if-ge v1, p4, :cond_ca

    aget-object p6, p3, v1

    .line 2264
    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2265
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 2266
    iget-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p3

    # invokes: Lmiuix/pickerwidget/widget/NumberPicker;->postSetSelectionCommand(II)V
    invoke-static {p2, p1, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1000(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    .line 2267
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p6, p5, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_c7
    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    :cond_ca
    return-object v2
.end method

.method protected getAcceptedChars()[C
    .registers 2

    .line 2223
    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C
    invoke-static {}, Lmiuix/pickerwidget/widget/NumberPicker;->access$600()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
