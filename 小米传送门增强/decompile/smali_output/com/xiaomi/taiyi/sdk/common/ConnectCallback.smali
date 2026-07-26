.class public interface abstract Lcom/xiaomi/taiyi/sdk/common/ConnectCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/common/ConnectCallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onConnectFailed(ILjava/lang/String;)V
.end method

.method public abstract onConnected()V
.end method

.method public abstract onConnecting()V
.end method

.method public abstract onDisconnected()V
.end method
