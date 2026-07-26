.class public Lcom/miui/contentextension/setting/activity/PrivacyPolicyActivity;
.super Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;
.source "PrivacyPolicyActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragment()Lcom/miui/contentextension/setting/fragment/SettingsBaseFragment;
    .registers 2

    .line 23
    new-instance v0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-direct {v0}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 17
    invoke-super {p0, p1}, Lcom/miui/contentextension/setting/activity/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/contentextension/App;->onActivityCreated(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 28
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 29
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/contentextension/App;->onActivityDestroy(Landroid/app/Activity;)V

    return-void
.end method
