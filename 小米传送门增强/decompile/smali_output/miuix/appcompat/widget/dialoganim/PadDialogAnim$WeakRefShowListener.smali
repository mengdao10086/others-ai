.class Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "PadDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefShowListener"
.end annotation


# instance fields
.field mShowDismiss:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;",
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
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View;)V
    .registers 4

    .line 248
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 249
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    .line 250
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 251
    invoke-static {}, Lmiuix/core/util/MiuixTraceUtils;->generateUniqueCookie()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mTraceCookie:I

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 3

    .line 268
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 269
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->beginAsyncTrace(Ljava/lang/String;I)V

    .line 270
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_19

    .line 272
    const-string v0, "show"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    :cond_19
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    if-eqz p1, :cond_27

    .line 276
    invoke-interface {p1}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    goto :goto_2e

    .line 278
    :cond_27
    const-string p1, "PhoneDialogAnim"

    const-string v0, "weak show onCancel mOnDismiss get null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .registers 3

    .line 284
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 285
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->endAsyncTrace(Ljava/lang/String;I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 256
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mShowDismiss:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    if-eqz p1, :cond_11

    .line 259
    invoke-interface {p1}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    goto :goto_18

    .line 261
    :cond_11
    const-string p1, "PhoneDialogAnim"

    const-string v0, "weak show onComplete mOnDismiss get null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_18
    const-string p1, "MIUIX_Widget_Animation"

    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim$WeakRefShowListener;->mTraceCookie:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixTraceUtils;->endAsyncTrace(Ljava/lang/String;I)V

    return-void
.end method
