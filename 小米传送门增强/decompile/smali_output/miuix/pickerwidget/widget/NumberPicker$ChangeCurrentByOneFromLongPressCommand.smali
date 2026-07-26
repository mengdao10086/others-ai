.class Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 2395
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .registers 2

    .line 2395
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .registers 2

    .line 2399
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2404
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    # invokes: Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1500(Lmiuix/pickerwidget/widget/NumberPicker;Z)V

    .line 2405
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
