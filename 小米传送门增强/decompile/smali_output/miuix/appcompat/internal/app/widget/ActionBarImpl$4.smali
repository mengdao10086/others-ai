.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastWidth:I

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 379
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->lastWidth:I

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 5

    .line 383
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 384
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->lastWidth:I

    if-ne v1, v0, :cond_19

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsWindowInfoChanged:Z
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x1

    return v0

    .line 385
    :cond_19
    :goto_19
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 v2, 0x0

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsWindowInfoChanged:Z
    invoke-static {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    .line 386
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->lastWidth:I

    .line 387
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v1

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-result-object v3

    # invokes: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->applyActionBarStrategy(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    invoke-static {v0, v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 388
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mOverlayLayout:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v2
.end method
