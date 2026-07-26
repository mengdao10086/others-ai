.class Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RuntimePermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeKeyEventBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;


# direct methods
.method private constructor <init>(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;-><init>(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 143
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 144
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 146
    const-string p2, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_3e

    const-string p2, "fs_gesture"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    goto :goto_3e

    .line 151
    :cond_28
    const-string p2, "recentapps"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 152
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;

    invoke-static {p1}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->-$$Nest$fgetmIsTrackQuit(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 153
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;

    invoke-static {p1, v0}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->-$$Nest$fputmIsTrackQuit(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;Z)V

    goto :goto_4e

    .line 147
    :cond_3e
    :goto_3e
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->clearResult()V

    .line 148
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;

    invoke-static {p1}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->-$$Nest$fgetmIsTrackQuit(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 149
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;

    invoke-static {p1, v0}, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->-$$Nest$fputmIsTrackQuit(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;Z)V

    :cond_4e
    :goto_4e
    return-void
.end method
