.class public interface abstract Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$_Parcel;,
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$Stub;,
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAIClient$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.taiyi.sdk.transfer.core.IAIClient"


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInfo()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;
.end method

.method public abstract getMemory()Lcom/xiaomi/taiyi/sdk/transfer/core/IAIMemory;
.end method
