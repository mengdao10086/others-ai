.class public interface abstract Lcom/xiaomi/taiyi/sdk/transfer/core/IAICoreService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAICoreService$_Parcel;,
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAICoreService$Stub;,
        Lcom/xiaomi/taiyi/sdk/transfer/core/IAICoreService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.taiyi.sdk.transfer.core.IAICoreService"


# virtual methods
.method public abstract onProcessStart(Ljava/lang/String;)V
.end method

.method public abstract onProcessStop(Ljava/lang/String;)V
.end method

.method public abstract prepare(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
.end method
