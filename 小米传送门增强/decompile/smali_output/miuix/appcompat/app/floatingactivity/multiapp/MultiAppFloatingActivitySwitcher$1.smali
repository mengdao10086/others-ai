.class Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$1;
.super Ljava/lang/Object;
.source "MultiAppFloatingActivitySwitcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 78
    const-string p1, "MFloatingSwitcher"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 81
    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p1

    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService$Stub;->asInterface(Landroid/os/IBinder;)Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;

    move-result-object p2

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->setIFloatingService(Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;)V
    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;Lmiuix/appcompat/app/floatingactivity/multiapp/IFloatingService;)V

    .line 82
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->checkRegister()V
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    :cond_1d
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 88
    const-string p1, "MFloatingSwitcher"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 91
    # getter for: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->sInstance:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$000()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object p1

    # invokes: Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->unRegisterAll()V
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->access$300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;)V

    .line 92
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-virtual {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->clear()V

    .line 93
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    invoke-virtual {p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->destroy()V

    :cond_1e
    return-void
.end method
