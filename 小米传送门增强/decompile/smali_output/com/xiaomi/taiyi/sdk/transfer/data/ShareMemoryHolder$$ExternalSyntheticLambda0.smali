.class public final synthetic Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->$r8$lambda$F4eCLQdd8k6znFbjwB0iDxOWKJI(Ljava/lang/Object;Ljava/nio/ByteBuffer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
