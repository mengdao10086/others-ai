.class public Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public free(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public get()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public sync(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;)V
    .registers 2

    .line 0
    return-void
.end method
