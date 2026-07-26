.class Lcom/miui/contentextension/utils/SecurityDeviceManager$3;
.super Ljava/lang/Object;
.source "SecurityDeviceManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/SecurityDeviceManager;->getSecurityDeviceId()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/utils/SecurityDeviceManager;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$3;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/miui/contentextension/utils/SecurityDeviceManager$3;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;-><init>(Landroid/content/Context;)V

    .line 215
    :try_start_9
    iget-object v1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$3;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->getSecurityDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->-$$Nest$fputmFid(Lcom/miui/contentextension/utils/SecurityDeviceManager;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_50

    .line 217
    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->release()V

    .line 219
    const-class v1, Lcom/miui/contentextension/utils/SecurityDeviceManager;

    monitor-enter v1

    .line 220
    :try_start_18
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$3;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-static {v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->-$$Nest$fgetmContext(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_security_fid"

    iget-object v3, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$3;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-static {v3}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->-$$Nest$fgetmFid(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/contentextension/utils/PreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_4d

    .line 222
    const-string v0, "Taplus.SecurityDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportTrustZone from bind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$3;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-static {v2}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->-$$Nest$fgetmIsSupportTrustZone(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$3;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    invoke-static {v0}, Lcom/miui/contentextension/utils/SecurityDeviceManager;->-$$Nest$fgetmFid(Lcom/miui/contentextension/utils/SecurityDeviceManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_4d
    move-exception v0

    .line 221
    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    :catchall_50
    move-exception v1

    .line 217
    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->release()V

    .line 218
    throw v1
.end method
