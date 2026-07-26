.class final Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BlacklistSettingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->mergeResult(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlacklistSettingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlacklistSettingActivity.kt\ncom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,402:1\n1863#2,2:403\n*S KotlinDebug\n*F\n+ 1 BlacklistSettingActivity.kt\ncom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2\n*L\n168#1:403,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.contentextension.setting.whitelist.BlacklistSettingActivity$mergeResult$2"
    f = "BlacklistSettingActivity.kt"
    l = {
        0xb6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $allBlackPageList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $allBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $installed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $whites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    iput-object p2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$whites:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$installed:Ljava/util/List;

    iput-object p4, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$allBlackPageList:Ljava/util/Map;

    iput-object p5, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$allBlacklist:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
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
    new-instance p1, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$whites:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$installed:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$allBlackPageList:Ljava/util/Map;

    iget-object v5, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$allBlacklist:Ljava/util/List;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 166
    iget v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a9

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$whites:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$setWhitelist$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/util/List;)V

    .line 168
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$installed:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    iget-object v3, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$allBlackPageList:Ljava/util/Map;

    iget-object v4, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$whites:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->$allBlacklist:Ljava/util/List;

    .line 1863
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 169
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/miui/contentextension/utils/Utilities;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_4b

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4c

    :cond_4b
    const/4 v7, 0x0

    :goto_4c
    if-eqz v7, :cond_30

    .line 170
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_55

    goto :goto_30

    .line 173
    :cond_55
    # invokes: Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->getLabelPy(Ljava/lang/String;)Lcom/miui/contentextension/setting/whitelist/model/PYInfo;
    invoke-static {v1, v7}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$getLabelPy(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Ljava/lang/String;)Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    move-result-object v8

    .line 174
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_71

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v9, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;

    invoke-virtual {v9}, Lcom/miui/contentextension/data/common/ContentExtensionConfig$AppConfigInfo;->shouldDisable()Z

    move-result v9

    if-eqz v9, :cond_71

    move v9, v2

    goto :goto_72

    :cond_71
    move v9, v10

    .line 175
    :goto_72
    new-instance v11, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7c

    if-nez v9, :cond_82

    :cond_7c
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_83

    :cond_82
    move v10, v2

    :cond_83
    invoke-direct {v11, v6, v10, v7}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 176
    invoke-virtual {v11, v8}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->setPyInfo(Lcom/miui/contentextension/setting/whitelist/model/PYInfo;)V

    .line 177
    invoke-virtual {v11}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 178
    # getter for: Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blacklist:Ljava/util/List;
    invoke-static {v1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$getBlacklist$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_96
    # getter for: Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->allList:Ljava/util/List;
    invoke-static {v1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$getAllList$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 182
    :cond_9e
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    iput v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$mergeResult$2;->label:I

    # invokes: Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->updateUI(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    invoke-static {p1, p0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$updateUI(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a9

    return-object v0

    .line 183
    :cond_a9
    :goto_a9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
