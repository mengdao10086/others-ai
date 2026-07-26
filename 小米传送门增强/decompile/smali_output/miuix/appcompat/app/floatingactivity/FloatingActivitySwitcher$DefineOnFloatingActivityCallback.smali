.class Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;
.super Ljava/lang/Object;
.source "FloatingActivitySwitcher.java"

# interfaces
.implements Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefineOnFloatingActivityCallback"
.end annotation


# instance fields
.field protected mActivityIdentity:Ljava/lang/String;

.field protected mActivityTaskId:I

.field final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 388
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityIdentity:Ljava/lang/String;

    .line 390
    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityTaskId:I

    return-void
.end method

.method private addLastActivityPanel(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 583
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 585
    invoke-virtual {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getLastActivityPanel()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 587
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object p1

    .line 588
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_26

    .line 590
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 591
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_26
    return-void
.end method

.method private checkFinishEnable(I)Z
    .registers 4

    .line 426
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mEnableDragToDismiss:Z
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$600(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Z

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

.method private shouldTopFloatingClose(I)Z
    .registers 6

    .line 433
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 435
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    const/4 v3, 0x4

    if-eq p1, v3, :cond_23

    const/4 v3, 0x3

    if-ne p1, v3, :cond_26

    :cond_23
    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1
.end method


# virtual methods
.method public closeAllPage()V
    .registers 3

    .line 469
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mWillDestroyList:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    .line 470
    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    goto :goto_a

    .line 472
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mWillDestroyList:Ljava/util/ArrayList;
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected getActivityIdentity()Ljava/lang/String;
    .registers 2

    .line 394
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityIdentity:Ljava/lang/String;

    return-object v0
.end method

.method protected getActivityTaskId()I
    .registers 2

    .line 398
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->mActivityTaskId:I

    return v0
.end method

.method public getSnapShotAndSetPanel(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 7

    if-eqz p1, :cond_20

    .line 541
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 543
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->getPreviousActivity(Lmiuix/appcompat/app/AppCompatActivity;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_20

    const/4 v2, 0x0

    .line 548
    :cond_f
    invoke-static {v1, p1}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->generateSnapShotView(Landroid/content/Context;Lmiuix/appcompat/app/AppCompatActivity;)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    if-nez v3, :cond_1a

    const/4 v4, 0x3

    if-lt v2, v4, :cond_f

    .line 551
    :cond_1a
    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->setLastActivityPanel(Landroid/view/View;)V

    .line 552
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->addLastActivityPanel(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_20
    return-void
.end method

.method public isFirstPage()Z
    .registers 7

    .line 560
    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 564
    :cond_12
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v2

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 566
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_29
    if-ge v3, v2, :cond_47

    .line 568
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/app/AppCompatActivity;

    .line 569
    invoke-virtual {v4}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_44

    .line 570
    invoke-virtual {v4}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_47
    return v1
.end method

.method public isFirstPageEnterAnimExecuteEnable()Z
    .registers 8

    .line 477
    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    const/4 v1, 0x1

    if-nez v0, :cond_12

    return v1

    .line 481
    :cond_12
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v2

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_76

    .line 483
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-le v3, v1, :cond_47

    .line 485
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/app/AppCompatActivity;

    .line 486
    invoke-virtual {v6}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_44

    add-int/lit8 v5, v5, 0x1

    :cond_44
    if-le v5, v1, :cond_30

    return v4

    .line 494
    :cond_47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4f

    const/4 v2, 0x0

    goto :goto_55

    :cond_4f
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    :goto_55
    if-nez v2, :cond_58

    return v1

    .line 498
    :cond_58
    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_5f

    return v1

    .line 501
    :cond_5f
    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    if-nez v2, :cond_70

    return v1

    .line 505
    :cond_70
    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$100(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_76
    return v1
.end method

.method public isFirstPageExitAnimExecuteEnable()Z
    .registers 6

    .line 512
    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityInfoStack:Ljava/util/HashMap;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$1100()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;

    const/4 v1, 0x1

    if-nez v0, :cond_12

    return v1

    .line 516
    :cond_12
    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->mActivityCache:Landroid/util/SparseArray;
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$700(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;)Landroid/util/SparseArray;

    move-result-object v2

    # getter for: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_43

    .line 519
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/appcompat/app/AppCompatActivity;

    .line 520
    invoke-virtual {v4}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_3f
    if-ne v3, v1, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    :cond_43
    :goto_43
    return v1
.end method

.method public markActivityOpenEnterAnimExecuted(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 531
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->markActivityOpenEnterAnimExecutedInternal(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onDragEnd()V
    .registers 3

    .line 449
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    # invokes: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->showBehindPages(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$900(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    return-void
.end method

.method public onDragStart()V
    .registers 3

    .line 444
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    # invokes: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->hideBehindPages(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$800(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(I)Z
    .registers 4

    .line 408
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->checkFinishEnable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 411
    :cond_8
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->shouldTopFloatingClose(I)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 412
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    # invokes: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->closeTopActivity(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$500(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    goto :goto_21

    .line 414
    :cond_18
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->closeAllFloatingPage(Ljava/lang/String;)V

    :goto_21
    return v1
.end method

.method public onHideBehindPage()V
    .registers 3

    .line 454
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->this$0:Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$DefineOnFloatingActivityCallback;->getActivityIdentity()Ljava/lang/String;

    move-result-object v1

    # invokes: Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->hideBehindPages(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;->access$800(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;Ljava/lang/String;)V

    return-void
.end method
