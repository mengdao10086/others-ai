.class public final Lkotlinx/coroutines/internal/LockFreeLinkedListKt;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# static fields
.field private static final CONDITION_FALSE:Ljava/lang/Object;

.field private static final LIST_EMPTY:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    .line 26
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->LIST_EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public static final getCONDITION_FALSE()Ljava/lang/Object;
    .registers 1

    .line 23
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Ljava/lang/Object;

    return-object v0
.end method

.method public static final unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 3

    .line 627
    instance-of v0, p0, Lkotlinx/coroutines/internal/Removed;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    iget-object v1, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :goto_f
    if-nez v1, :cond_14

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :cond_14
    return-object v1
.end method
