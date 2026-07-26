.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaplusMainFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;)V
    .registers 2

    .line 560
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.TaplusMainFloatView"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mMainView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    const-string p1, "main floatview, cancel task from hideMainFloatView"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$6;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    invoke-virtual {p1}, Lcom/miui/contentextension/services/TextContentExtensionService;->cancelTask()V

    return-void
.end method
