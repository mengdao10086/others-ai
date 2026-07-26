.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$1;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->createMiContinuityService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 209
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    check-cast p2, Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;

    invoke-virtual {p2}, Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;->getService()Lcom/miui/contentextension/clipboard/MiContinuityService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fputmMiContinuityService(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/clipboard/MiContinuityService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 214
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$1;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fputmMiContinuityService(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/clipboard/MiContinuityService;)V

    return-void
.end method
