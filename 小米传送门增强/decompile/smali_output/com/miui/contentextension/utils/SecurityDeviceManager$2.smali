.class Lcom/miui/contentextension/utils/SecurityDeviceManager$2;
.super Ljava/lang/Object;
.source "SecurityDeviceManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/SecurityDeviceManager;->signWithCredential(Ljava/lang/String;)Ljava/lang/String;
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

.field final synthetic val$nonce:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/utils/SecurityDeviceManager;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$2;->this$0:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    iput-object p2, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$2;->val$nonce:Ljava/lang/String;

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

    .line 156
    invoke-virtual {p0}, Lcom/miui/contentextension/utils/SecurityDeviceManager$2;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;-><init>(Landroid/content/Context;)V

    .line 161
    :try_start_9
    iget-object v1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$2;->val$nonce:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->signWithDeviceCredential([B)[B

    move-result-object v1

    .line 162
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1d

    .line 164
    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->release()V

    return-object v1

    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialAbility;->release()V

    .line 165
    throw v1
.end method
