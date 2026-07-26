.class Lmiuix/appcompat/internal/app/widget/ActionBarView$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 2

    .line 245
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 246
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 247
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->onShow()V

    :cond_14
    return-void
.end method
