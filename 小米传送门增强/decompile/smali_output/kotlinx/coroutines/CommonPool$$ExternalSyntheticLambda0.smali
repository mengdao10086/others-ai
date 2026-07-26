.class public final synthetic Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, p1}, Lkotlinx/coroutines/CommonPool;->$r8$lambda$onubKuuswKYuMFVZsPEi1dTYsS0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
