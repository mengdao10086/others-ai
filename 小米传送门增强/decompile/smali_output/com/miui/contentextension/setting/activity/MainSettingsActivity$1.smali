.class Lcom/miui/contentextension/setting/activity/MainSettingsActivity$1;
.super Ljava/lang/Object;
.source "MainSettingsActivity.java"

# interfaces
.implements Lcom/miui/contentextension/view/CtaDialog$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$1;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreeAndUseClick()V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$1;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->-$$Nest$monCtaClick(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;Z)V

    return-void
.end method

.method public onCancelClick()V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$1;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->-$$Nest$monCtaClick(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;Z)V

    return-void
.end method

.method public onDisagreeAndUseClick()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$1;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->-$$Nest$monCtaClick(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;Z)V

    return-void
.end method

.method public onDismiss()V
    .registers 1

    .line 0
    return-void
.end method
