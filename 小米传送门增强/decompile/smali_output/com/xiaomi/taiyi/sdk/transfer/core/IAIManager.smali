.class public interface abstract Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$_Parcel;,
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Stub;,
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.taiyi.sdk.transfer.core.IAIManager"


# virtual methods
.method public abstract authorize(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
.end method

.method public abstract loadAsync(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;)V
.end method

.method public abstract loadSync(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
.end method
