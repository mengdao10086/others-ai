.class Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;
.super Landroid/os/CountDownTimer;
.source "PrivacyPolicyFragment.java"


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

.field final synthetic val$btn:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$QJjE0C64affqqUtiZ9gaBO-VAz4(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;JLandroid/widget/Button;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->lambda$onTick$0(JLandroid/widget/Button;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;JJLandroid/widget/Button;)V
    .registers 7

    .line 176
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    iput-object p6, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->val$btn:Landroid/widget/Button;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method private synthetic lambda$onTick$0(JLandroid/widget/Button;)V
    .registers 6

    const-wide/16 v0, 0x3e8

    .line 182
    div-long/2addr p1, v0

    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 183
    iget-object p2, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f100212

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object p2, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0e0016

    invoke-virtual {p2, v1, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 193
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->val$btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100211

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->val$btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->val$btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->val$btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 199
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->val$btn:Landroid/widget/Button;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/Button;->sendAccessibilityEvent(I)V

    :cond_34
    return-void
.end method

.method public onTick(J)V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 181
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;->val$btn:Landroid/widget/Button;

    new-instance v1, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4$$ExternalSyntheticLambda0;-><init>(Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$4;JLandroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method
