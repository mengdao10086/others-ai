.class Lcom/miui/contentextension/App$3;
.super Landroid/telephony/PhoneStateListener;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/App;->registerGlobalReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/App;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/App;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/miui/contentextension/App$3;->this$0:Lcom/miui/contentextension/App;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 112
    iget-object p1, p0, Lcom/miui/contentextension/App$3;->this$0:Lcom/miui/contentextension/App;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/DeviceUtils;->updateNetworkClass(Landroid/content/Context;I)V

    :cond_c
    return-void
.end method
