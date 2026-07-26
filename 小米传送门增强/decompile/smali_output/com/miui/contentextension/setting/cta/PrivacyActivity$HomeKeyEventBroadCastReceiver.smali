.class Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/cta/PrivacyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeKeyEventBroadCastReceiver"
.end annotation


# instance fields
.field private final activity:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final selectedType:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;


# direct methods
.method public constructor <init>(Lcom/miui/contentextension/setting/cta/PrivacyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 102
    iput-object p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->selectedType:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->packageName:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->activity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 111
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 112
    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 114
    const-string p2, "homekey"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_49

    const-string p2, "fs_gesture"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    goto :goto_49

    .line 120
    :cond_28
    const-string p2, "recentapps"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 121
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    invoke-static {p1}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->-$$Nest$fgetmIsTrackQuit(Lcom/miui/contentextension/setting/cta/PrivacyActivity;)Z

    move-result p1

    if-nez p1, :cond_64

    .line 122
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->selectedType:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->activity:Ljava/lang/String;

    const-string v2, "other"

    invoke-static {v2, p1, p2, v1}, Lcom/miui/contentextension/analy/CtaAnaly;->trackQuit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    invoke-static {p1, v0}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->-$$Nest$fputmIsTrackQuit(Lcom/miui/contentextension/setting/cta/PrivacyActivity;Z)V

    goto :goto_64

    .line 115
    :cond_49
    :goto_49
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->clearResult()V

    .line 116
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    invoke-static {p1}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->-$$Nest$fgetmIsTrackQuit(Lcom/miui/contentextension/setting/cta/PrivacyActivity;)Z

    move-result p1

    if-nez p1, :cond_64

    .line 117
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->selectedType:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->activity:Ljava/lang/String;

    const-string v2, "home"

    invoke-static {v2, p1, p2, v1}, Lcom/miui/contentextension/analy/CtaAnaly;->trackQuit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyActivity$HomeKeyEventBroadCastReceiver;->this$0:Lcom/miui/contentextension/setting/cta/PrivacyActivity;

    invoke-static {p1, v0}, Lcom/miui/contentextension/setting/cta/PrivacyActivity;->-$$Nest$fputmIsTrackQuit(Lcom/miui/contentextension/setting/cta/PrivacyActivity;Z)V

    :cond_64
    :goto_64
    return-void
.end method
