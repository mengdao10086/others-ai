.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefUpdateOnAndroidUIListener"
.end annotation


# instance fields
.field mIsLandscape:Z

.field mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Z)V
    .registers 4

    .line 538
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    .line 540
    iput-boolean p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->mIsLandscape:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11

    .line 545
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_b

    return-void

    .line 549
    :cond_b
    const-string v1, "hide"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 551
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 554
    :cond_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const-string v4, "PhoneDialogAnim"

    if-lt v1, v2, :cond_c8

    .line 555
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 557
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    .line 558
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v5

    .line 559
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    if-eqz v2, :cond_57

    .line 560
    iget-object v6, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mDiscardImeAnimEnabled:Z
    invoke-static {v6}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$800(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 561
    iget-object v6, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iget v7, v5, Landroid/graphics/Insets;->bottom:I

    iget v8, v1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v7, v8

    # setter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I
    invoke-static {v6, v7}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$102(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    goto :goto_5c

    .line 563
    :cond_57
    iget-object v6, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # setter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I
    invoke-static {v6, v3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$102(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    .line 565
    :goto_5c
    iget-object v6, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mIsDebugMode:Z
    invoke-static {v6}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$300(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 566
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAnimationUpdate: isImeVisible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mImeHeight = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I
    invoke-static {v2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAnimationUpdate: imeInsets = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAnimationUpdate: navigationBarInsets = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdate: mDiscardImeAnimEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mDiscardImeAnimEnabled:Z
    invoke-static {v2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$800(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_c8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 574
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mIsDebugMode:Z
    invoke-static {v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$300(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdate: newValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I
    invoke-static {v2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_f6
    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I
    invoke-static {v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I

    move-result v1

    sub-int/2addr p1, v1

    # invokes: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->relayoutView(Landroid/view/View;IZ)V
    invoke-static {v0, p1, v3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$400(Landroid/view/View;IZ)V

    return-void
.end method
