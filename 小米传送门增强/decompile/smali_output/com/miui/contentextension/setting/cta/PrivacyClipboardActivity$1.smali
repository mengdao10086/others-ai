.class Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity$1;
.super Ljava/lang/Object;
.source "PrivacyClipboardActivity.java"

# interfaces
.implements Lcom/miui/contentextension/utils/Utils$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;->showPrivacyUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity$1;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishActivity()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity$1;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyClipboardActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onAgree()V
    .registers 3

    .line 58
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setTaplusEnableStatus(Landroid/content/Context;Z)V

    .line 59
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setCtaOpen(Landroid/content/Context;Z)V

    .line 60
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setDouyinPrivacyEnable(Landroid/content/Context;Z)V

    .line 61
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setClipboardSettings(Landroid/content/Context;Z)V

    .line 62
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCatcherClipboardEnable(Landroid/content/Context;Z)V

    .line 64
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, "taplus_clipboard"

    invoke-static {v0, v1}, Lcom/miui/contentextension/clipboard/ClipboardReceiver;->startSelf(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onRefusePrivacyChange()V
    .registers 3

    .line 44
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setTaplusEnableStatus(Landroid/content/Context;Z)V

    .line 45
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setCtaOpen(Landroid/content/Context;Z)V

    .line 46
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setDouyinPrivacyEnable(Landroid/content/Context;Z)V

    .line 47
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->setClipboardSettings(Landroid/content/Context;Z)V

    .line 48
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCatcherClipboardEnable(Landroid/content/Context;Z)V

    return-void
.end method
