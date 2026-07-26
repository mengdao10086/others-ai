.class public interface abstract Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$_Parcel;,
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$Stub;,
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIAbility$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.taiyi.sdk.transfer.core.IAIAbility"


# virtual methods
.method public abstract api()Ljava/lang/String;
.end method

.method public abstract bind(Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)I
.end method

.method public abstract execute(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
.end method

.method public abstract getMemory(Ljava/lang/String;)Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory;
.end method

.method public abstract hasSession()Z
.end method

.method public abstract isAlive()Z
.end method

.method public abstract isInternal()Z
.end method

.method public abstract isLLM()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract post(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/transfer/core/IAICallback;)V
.end method

.method public abstract query(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
.end method

.method public abstract type()I
.end method

.method public abstract unbind(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)I
.end method

.method public abstract version()J
.end method
