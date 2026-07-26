.class Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;
.super Ljava/lang/Object;
.source "PadDialogAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;
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

.field final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;Landroid/view/View;)V
    .registers 4

    .line 192
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    .line 194
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    .line 195
    invoke-static {}, Lmiuix/core/util/MiuixTraceUtils;->generateUniqueCookie()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mTraceCookie:I

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 224
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 228
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    if-eqz p1, :cond_1c

    .line 230
    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    goto :goto_23

    .line 232
    :cond_1c
    const-string p1, "PhoneDialogAnim"

    const-string v0, "weak dismiss onCancel mOnDismiss get null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_23
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->endAsyncTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 209
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mOnDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    if-eqz p1, :cond_1c

    .line 215
    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    goto :goto_23

    .line 217
    :cond_1c
    const-string p1, "PhoneDialogAnim"

    const-string v0, "weak dismiss onComplete mOnDismiss get null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_23
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mTraceCookie:I

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

    .line 200
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->beginAsyncTrace(Ljava/lang/String;I)V

    .line 201
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefDismissListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_16

    .line 203
    const-string v0, "hide"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_16
    return-void
.end method
