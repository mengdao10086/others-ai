.class Lmiuix/preference/StretchablePickerPreference$3;
.super Ljava/lang/Object;
.source "StretchablePickerPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/StretchablePickerPreference;->changeTimeState(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/StretchablePickerPreference;

.field final synthetic val$dateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;


# direct methods
.method constructor <init>(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference$3;->this$0:Lmiuix/preference/StretchablePickerPreference;

    iput-object p2, p0, Lmiuix/preference/StretchablePickerPreference$3;->val$dateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 171
    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$3;->this$0:Lmiuix/preference/StretchablePickerPreference;

    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference$3;->val$dateTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    # invokes: Lmiuix/preference/StretchablePickerPreference;->setTimePickerLunarMode(Lmiuix/pickerwidget/widget/DateTimePicker;Z)V
    invoke-static {p1, v0, p2}, Lmiuix/preference/StretchablePickerPreference;->access$600(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;Z)V

    return-void
.end method
