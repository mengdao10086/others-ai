.class Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/activity/MainSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeKeyEventBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;Lcom/miui/contentextension/setting/activity/MainSettingsActivity-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;-><init>(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 127
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 128
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 130
    const-string p2, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const-class v1, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    const-string v2, "other"

    if-nez p2, :cond_4f

    const-string p2, "fs_gesture"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    goto :goto_4f

    .line 137
    :cond_2c
    const-string p2, "recentapps"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 138
    iget-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    invoke-static {p1}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->-$$Nest$fgetmIsTrackQuit(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;)Z

    move-result p1

    if-nez p1, :cond_6e

    .line 139
    iget-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-static {v2, v2, p1, p2}, Lcom/miui/contentextension/analy/CtaAnaly;->trackQuit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    invoke-static {p1, v0}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->-$$Nest$fputmIsTrackQuit(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;Z)V

    goto :goto_6e

    .line 131
    :cond_4f
    :goto_4f
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->clearResult()V

    .line 132
    iget-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    invoke-static {p1}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->-$$Nest$fgetmIsTrackQuit(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;)Z

    move-result p1

    if-nez p1, :cond_6e

    .line 133
    iget-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    .line 134
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 133
    const-string v1, "home"

    invoke-static {v1, v2, p1, p2}, Lcom/miui/contentextension/analy/CtaAnaly;->trackQuit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/miui/contentextension/setting/activity/MainSettingsActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/activity/MainSettingsActivity;

    invoke-static {p1, v0}, Lcom/miui/contentextension/setting/activity/MainSettingsActivity;->-$$Nest$fputmIsTrackQuit(Lcom/miui/contentextension/setting/activity/MainSettingsActivity;Z)V

    :cond_6e
    :goto_6e
    return-void
.end method
