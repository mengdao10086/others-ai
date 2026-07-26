.class public final synthetic Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda5;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder$$ExternalSyntheticLambda5;->f$0:I

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryHolder;->$r8$lambda$PxZA1Q5z0LDzQ1BO6A35CmD_uPs(ILjava/nio/ByteBuffer;)[D

    move-result-object p1

    return-object p1
.end method
