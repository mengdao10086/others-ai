.class Lmiuix/appcompat/app/AlertController$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 324
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    .line 325
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_14

    .line 326
    iget-object v0, v1, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v0, :cond_11

    .line 327
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    .line 329
    :cond_11
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    goto :goto_76

    .line 330
    :cond_14
    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v2, :cond_21

    .line 331
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_76

    .line 332
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    goto :goto_76

    .line 334
    :cond_21
    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v2, :cond_2e

    .line 335
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_76

    .line 336
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    goto :goto_76

    .line 339
    :cond_2e
    # getter for: Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$500(Lmiuix/appcompat/app/AlertController;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$500(Lmiuix/appcompat/app/AlertController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_67

    .line 340
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$500(Lmiuix/appcompat/app/AlertController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 341
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v4

    if-ne p1, v4, :cond_4a

    .line 342
    # getter for: Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_66

    .line 343
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    :cond_66
    move-object v3, v1

    .line 348
    :cond_67
    instance-of v1, p1, Lmiuix/internal/widget/GroupButton;

    if-eqz v1, :cond_76

    move-object v1, p1

    check-cast v1, Lmiuix/internal/widget/GroupButton;

    invoke-virtual {v1}, Lmiuix/internal/widget/GroupButton;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 349
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    .line 352
    :cond_76
    :goto_76
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    invoke-static {p1, v1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    if-eqz v3, :cond_93

    .line 355
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 356
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_93

    .line 357
    const-string v0, "BUTTON_CLICK_AUTO_DISMISSIBLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 358
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_94

    :cond_93
    const/4 p1, 0x1

    .line 363
    :goto_94
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$3;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v0, v0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_9e

    const p1, -0x626d435d

    goto :goto_a1

    :cond_9e
    const p1, -0x626d434d

    :goto_a1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
