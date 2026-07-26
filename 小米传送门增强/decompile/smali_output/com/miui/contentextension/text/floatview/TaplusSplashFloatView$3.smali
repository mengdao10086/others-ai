.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaplusSplashFloatView.java"


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

    .line 383
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$3;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 386
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$3;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmIsClipboardView(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 387
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$3;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mshowClipboardFloatView(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    goto :goto_13

    .line 389
    :cond_e
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$3;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$mshowRecognizeFloatView(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V

    :goto_13
    return-void
.end method
