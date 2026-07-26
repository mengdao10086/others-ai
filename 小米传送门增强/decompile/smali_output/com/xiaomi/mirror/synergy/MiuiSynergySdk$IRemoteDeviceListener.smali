.class public abstract Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$IRemoteDeviceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IRemoteDeviceListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableHistoryListener()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getListenManufacturer()Ljava/lang/String;
    .registers 2

    .line 0
    const-string v0, "xiaomi"

    return-object v0
.end method

.method public abstract onFound(Ljava/lang/String;)V
.end method

.method public abstract onLost(Ljava/lang/String;)V
.end method

.method public abstract onUpdate(Ljava/lang/String;)V
.end method
