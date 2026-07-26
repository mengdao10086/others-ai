.class public Lmiuix/appcompat/internal/widget/DialogRootView;
.super Landroid/widget/FrameLayout;
.source "DialogRootView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

.field private mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private mNotifyConfigChanged:Z

.field private mViewConfigChangedDispatched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    .line 22
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mViewConfigChangedDispatched:Z

    .line 27
    new-instance p1, Lmiuix/appcompat/internal/widget/DialogRootView$1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/widget/DialogRootView$1;-><init>(Lmiuix/appcompat/internal/widget/DialogRootView;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/widget/DialogRootView;)Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    return p0
.end method

.method static synthetic access$002(Lmiuix/appcompat/internal/widget/DialogRootView;Z)Z
    .registers 2

    .line 19
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    return p1
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/widget/DialogRootView;)Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mViewConfigChangedDispatched:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/widget/DialogRootView;)Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;
    .registers 1

    .line 19
    iget-object p0, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mCallback:Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

    return-object p0
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mViewConfigChangedDispatched:Z

    .line 102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 90
    invoke-virtual {v0}, Lmiuix/autodensity/AutoDensityContextWrapper;->getOriginConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 91
    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    if-nez v0, :cond_1f

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmiuix/autodensity/AutoDensityConfig;->updateDensityOverrideConfiguration(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    :cond_1f
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 79
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 81
    invoke-virtual {v0}, Lmiuix/autodensity/AutoDensityContextWrapper;->restoreOriginConfig()V

    :cond_19
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 22

    move-object/from16 v9, p0

    .line 107
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 108
    iget-boolean v0, v9, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    if-eqz v0, :cond_5c

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, v9, Lmiuix/appcompat/internal/widget/DialogRootView;->mViewConfigChangedDispatched:Z

    .line 110
    iput-boolean v0, v9, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->findAutoDensityContextWrapper(Landroid/content/Context;)Lmiuix/autodensity/AutoDensityContextWrapper;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 115
    invoke-virtual {v2}, Lmiuix/autodensity/AutoDensityContextWrapper;->getOriginConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lmiuix/autodensity/AutoDensityConfig;->updateDensityOverrideConfiguration(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 118
    :cond_2e
    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 119
    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 120
    iget-object v10, v9, Lmiuix/appcompat/internal/widget/DialogRootView;->mCallback:Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

    if-eqz v10, :cond_49

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-interface/range {v10 .. v15}, Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;IIII)V

    .line 124
    :cond_49
    new-instance v10, Lmiuix/appcompat/internal/widget/DialogRootView$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lmiuix/appcompat/internal/widget/DialogRootView$2;-><init>(Lmiuix/appcompat/internal/widget/DialogRootView;Lmiuix/autodensity/AutoDensityContextWrapper;IIIIII)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5c
    return-void
.end method

.method public setConfigurationChangedCallback(Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mCallback:Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

    return-void
.end method
