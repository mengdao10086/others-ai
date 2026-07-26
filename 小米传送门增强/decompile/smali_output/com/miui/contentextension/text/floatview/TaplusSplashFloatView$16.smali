.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->generateDeviceCard(Lcom/miui/contentextension/clipboard/model/DeviceInfo;Landroid/widget/LinearLayout;)Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

.field final synthetic val$info:Lcom/miui/contentextension/clipboard/model/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1148
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->val$info:Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1151
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->val$info:Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmNerType(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->transferType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/contentextension/analy/ClipboardAnaly;->trackDeviceCardClick(Lcom/miui/contentextension/clipboard/model/DeviceInfo;Ljava/lang/String;)V

    .line 1152
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->val$info:Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    invoke-virtual {p1}, Lcom/miui/contentextension/clipboard/model/DeviceInfo;->getDeviceSource()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    .line 1153
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->val$info:Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    invoke-static {p1, v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$msendBroadcastByMiuiPlus(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V

    goto :goto_2f

    .line 1154
    :cond_20
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmMiContinuityService(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/clipboard/MiContinuityService;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 1155
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->val$info:Lcom/miui/contentextension/clipboard/model/DeviceInfo;

    invoke-static {p1, v1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mcreateContinuityChannel(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/clipboard/model/DeviceInfo;)V

    .line 1157
    :cond_2f
    :goto_2f
    const-string p1, "Taplus.SplashFloatView"

    const-string v1, "hideClipboardFloatView by click device card"

    invoke-static {p1, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$16;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V

    return-void
.end method
