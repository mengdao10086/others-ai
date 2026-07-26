.class Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;
.super Landroid/os/Handler;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPlayHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;
    }
.end annotation


# static fields
.field private static final sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 214
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;-><init>(Lmiuix/pickerwidget/widget/NumberPicker$1;)V

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 221
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 226
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_27

    .line 235
    :cond_e
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->release(I)V

    goto :goto_27

    .line 232
    :cond_16
    sget-object p1, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    invoke-virtual {p1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->play()V

    goto :goto_27

    .line 229
    :cond_1c
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->sPlayerContainer:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler$SoundPlayerContainer;->init(Landroid/content/Context;I)V

    :goto_27
    return-void
.end method

.method init(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, v0, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    .line 244
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method play()V
    .registers 2

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method release(I)V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method stop()V
    .registers 2

    const/4 v0, 0x1

    .line 253
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
