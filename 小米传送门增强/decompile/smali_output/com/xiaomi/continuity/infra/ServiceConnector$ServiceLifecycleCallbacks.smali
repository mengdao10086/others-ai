.class public interface abstract Lcom/xiaomi/continuity/infra/ServiceConnector$ServiceLifecycleCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceLifecycleCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public onBinderDied()V
    .registers 1

    .line 0
    return-void
.end method

.method public onConnected(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TII;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onDisconnected(Landroid/os/IInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TII;)V"
        }
    .end annotation

    .line 0
    return-void
.end method
