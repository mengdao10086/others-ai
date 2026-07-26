.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefDismissOnAndroidUIListener"
.end annotation


# instance fields
.field mOnDismiss:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;",
            ">;"
        }
    .end annotation
.end field

.field mTraceCookie:I

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
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .registers 4

    .line 384
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 386
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    .line 387
    invoke-static {}, Lmiuix/core/util/MiuixTraceUtils;->generateUniqueCookie()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mTraceCookie:I

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 416
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 420
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    if-eqz p1, :cond_1c

    .line 422
    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    goto :goto_23

    .line 424
    :cond_1c
    const-string p1, "PhoneDialogAnim"

    const-string v0, "onCancel mOnDismiss get null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_23
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->endAsyncTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 401
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 405
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    if-eqz p1, :cond_1c

    .line 407
    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    goto :goto_23

    .line 409
    :cond_1c
    const-string p1, "PhoneDialogAnim"

    const-string v0, "onComplete mOnDismiss get null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_23
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->endAsyncTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 392
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->beginAsyncTrace(Ljava/lang/String;I)V

    .line 393
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissOnAndroidUIListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_16

    .line 395
    const-string v0, "hide"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method
