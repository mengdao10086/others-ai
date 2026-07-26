.class Lcom/miui/contentextension/text/StretchableFrameLayout$1;
.super Ljava/lang/Object;
.source "StretchableFrameLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 100
    iput-object p1, p0, Lcom/miui/contentextension/text/StretchableFrameLayout$1;->this$0:Lcom/miui/contentextension/text/StretchableFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 103
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 104
    iget-object v0, p0, Lcom/miui/contentextension/text/StretchableFrameLayout$1;->this$0:Lcom/miui/contentextension/text/StretchableFrameLayout;

    invoke-static {v0}, Lcom/miui/contentextension/text/StretchableFrameLayout;->-$$Nest$fgetmStretchDistance(Lcom/miui/contentextension/text/StretchableFrameLayout;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/miui/contentextension/text/StretchableFrameLayout;->setStretchRatio(FF)V

    return-void
.end method
