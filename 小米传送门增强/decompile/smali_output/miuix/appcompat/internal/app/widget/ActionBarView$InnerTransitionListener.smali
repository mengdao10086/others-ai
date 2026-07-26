.class Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerTransitionListener"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/app/widget/ActionBarView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 3

    .line 4346
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4347
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 2

    .line 4352
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .registers 2

    .line 4378
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 4379
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 2

    .line 4372
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 4373
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 4357
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 4358
    const-string p1, "actionbar_state_change"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    .line 4362
    :cond_c
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$InnerTransitionListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    if-nez p2, :cond_17

    return-void

    .line 4366
    :cond_17
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I
    invoke-static {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$3002(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I

    .line 4367
    invoke-virtual {p2}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
