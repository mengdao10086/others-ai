.class public abstract Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
.super Lkotlinx/coroutines/internal/AtomicOp;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CondAddOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/AtomicOp<",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final newNode:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

.field public oldNext:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Lkotlinx/coroutines/internal/AtomicOp;-><init>()V

    .line 71
    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;->newNode:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-void
.end method


# virtual methods
.method public bridge synthetic complete(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 69
    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;->complete(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;)V

    return-void
.end method

.method public complete(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;)V
    .registers 5

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_a

    .line 77
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;->newNode:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    goto :goto_c

    :cond_a
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :goto_c
    if-eqz v0, :cond_22

    .line 78
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p1, p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    .line 80
    iget-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;->newNode:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    iget-object p2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    # invokes: Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->access$finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    :cond_22
    return-void
.end method
