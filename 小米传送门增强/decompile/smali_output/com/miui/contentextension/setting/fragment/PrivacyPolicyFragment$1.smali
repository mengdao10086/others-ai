.class Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$1;
.super Ljava/lang/Object;
.source "PrivacyPolicyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;->showNoNetDialog(Landroid/content/Context;)V
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

    .line 131
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$1;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 134
    iget-object p2, p0, Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment$1;->this$0:Lcom/miui/contentextension/setting/fragment/PrivacyPolicyFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 135
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_b
    return-void
.end method
