.class Lmiuix/app/Application$LifecycleCallbacksWrapper;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/app/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LifecycleCallbacksWrapper"
.end annotation


# instance fields
.field private mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method private collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;
    .registers 3

    .line 125
    iget-object v0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 127
    iget-object v1, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_15

    :catchall_12
    move-exception v1

    goto :goto_17

    :cond_14
    const/4 v1, 0x0

    .line 129
    :goto_15
    monitor-exit v0

    return-object v1

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_12

    throw v1
.end method


# virtual methods
.method public add(Landroid/app/Application$ActivityLifecycleCallbacks;)Z
    .registers 3

    .line 112
    iget-object v0, p0, Lmiuix/app/Application$LifecycleCallbacksWrapper;->mActivitySubLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .line 135
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 137
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 138
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 5

    .line 196
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 198
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 199
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 5

    .line 166
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 168
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 169
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 156
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 158
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 159
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    .line 186
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 188
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 189
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 5

    .line 146
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 148
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 149
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .line 176
    invoke-direct {p0}, Lmiuix/app/Application$LifecycleCallbacksWrapper;->collectActivityLifecycleSubCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    .line 178
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 179
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-void
.end method
