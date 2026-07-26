.class public final Lcom/miui/contentextension/clipboard/MiLinkSwitchBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiLinkSwitchBroadcastReceiver.kt"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    const-string v0, "MiLinkSwitchBroadcastReceiver"

    iput-object v0, p0, Lcom/miui/contentextension/clipboard/MiLinkSwitchBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 17
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/MiLinkSwitchBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_20

    if-nez p1, :cond_1b

    goto :goto_20

    .line 19
    :cond_1b
    sget-object p2, Lcom/miui/contentextension/utils/MiLinkUtil;->INSTANCE:Lcom/miui/contentextension/utils/MiLinkUtil;

    invoke-virtual {p2, p1}, Lcom/miui/contentextension/utils/MiLinkUtil;->checkMiLinOpenAndOpration(Landroid/content/Context;)V

    :cond_20
    :goto_20
    return-void
.end method
