.class Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorTransitionTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/ColorTransitionTextView;->startColorTransition(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

.field final synthetic val$toTransited:Z


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/view/ColorTransitionTextView;Z)V
    .registers 3

    .line 96
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    iput-boolean p2, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->val$toTransited:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 99
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->val$toTransited:Z

    if-eqz p1, :cond_e

    .line 100
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    # getter for: Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mTransitedColor:I
    invoke-static {p1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->access$100(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_17

    .line 102
    :cond_e
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ColorTransitionTextView$2;->this$0:Lmiuix/appcompat/internal/view/ColorTransitionTextView;

    # getter for: Lmiuix/appcompat/internal/view/ColorTransitionTextView;->mNormalColor:I
    invoke-static {p1}, Lmiuix/appcompat/internal/view/ColorTransitionTextView;->access$200(Lmiuix/appcompat/internal/view/ColorTransitionTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_17
    return-void
.end method
