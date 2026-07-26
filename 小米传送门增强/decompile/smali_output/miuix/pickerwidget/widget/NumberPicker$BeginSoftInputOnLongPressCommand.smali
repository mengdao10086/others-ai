.class Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;
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
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 2430
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2434
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v1, 0x1

    # setter for: Lmiuix/pickerwidget/widget/NumberPicker;->mIgnoreMoveEvents:Z
    invoke-static {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1702(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    return-void
.end method
