.class Lmiuix/appcompat/internal/app/widget/ActionBarView$14;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 4190
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 4194
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 4195
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v3, v2, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    sub-int/2addr v1, v3

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseSecondaryTabHeight:I
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$3100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)I

    move-result v2

    add-int/2addr v1, v2

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPendingHeight:I
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$3002(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I

    .line 4196
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4197
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4198
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_6c

    .line 4200
    :cond_3a
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    if-ne v0, v2, :cond_4f

    const/4 v0, 0x0

    .line 4201
    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    goto :goto_6c

    .line 4202
    :cond_4f
    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mPostScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2900(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v2, v1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mCollapseTotalHeight:I

    .line 4203
    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mMovableMainContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    if-ne v0, v2, :cond_6c

    .line 4204
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$14;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    :cond_6c
    :goto_6c
    return-void
.end method
