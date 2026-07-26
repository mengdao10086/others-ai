.class Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$3;
.super Ljava/lang/Object;
.source "PrivacyPolicyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

.field final synthetic val$policyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$3;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    iput-object p2, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$3;->val$policyName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 152
    iget-object p2, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$3;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_28

    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 154
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$3;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->-$$Nest$fgetmContext(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 155
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$3;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->-$$Nest$fgetmContext(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->-$$Nest$mshowNoNetDialog(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;Landroid/content/Context;)V

    goto :goto_28

    .line 157
    :cond_21
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$3;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    iget-object p2, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$3;->val$policyName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->-$$Nest$mhandleRevoke(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method
