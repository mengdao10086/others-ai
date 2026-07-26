.class Lcom/miui/contentextension/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/App;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/App;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/App;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/miui/contentextension/App$1;->this$0:Lcom/miui/contentextension/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/miui/contentextension/App$1;->this$0:Lcom/miui/contentextension/App;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/DeviceUtils;->initialize(Landroid/content/Context;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App onCreate --current setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getCurrentSettingBlacklist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.App"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/miui/contentextension/App$1;->this$0:Lcom/miui/contentextension/App;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->updateBlacklistAndProvider()V

    .line 68
    iget-object v0, p0, Lcom/miui/contentextension/App$1;->this$0:Lcom/miui/contentextension/App;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlacklistIfNeed(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/miui/contentextension/App$1;->this$0:Lcom/miui/contentextension/App;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/App;->resetWhitelistToSettingProviderIfNeed(Landroid/content/Context;)V

    return-void
.end method
