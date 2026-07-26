.class Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 4

    .line 92
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 95
    invoke-interface {v1, p1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onTransitionBegin(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 112
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 115
    invoke-interface {v1, p1}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onTransitionComplete(Ljava/lang/Object;)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 103
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionBarTransitionListeners:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/ActionBarTransitionListener;

    .line 105
    invoke-interface {v1, p1, p2}, Lmiuix/appcompat/app/ActionBarTransitionListener;->onTransitionUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    goto :goto_d

    :cond_1d
    return-void
.end method
