.class final Landroidx/lifecycle/DispatchQueue$dispatchAndEnqueue$1$1;
.super Ljava/lang/Object;
.source "DispatchQueue.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/DispatchQueue;->dispatchAndEnqueue(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroidx/lifecycle/DispatchQueue;


# direct methods
.method constructor <init>(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    iput-object p1, p0, Landroidx/lifecycle/DispatchQueue$dispatchAndEnqueue$1$1;->this$0:Landroidx/lifecycle/DispatchQueue;

    iput-object p2, p0, Landroidx/lifecycle/DispatchQueue$dispatchAndEnqueue$1$1;->$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 100
    iget-object v0, p0, Landroidx/lifecycle/DispatchQueue$dispatchAndEnqueue$1$1;->this$0:Landroidx/lifecycle/DispatchQueue;

    iget-object v1, p0, Landroidx/lifecycle/DispatchQueue$dispatchAndEnqueue$1$1;->$runnable:Ljava/lang/Runnable;

    # invokes: Landroidx/lifecycle/DispatchQueue;->enqueue(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroidx/lifecycle/DispatchQueue;->access$enqueue(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    return-void
.end method
