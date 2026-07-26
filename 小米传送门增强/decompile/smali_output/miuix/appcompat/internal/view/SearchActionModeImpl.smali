.class public Lmiuix/appcompat/internal/view/SearchActionModeImpl;
.super Lmiuix/appcompat/internal/view/ActionModeImpl;
.source "SearchActionModeImpl.java"

# interfaces
.implements Lmiuix/view/SearchActionMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/ActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    return-void
.end method


# virtual methods
.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 50
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSearchInput()Landroid/widget/EditText;
    .registers 2

    .line 55
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 3

    .line 25
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .registers 3

    .line 30
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setAnimateView(Landroid/view/View;)V

    return-void
.end method

.method public setAnimatedViewListener(Lmiuix/view/SearchActionMode$AnimatedViewListener;)V
    .registers 3

    .line 70
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setAnimatedViewListener(Lmiuix/view/SearchActionMode$AnimatedViewListener;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setPendingInsets(Landroid/graphics/Rect;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_11

    .line 81
    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->rePaddingAndRelayout(Landroid/graphics/Rect;)V

    :cond_11
    return-void
.end method
