.class Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$6;
.super Ljava/lang/Object;
.source "MainSettingsFragment.java"

# interfaces
.implements Lcom/miui/contentextension/utils/Utils$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->showPrivacyUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)V
    .registers 2

    .line 306
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$6;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgree()V
    .registers 3

    .line 317
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setCtaOpen(Landroid/content/Context;Z)V

    .line 318
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setDouyinPrivacyEnable(Landroid/content/Context;Z)V

    .line 319
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$6;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setTaplusEnable(Z)V

    .line 320
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$6;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setClipboardEnable(Z)V

    return-void
.end method

.method public onRefusePrivacyChange()V
    .registers 3

    .line 309
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setCtaOpen(Landroid/content/Context;Z)V

    .line 310
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/CtaAndPrivacyUpdateUtil;->setDouyinPrivacyEnable(Landroid/content/Context;Z)V

    .line 311
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$6;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setTaplusEnable(Z)V

    .line 312
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$6;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->setClipboardEnable(Z)V

    return-void
.end method
