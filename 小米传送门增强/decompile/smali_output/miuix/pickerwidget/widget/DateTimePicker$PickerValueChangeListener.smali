.class Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;
.super Ljava/lang/Object;
.source "DateTimePicker.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickerValueChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/pickerwidget/widget/DateTimePicker;


# direct methods
.method private constructor <init>(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/pickerwidget/widget/DateTimePicker;Lmiuix/pickerwidget/widget/DateTimePicker$1;)V
    .registers 3

    .line 582
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;-><init>(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    return-void
.end method

.method private notifyTimeChanged(Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 5

    .line 603
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 604
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$1300(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 605
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mListener:Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;
    invoke-static {v0}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$1300(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lmiuix/pickerwidget/widget/DateTimePicker$OnDateTimeChangedListener;->onDateTimeChanged(Lmiuix/pickerwidget/widget/DateTimePicker;J)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 5

    .line 585
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mDayPicker:Lmiuix/pickerwidget/widget/NumberPicker;
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$300(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_31

    .line 586
    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p2

    iget-object p3, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I
    invoke-static {p3}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$400(Lmiuix/pickerwidget/widget/DateTimePicker;)I

    move-result p3

    sub-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x5

    rem-int/lit8 p2, p2, 0x5

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 p3, -0x1

    .line 588
    :goto_1c
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$500(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/date/Calendar;

    move-result-object p2

    const/16 v0, 0xc

    invoke-virtual {p2, v0, p3}, Lmiuix/pickerwidget/date/Calendar;->add(II)Lmiuix/pickerwidget/date/Calendar;

    .line 589
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p1

    # setter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mDayLastValue:I
    invoke-static {p2, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$402(Lmiuix/pickerwidget/widget/DateTimePicker;I)I

    goto :goto_73

    .line 590
    :cond_31
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$600(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_4f

    .line 591
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$500(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/date/Calendar;

    move-result-object p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mHourPicker:Lmiuix/pickerwidget/widget/NumberPicker;
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$600(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p2

    const/16 p3, 0x12

    invoke-virtual {p1, p3, p2}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_73

    .line 592
    :cond_4f
    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$700(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    move-result-object p2

    if-ne p1, p2, :cond_73

    .line 593
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mCalendar:Lmiuix/pickerwidget/date/Calendar;
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$500(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/date/Calendar;

    move-result-object p1

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mMinuteInterval:I
    invoke-static {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$800(Lmiuix/pickerwidget/widget/DateTimePicker;)I

    move-result p2

    iget-object p3, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # getter for: Lmiuix/pickerwidget/widget/DateTimePicker;->mMinutePicker:Lmiuix/pickerwidget/widget/NumberPicker;
    invoke-static {p3}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$700(Lmiuix/pickerwidget/widget/DateTimePicker;)Lmiuix/pickerwidget/widget/NumberPicker;

    move-result-object p3

    invoke-virtual {p3}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result p3

    mul-int/2addr p2, p3

    const/16 p3, 0x14

    invoke-virtual {p1, p3, p2}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 595
    :cond_73
    :goto_73
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # invokes: Lmiuix/pickerwidget/widget/DateTimePicker;->checkCurrentTime()V
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$900(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 596
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    const/4 p2, 0x0

    # invokes: Lmiuix/pickerwidget/widget/DateTimePicker;->updateDayPicker(Z)V
    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$1000(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V

    .line 597
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # invokes: Lmiuix/pickerwidget/widget/DateTimePicker;->updateHourPicker()V
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$1100(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 598
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    # invokes: Lmiuix/pickerwidget/widget/DateTimePicker;->updateMinutePicker()V
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->access$1200(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    .line 599
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->this$0:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DateTimePicker$PickerValueChangeListener;->notifyTimeChanged(Lmiuix/pickerwidget/widget/DateTimePicker;)V

    return-void
.end method
