.class public interface abstract Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory$_Parcel;,
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory$Stub;,
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.taiyi.sdk.transfer.core.IAIMemory"


# virtual methods
.method public abstract free(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract get()Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;
.end method

.method public abstract sync(Lcom/xiaomi/taiyi/sdk/transfer/data/ShareMemoryPool;)V
.end method
