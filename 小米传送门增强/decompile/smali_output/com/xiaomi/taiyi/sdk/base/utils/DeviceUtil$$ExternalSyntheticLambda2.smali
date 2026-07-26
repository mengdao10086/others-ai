.class public final synthetic Lcom/xiaomi/taiyi/sdk/base/utils/DeviceUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/utils/DeviceUtil$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/DeviceUtil$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/DeviceUtil;->$r8$lambda$6b4dhR6Vuv8AJB6DE7UsCT5-b-E(Ljava/util/HashMap;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
