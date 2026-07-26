.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaplusSplashFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;)V
    .registers 2

    .line 929
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 932
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;

    iget-boolean p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;->val$isCancelTask:Z

    if-eqz p1, :cond_20

    .line 934
    const-string p1, "Taplus.SplashFloatView"

    const-string v0, "splash floatview, cancel task from hideSplashFloatView"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$12;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->cancelTask()V

    :cond_20
    return-void
.end method
