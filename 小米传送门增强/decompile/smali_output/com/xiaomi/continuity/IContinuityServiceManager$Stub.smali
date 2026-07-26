.class public abstract Lcom/xiaomi/continuity/IContinuityServiceManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/IContinuityServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/continuity/IContinuityServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/IContinuityServiceManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/continuity/IContinuityServiceManager;
    .registers 3

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.xiaomi.continuity.IContinuityServiceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/xiaomi/continuity/IContinuityServiceManager;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/xiaomi/continuity/IContinuityServiceManager;

    return-object v0

    :cond_13
    new-instance v0, Lcom/xiaomi/continuity/IContinuityServiceManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/continuity/IContinuityServiceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaomi/continuity/IContinuityServiceManager;
    .registers 1

    .line 0
    sget-object v0, Lcom/xiaomi/continuity/IContinuityServiceManager$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/continuity/IContinuityServiceManager;

    return-object v0
.end method
