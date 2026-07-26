.class Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;
.super Landroid/os/AsyncTask;
.source "PrivacyPolicyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivacyRevokeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWeakContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final policeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)V
    .registers 4

    .line 216
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 217
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;->mWeakContextReference:Ljava/lang/ref/WeakReference;

    .line 218
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;->policeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 4

    .line 223
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;->mWeakContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    if-eqz p1, :cond_28

    .line 225
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_28

    .line 228
    :cond_11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;->policeName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/DeviceUtils;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/miui/privacypolicy/PrivacyManager;->privacyRevoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_28
    :goto_28
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 210
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revoke result code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.PrivacyRevokeTask"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;->mWeakContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    if-nez v0, :cond_21

    return-void

    .line 238
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6e

    .line 239
    const-string p1, "taplus"

    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;->policeName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 240
    invoke-static {v0}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->-$$Nest$fgetmRevokePrivacyPolicyCategory(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 241
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 242
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/PreferenceUtil;->clearData(Landroid/content/Context;)V

    .line 243
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 244
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->clearResult()V

    .line 245
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v1, 0x66

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 246
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_75

    .line 250
    :cond_6e
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->-$$Nest$mshowRevokeFailedDialog(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;Landroid/content/Context;)V

    :cond_75
    :goto_75
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 210
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$PrivacyRevokeTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
