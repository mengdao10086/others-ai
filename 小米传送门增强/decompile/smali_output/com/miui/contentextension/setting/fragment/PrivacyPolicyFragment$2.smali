.class Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$2;
.super Ljava/lang/Object;
.source "PrivacyPolicyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$2;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 164
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$2;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->-$$Nest$fgetmCountdownTimer(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 165
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$2;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->-$$Nest$fgetmCountdownTimer(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 166
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$2;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->-$$Nest$fputmCountdownTimer(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;Landroid/os/CountDownTimer;)V

    :cond_17
    return-void
.end method
