.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody$putCallback$1;
.super Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;->putCallback(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody$putCallback$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;)V
    .registers 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody$putCallback$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
