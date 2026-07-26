.class Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$2;
.super Ljava/lang/Object;
.source "TaplusSegmentAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->selectedWithAnimator(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

.field final synthetic val$drawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;Landroid/graphics/drawable/GradientDrawable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$2;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    iput-object p2, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$2;->val$drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$2;->val$drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method
