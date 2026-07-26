.class Lcom/miui/contentextension/text/StretchableFrameLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StretchableFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/StretchableFrameLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/StretchableFrameLayout;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/StretchableFrameLayout;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout$2;->this$0:Lcom/miui/contentextension/text/StretchableFrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 115
    iget-object p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout$2;->this$0:Lcom/miui/contentextension/text/StretchableFrameLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/contentextension/text/StretchableFrameLayout;->-$$Nest$fputmCurrentState(Lcom/miui/contentextension/text/StretchableFrameLayout;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 110
    iget-object p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout$2;->this$0:Lcom/miui/contentextension/text/StretchableFrameLayout;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/miui/contentextension/text/StretchableFrameLayout;->-$$Nest$fputmCurrentState(Lcom/miui/contentextension/text/StretchableFrameLayout;I)V

    return-void
.end method
