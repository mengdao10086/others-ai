.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewShowTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewShowTransitionListener"
.end annotation


# instance fields
.field private mActionBarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/app/widget/ActionBarImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .registers 4

    .line 2445
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 2446
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewShowTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    .line 2449
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewShowTransitionListener;->mActionBarRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 2454
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2455
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewShowTransitionListener;->mActionBarRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 2456
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$ViewShowTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_29

    if-eqz p1, :cond_29

    .line 2457
    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mNowShowing:Z
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$2100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2458
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lmiuix/appcompat/R$id;->action_bar_container:I

    if-ne p1, v1, :cond_29

    const/4 p1, 0x0

    .line 2459
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_29
    return-void
.end method
