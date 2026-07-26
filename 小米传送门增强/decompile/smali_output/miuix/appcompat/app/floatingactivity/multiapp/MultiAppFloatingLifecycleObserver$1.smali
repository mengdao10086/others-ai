.class Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;
.super Ljava/lang/Object;
.source "MultiAppFloatingLifecycleObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

.field final synthetic val$appCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->val$appCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 41
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getInstance()Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 43
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    # invokes: Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->access$000(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getCurrentPageCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1f

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    # invokes: Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->access$100(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->getServicePageCount(I)I

    move-result v1

    if-le v1, v2, :cond_4b

    .line 44
    :cond_1f
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->val$appCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v1

    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    goto :goto_4b

    .line 47
    :cond_2f
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->val$appCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 48
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->val$appCompatActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->executeOpenEnterAnimation()V

    .line 52
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    # invokes: Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityTaskId()I
    invoke-static {v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->access$200(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)I

    move-result v1

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver$1;->this$0:Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;

    # invokes: Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->getActivityIdentity()Ljava/lang/String;
    invoke-static {v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;->access$300(Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingLifecycleObserver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->notifyPreviousActivitySlide(ILjava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void
.end method
