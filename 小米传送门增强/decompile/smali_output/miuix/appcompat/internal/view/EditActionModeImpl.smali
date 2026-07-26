.class public Lmiuix/appcompat/internal/view/EditActionModeImpl;
.super Lmiuix/appcompat/internal/view/ActionModeImpl;
.source "EditActionModeImpl.java"


# instance fields
.field private mAnnounceAccessibilityEnabled:Z

.field private mFinishEditActionModeDescription:Ljava/lang/String;

.field private mStartEditActionModeDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/view/ActionModeImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mAnnounceAccessibilityEnabled:Z

    return-void
.end method

.method private getFinishEditActionModeDescription()Ljava/lang/String;
    .registers 3

    .line 129
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mFinishEditActionModeDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 130
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->miuix_appcompat_accessibility_finish_edit_action_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 131
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mFinishEditActionModeDescription:Ljava/lang/String;

    :goto_17
    return-object v0
.end method

.method private getStartEditActionModeDescription()Ljava/lang/String;
    .registers 3

    .line 123
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mStartEditActionModeDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 124
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$string;->miuix_appcompat_accessibility_start_edit_action_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 125
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mStartEditActionModeDescription:Ljava/lang/String;

    :goto_17
    return-object v0
.end method


# virtual methods
.method public announceAccessibilityEvent(Ljava/lang/String;)V
    .registers 4

    .line 136
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionModeView;

    .line 137
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    if-eqz v1, :cond_11

    .line 138
    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method

.method public dispatchOnCreate()Z
    .registers 3

    .line 114
    invoke-super {p0}, Lmiuix/appcompat/internal/view/ActionModeImpl;->dispatchOnCreate()Z

    move-result v0

    .line 115
    iget-boolean v1, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mAnnounceAccessibilityEnabled:Z

    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    .line 116
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->getStartEditActionModeDescription()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->announceAccessibilityEvent(Ljava/lang/String;)V

    :cond_11
    return v0
.end method

.method public finish()V
    .registers 2

    .line 144
    invoke-super {p0}, Lmiuix/appcompat/internal/view/ActionModeImpl;->finish()V

    .line 145
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/EditActionModeImpl;->mAnnounceAccessibilityEnabled:Z

    if-eqz v0, :cond_e

    .line 146
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->getFinishEditActionModeDescription()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->announceAccessibilityEvent(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setSubtitle(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 39
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/EditActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ActionModeImpl;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
