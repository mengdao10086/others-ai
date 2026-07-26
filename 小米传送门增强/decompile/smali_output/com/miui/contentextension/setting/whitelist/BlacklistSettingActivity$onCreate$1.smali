.class final Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BlacklistSettingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.contentextension.setting.whitelist.BlacklistSettingActivity$onCreate$1"
    f = "BlacklistSettingActivity.kt"
    l = {
        0x68,
        0x68,
        0x68,
        0x68,
        0x68
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    invoke-direct {v0, v1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v6, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 91
    iget v0, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->label:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v8, "await(...)"

    const/4 v9, 0x0

    if-eqz v0, :cond_8a

    if-eq v0, v5, :cond_73

    if-eq v0, v4, :cond_5c

    if-eq v0, v3, :cond_45

    if-eq v0, v2, :cond_29

    if-ne v0, v1, :cond_21

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_161

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v0, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move-object/from16 v17, v4

    move-object v4, v0

    move-object/from16 v0, v17

    goto/16 :goto_144

    :cond_45
    iget-object v0, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v3, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    iget-object v5, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Deferred;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_127

    :cond_5c
    iget-object v0, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v4, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    iget-object v5, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Deferred;

    iget-object v10, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/Deferred;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_10e

    :cond_73
    iget-object v0, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    iget-object v5, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Deferred;

    iget-object v10, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/Deferred;

    iget-object v11, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/Deferred;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto/16 :goto_f6

    :cond_8a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 92
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v11

    new-instance v13, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1$whites$1;

    iget-object v10, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    invoke-direct {v13, v10, v9}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1$whites$1;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object v10, v0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v15

    .line 95
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v11

    new-instance v13, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1$installed$1;

    iget-object v10, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    invoke-direct {v13, v10, v9}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1$installed$1;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)V

    const/16 v16, 0x0

    move-object v10, v0

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v15

    .line 98
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v11

    new-instance v13, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1$allBlacklist$1;

    iget-object v10, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    invoke-direct {v13, v10, v9}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1$allBlacklist$1;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)V

    move-object v10, v0

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v15

    .line 101
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v11

    new-instance v13, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1$allBlackPageList$1;

    iget-object v10, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    invoke-direct {v13, v10, v9}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1$allBlackPageList$1;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)V

    move-object v10, v0

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v10

    .line 104
    iget-object v11, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    iput-object v2, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object v0, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$1:Ljava/lang/Object;

    iput-object v10, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$2:Ljava/lang/Object;

    iput-object v11, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$3:Ljava/lang/Object;

    iput v5, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->label:I

    invoke-interface {v1, v6}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_f2

    return-object v7

    :cond_f2
    move-object v5, v10

    move-object v10, v0

    move-object v0, v11

    move-object v11, v2

    :goto_f6
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    iput-object v10, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object v5, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$1:Ljava/lang/Object;

    iput-object v0, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$2:Ljava/lang/Object;

    iput-object v1, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$3:Ljava/lang/Object;

    iput v4, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->label:I

    invoke-interface {v11, v6}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_10c

    return-object v7

    :cond_10c
    move-object v4, v0

    move-object v0, v1

    :goto_10e
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    iput-object v5, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object v4, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$1:Ljava/lang/Object;

    iput-object v0, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$2:Ljava/lang/Object;

    iput-object v1, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$3:Ljava/lang/Object;

    iput v3, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->label:I

    invoke-interface {v10, v6}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_125

    return-object v7

    :cond_125
    move-object v3, v0

    move-object v0, v1

    :goto_127
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    iput-object v4, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object v3, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$1:Ljava/lang/Object;

    iput-object v0, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$2:Ljava/lang/Object;

    iput-object v2, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$3:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->label:I

    invoke-interface {v5, v6}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_13e

    return-object v7

    :cond_13e
    move-object/from16 v17, v2

    move-object v2, v0

    move-object v0, v4

    move-object/from16 v4, v17

    :goto_144
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Ljava/util/Map;

    iput-object v9, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object v9, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$1:Ljava/lang/Object;

    iput-object v9, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$2:Ljava/lang/Object;

    iput-object v9, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->L$3:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, v6, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$onCreate$1;->label:I

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p0

    # invokes: Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mergeResult(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static/range {v0 .. v5}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$mergeResult(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_161

    return-object v7

    .line 105
    :cond_161
    :goto_161
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
