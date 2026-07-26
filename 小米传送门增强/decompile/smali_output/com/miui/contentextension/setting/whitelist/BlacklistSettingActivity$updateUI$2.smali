.class final Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BlacklistSettingActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->updateUI(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.miui.contentextension.setting.whitelist.BlacklistSettingActivity$updateUI$2"
    f = "BlacklistSettingActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
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
            "Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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
    new-instance p1, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;

    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    invoke-direct {p1, v0, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;-><init>(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 214
    iget v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->label:I

    if-nez v0, :cond_58

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    # invokes: Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->initSearchPrompt()V
    invoke-static {p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$initSearchPrompt(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)V

    .line 216
    iget-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    # invokes: Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->getApps()Ljava/util/List;
    invoke-static {p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$getApps(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Ljava/util/List;

    move-result-object p1

    .line 217
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 218
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    # getter for: Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;
    invoke-static {v0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$getBinding$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    move-result-object v0

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2a
    iget-object v0, v0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->searchView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    # getter for: Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->binding:Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;
    invoke-static {v0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$getBinding$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    move-result-object v0

    if-nez v0, :cond_3c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3c
    iget-object v0, v0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->loadingView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity$updateUI$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;

    # getter for: Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->blackListAdapter:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;
    invoke-static {v0}, Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;->access$getBlackListAdapter$p(Lcom/miui/contentextension/setting/whitelist/BlacklistSettingActivity;)Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    move-result-object v0

    if-nez v0, :cond_51

    const-string v0, "blackListAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_52

    :cond_51
    move-object v2, v0

    :goto_52
    invoke-virtual {v2, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->updateData(Ljava/util/List;)V

    .line 222
    :cond_55
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 214
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
