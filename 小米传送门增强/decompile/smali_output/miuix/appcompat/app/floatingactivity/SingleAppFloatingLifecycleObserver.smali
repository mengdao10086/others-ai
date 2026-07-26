.class public Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;
.super Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;
.source "SingleAppFloatingLifecycleObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$yNAz8mWfG53jkLX46y890-Gpmqw(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->lambda$executeCloseExit$0(Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method private execEnterNotInFloatingWindowMode(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 56
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    .line 58
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->obtainPageIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v1

    if-ltz v1, :cond_19

    .line 59
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz v0, :cond_19

    .line 60
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V

    const/4 v0, 0x0

    .line 61
    invoke-static {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    :cond_19
    return-void
.end method

.method private executeCloseExit(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 118
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 121
    :cond_7
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 123
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getLastActivityPanel()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 125
    new-instance v1, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void
.end method

.method private synthetic lambda$executeCloseExit$0(Landroid/view/View;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 6

    .line 126
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x0

    .line 128
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->getAnimConfig(ILjava/lang/Runnable;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    .line 130
    new-instance v2, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;

    invoke-direct {v2, p0, p2}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver$CloseExitListener;-><init>(Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;Lmiuix/appcompat/app/AppCompatActivity;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v2, p2, v0

    invoke-virtual {v1, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 131
    invoke-static {p1, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeCloseExitAnimation(Landroid/view/View;Lmiuix/animation/base/AnimConfig;)V

    :cond_1e
    return-void
.end method

.method private reenterTransition(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 5

    .line 95
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityList(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 99
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivityIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2d

    .line 102
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 103
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->executeCloseExit(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .line 21
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivity(Ljava/lang/String;I)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 25
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 33
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 34
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->isActivityOpenEnterAnimExecuted(Lmiuix/appcompat/app/AppCompatActivity;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 35
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 37
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->singleAppFloatingActivityEnter(Lmiuix/appcompat/app/AppCompatActivity;)V

    goto :goto_38

    .line 41
    :cond_2d
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V

    const/4 v0, 0x0

    .line 42
    invoke-static {v1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    goto :goto_38

    .line 45
    :cond_35
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->execEnterNotInFloatingWindowMode(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 83
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 85
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->remove(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 67
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 69
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getActivity(Ljava/lang/String;I)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 70
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 71
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 73
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->hideFloatingDimBackground()V

    .line 76
    :cond_23
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/SingleAppFloatingLifecycleObserver;->reenterTransition(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_26
    return-void
.end method
