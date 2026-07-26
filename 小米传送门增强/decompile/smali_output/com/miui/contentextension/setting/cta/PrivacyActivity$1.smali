.class Lcom/miui/contentextension/setting/cta/PrivacyActivity$1;
.super Ljava/lang/Object;
.source "PrivacyActivity.java"

# interfaces
.implements Lcom/miui/contentextension/view/CtaDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/cta/PrivacyActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/cta/PrivacyActivity;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$1;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreeAndUseClick()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$1;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->-$$Nest$monCtaClick(Lcom/miui/contentextension/setting/cta/PrivacyActivity;Z)V

    return-void
.end method

.method public onCancelClick()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$1;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->-$$Nest$monCtaClick(Lcom/miui/contentextension/setting/cta/PrivacyActivity;Z)V

    return-void
.end method

.method public onDisagreeAndUseClick()V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$1;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->-$$Nest$monCtaClick(Lcom/miui/contentextension/setting/cta/PrivacyActivity;Z)V

    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$1;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
