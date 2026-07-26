.class public final synthetic Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda9;->f$0:I

    iput p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda9;->f$0:I

    iget v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda9;->f$1:I

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->$r8$lambda$tPtT6ZqOMuiagd8zfWuY1rQ3NOE(IILjava/nio/ByteBuffer;)[[I

    move-result-object p1

    return-object p1
.end method
