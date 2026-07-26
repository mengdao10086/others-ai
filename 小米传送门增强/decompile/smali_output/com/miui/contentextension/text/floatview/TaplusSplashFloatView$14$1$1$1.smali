.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaplusSplashFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;)V
    .registers 2

    .line 1026
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$1;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1029
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1$1;->this$3:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1$1;->this$2:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14$1;->this$1:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$14;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmLoadingCard(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
