.class Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;
.super Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub;
.source "MultiAppFloatingActivitySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceNotify"
.end annotation


# instance fields
.field protected mActivityIdentity:Ljava/lang/String;

.field protected mActivityTaskId:I

.field final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 893
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/IServiceNotify$Stub;-><init>()V

    .line 894
    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityIdentity:Ljava/lang/String;

    .line 895
    invoke-virtual {p2}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityTaskId:I

    return-void
.end method

.method private getActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .registers 4

    .line 905
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 907
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivityTaskId()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivityIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getActivity(ILjava/lang/String;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected getActivityIdentity()Ljava/lang/String;
    .registers 2

    .line 886
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityIdentity:Ljava/lang/String;

    return-object v0
.end method

.method protected getActivityTaskId()I
    .registers 2

    .line 890
    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityTaskId:I

    return v0
.end method

.method public notifyFromService(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 914
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_b0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_9b

    const/4 v2, 0x5

    if-eq p1, v2, :cond_93

    packed-switch p1, :pswitch_data_c0

    goto/16 :goto_bf

    .line 930
    :pswitch_16
    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p1

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->closeAllPage()V
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    goto/16 :goto_bf

    .line 940
    :pswitch_1f
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 942
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mExitAnimationHandler:Landroid/os/Handler;
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1400(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Landroid/os/Handler;

    move-result-object p2

    new-instance v1, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$OpenExitAnimationExecutor;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    const-wide/16 v2, 0xa0

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_bf

    .line 936
    :pswitch_37
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 937
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    const-string p1, "check_finishing"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_bf

    .line 946
    :pswitch_4c
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p2, :cond_bf

    if-eqz p1, :cond_bf

    .line 948
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getFloatingBrightPanel()Landroid/view/View;

    move-result-object p1

    .line 950
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/MemoryFileUtil;->readBitmap(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 949
    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/SnapShotViewHelper;->generateSnapShotView(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object p2

    .line 951
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-virtual {v1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->setLastActivityPanel(Landroid/view/View;)V

    .line 952
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    if-eqz p2, :cond_bf

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_bf

    .line 953
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->mLastActivityPanel:Ljava/lang/ref/WeakReference;
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1500(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_bf

    .line 933
    :cond_93
    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p1

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->hideBehindPages()V
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$900(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    goto :goto_bf

    .line 923
    :cond_9b
    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p1

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->closeAllActivity()V
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    .line 924
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 926
    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p2

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unbindService(Landroid/content/Context;)V
    invoke-static {p2, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Landroid/content/Context;)V

    goto :goto_bf

    .line 920
    :cond_b0
    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p1

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->onDragEnd()V
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$1000(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    goto :goto_bf

    .line 917
    :cond_b8
    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p1

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->hideBehindPages()V
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$900(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    :cond_bf
    :goto_bf
    return-object v0

    :pswitch_data_c0
    .packed-switch 0x8
        :pswitch_4c
        :pswitch_37
        :pswitch_1f
        :pswitch_16
    .end packed-switch
.end method

.method public resetAppCompatActivity(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 899
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityIdentity:Ljava/lang/String;

    .line 900
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$ServiceNotify;->mActivityTaskId:I

    return-void
.end method
