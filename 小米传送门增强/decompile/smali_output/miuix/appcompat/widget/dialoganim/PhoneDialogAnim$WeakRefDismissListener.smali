.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "PhoneDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefDismissListener"
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

    .line 706
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 707
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 708
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    .line 709
    invoke-static {}, Lmiuix/core/util/MiuixTraceUtils;->generateUniqueCookie()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mTraceCookie:I

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    .line 714
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->beginAsyncTrace(Ljava/lang/String;I)V

    .line 715
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_16

    .line 717
    const-string v0, "hide"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .registers 3

    .line 738
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 740
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 742
    :cond_e
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->endAsyncTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 723
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 725
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 727
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    if-eqz p1, :cond_1c

    .line 729
    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    goto :goto_23

    .line 731
    :cond_1c
    const-string p1, "PhoneDialogAnim"

    const-string v0, "onComplete mOnDismiss get null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_23
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefDismissListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->endAsyncTrace(Ljava/lang/String;I)V

    return-void
.end method
