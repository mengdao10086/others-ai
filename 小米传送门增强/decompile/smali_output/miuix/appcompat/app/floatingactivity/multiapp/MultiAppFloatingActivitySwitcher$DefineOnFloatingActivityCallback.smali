.class Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;
.super Ljava/lang/Object;
.source "MultiAppFloatingActivitySwitcher.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefineOnFloatingActivityCallback"
.end annotation


# instance fields
.field protected mAppCompatActivityTaskId:I

.field protected mAppCompatIdentity:Ljava/lang/String;

.field final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 740
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mAppCompatIdentity:Ljava/lang/String;

    .line 742
    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mAppCompatActivityTaskId:I

    return-void
.end method

.method private checkFinishEnable(I)Z
    .registers 4

    .line 773
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mEnableDragToDismiss:Z
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method


# virtual methods
.method public closeAllPage()V
    .registers 3

    .line 800
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    const/16 v1, 0xb

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(I)Landroid/os/Bundle;
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;I)Landroid/os/Bundle;

    return-void
.end method

.method protected getActivityIdentity()Ljava/lang/String;
    .registers 2

    .line 746
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mAppCompatIdentity:Ljava/lang/String;

    return-object v0
.end method

.method protected getActivityTaskId()I
    .registers 2

    .line 750
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mAppCompatActivityTaskId:I

    return v0
.end method

.method public getPageCount()I
    .registers 4

    .line 795
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getCurrentPageCount(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getSnapShotAndSetPanel(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 5

    if-eqz p1, :cond_24

    .line 845
    :try_start_2
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 848
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->getSnapShot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 849
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    .line 850
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p1

    .line 847
    invoke-virtual {v0, v1, v2, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->saveBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception p1

    .line 854
    const-string v0, "MFloatingSwitcher"

    const-string v1, "saveBitmap exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    :goto_24
    return-void
.end method

.method public isFirstPage()Z
    .registers 7

    .line 861
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$800(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 863
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_18
    if-ge v3, v2, :cond_38

    .line 865
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 866
    iget-object v5, v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->activity:Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v5, :cond_35

    iget v4, v4, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    if-nez v4, :cond_35

    .line 867
    invoke-virtual {v5}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_38
    return v1
.end method

.method public isFirstPageEnterAnimExecuteEnable()Z
    .registers 6

    .line 806
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$800(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    move v2, v1

    .line 808
    :goto_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 809
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;

    .line 810
    iget v4, v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->index:I

    if-nez v4, :cond_29

    .line 811
    iget-boolean v0, v3, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    xor-int/lit8 v1, v0, 0x1

    goto :goto_2c

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2c
    :goto_2c
    return v1
.end method

.method public isFirstPageExitAnimExecuteEnable()Z
    .registers 3

    .line 821
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public markActivityOpenEnterAnimExecuted(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 826
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(ILjava/lang/String;)V

    return-void
.end method

.method public onDragEnd()V
    .registers 3

    .line 785
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    const/4 v1, 0x2

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(I)Landroid/os/Bundle;
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;I)Landroid/os/Bundle;

    return-void
.end method

.method public onDragStart()V
    .registers 3

    .line 780
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    const/4 v1, 0x1

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(I)Landroid/os/Bundle;
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;I)Landroid/os/Bundle;

    return-void
.end method

.method public onFinish(I)Z
    .registers 5

    .line 756
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->checkFinishEnable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 760
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityTaskId()I

    move-result v2

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->shouldAllFloatingClose(II)Z
    invoke-static {v0, p1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;II)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 761
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    const/4 v0, 0x5

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(I)Landroid/os/Bundle;
    invoke-static {p1, v0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;I)Landroid/os/Bundle;

    :cond_1a
    return v1
.end method

.method public onHideBehindPage()V
    .registers 3

    .line 790
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    const/4 v1, 0x5

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyService(I)Landroid/os/Bundle;
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$600(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;I)Landroid/os/Bundle;

    return-void
.end method
