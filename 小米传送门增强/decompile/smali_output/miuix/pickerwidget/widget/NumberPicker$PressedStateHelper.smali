.class Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;
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
    name = "PressedStateHelper"
.end annotation


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .registers 2

    .line 2296
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2300
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    .line 2301
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .registers 4

    .line 2321
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 2322
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2323
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2324
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .registers 3

    .line 2328
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 2329
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2330
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2331
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .registers 6

    const/4 v0, 0x0

    .line 2307
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2308
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2309
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2310
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1100(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2311
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # setter for: Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1102(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 2312
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    .line 2314
    :cond_2c
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1300(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2315
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # setter for: Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1302(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 2316
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :cond_48
    return-void
.end method

.method public run()V
    .registers 7

    .line 2336
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_67

    if-eq v0, v1, :cond_b

    goto/16 :goto_9d

    .line 2352
    :cond_b
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_3a

    if-eq v0, v1, :cond_13

    goto/16 :goto_9d

    .line 2363
    :cond_13
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1300(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2364
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2365
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 2364
    invoke-virtual {v0, p0, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2367
    :cond_25
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # ^= operator for: Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1380(Lmiuix/pickerwidget/widget/NumberPicker;I)Z

    .line 2368
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_9d

    .line 2354
    :cond_3a
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1100(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 2355
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2356
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 2355
    invoke-virtual {v0, p0, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2358
    :cond_4c
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # ^= operator for: Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1180(Lmiuix/pickerwidget/widget/NumberPicker;I)Z

    .line 2359
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_9d

    .line 2338
    :cond_67
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_83

    if-eq v0, v1, :cond_6e

    goto :goto_9d

    .line 2345
    :cond_6e
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # setter for: Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1302(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 2346
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    goto :goto_9d

    .line 2340
    :cond_83
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # setter for: Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1102(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z

    .line 2341
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    # getter for: Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    :goto_9d
    return-void
.end method
