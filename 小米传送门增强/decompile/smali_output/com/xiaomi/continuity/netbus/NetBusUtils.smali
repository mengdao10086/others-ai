.class public final Lcom/xiaomi/continuity/netbus/NetBusUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mDisableBindImportant:Z

.field private static final mIsTestEnv:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 0
    const-string v0, "lyra.l1.demo"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/continuity/netbus/NetBusUtils;->mIsTestEnv:Z

    const-string v0, "lyra.no_bind_important"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/continuity/netbus/NetBusUtils;->mDisableBindImportant:Z

    return-void
.end method

.method public static getBindServiceFlags()I
    .registers 1

    .line 0
    sget-boolean v0, Lcom/xiaomi/continuity/netbus/NetBusUtils;->mDisableBindImportant:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    const/16 v0, 0x40

    :goto_8
    return v0
.end method
