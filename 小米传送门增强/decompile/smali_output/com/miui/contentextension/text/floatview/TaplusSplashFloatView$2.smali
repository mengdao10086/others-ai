.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$2;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initView()V
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

    .line 355
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$2;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 358
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$2;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/text/floatview/BaseFloatView;->isEventInFloatView(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$2;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-boolean p2, p1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mIsFinishing:Z

    if-nez p2, :cond_21

    .line 360
    const-string p2, "touch"

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->trackQuitByDefault(Ljava/lang/String;)V

    .line 361
    const-string p1, "Taplus.SplashFloatView"

    const-string p2, "hideSplashFloatView by touch main view"

    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$2;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V

    return p2

    :cond_21
    const/4 p1, 0x0

    return p1
.end method
