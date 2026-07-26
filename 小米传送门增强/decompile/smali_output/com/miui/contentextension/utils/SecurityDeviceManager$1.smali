.class Lcom/miui/contentextension/utils/SecurityDeviceManager$1;
.super Ljava/lang/Object;
.source "SecurityDeviceManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/SecurityDeviceManager;->isSupportTrustZone()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/utils/SecurityDeviceManager;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$1;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;-><init>(Landroid/content/Context;)V

    .line 86
    :try_start_9
    iget-object v1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$1;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->isThisDeviceSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->-$$Nest$fputmIsSupportTrustZone(Lcom/miui/contentextension/utils/SecurityDeviceManager;Ljava/lang/Boolean;)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_51

    .line 88
    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->release()V

    .line 90
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$1;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-static {v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->-$$Nest$fgetmContext(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$1;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-static {v1}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->-$$Nest$fgetmIsSupportTrustZone(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "pref_security_support_tz"

    invoke-static {v0, v2, v1}, Lcom/miui/contentextension/utils/PreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportTrustZone from bind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$1;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-static {v1}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->-$$Nest$fgetmIsSupportTrustZone(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.SecurityDeviceManager"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$1;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-static {v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->-$$Nest$fgetmIsSupportTrustZone(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_51
    move-exception v1

    .line 88
    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->release()V

    .line 89
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/miui/contentextension/utils/SecurityDeviceManager$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
