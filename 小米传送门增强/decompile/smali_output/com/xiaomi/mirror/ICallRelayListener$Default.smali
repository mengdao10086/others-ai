.class public Lcom/xiaomi/mirror/ICallRelayListener$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/mirror/ICallRelayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/ICallRelayListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
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

.method public onAddressUpdate(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method
