.class Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GuidePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/preference/GuidePreference$1;->onScroll(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/contentextension/setting/preference/GuidePreference$1;

.field final synthetic val$copyVisibility:Z

.field final synthetic val$leftToCenterTranslationX:[F

.field final synthetic val$rightToCenterTranslationX:[F

.field final synthetic val$scrollRight:Z


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/preference/GuidePreference$1;ZZ[F[F)V
    .registers 6

    .line 116
    iput-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->this$1:Lcom/miui/contentextension/setting/preference/GuidePreference$1;

    iput-boolean p2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->val$copyVisibility:Z

    iput-boolean p3, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->val$scrollRight:Z

    iput-object p4, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->val$leftToCenterTranslationX:[F

    iput-object p5, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->val$rightToCenterTranslationX:[F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .registers 5

    .line 119
    invoke-super {p0, p1, p2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 120
    iget-boolean p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->val$copyVisibility:Z

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_21

    .line 121
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->this$1:Lcom/miui/contentextension/setting/preference/GuidePreference$1;

    iget-object p1, p1, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mCopyFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->this$1:Lcom/miui/contentextension/setting/preference/GuidePreference$1;

    iget-object p1, p1, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mCopyFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 123
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->this$1:Lcom/miui/contentextension/setting/preference/GuidePreference$1;

    iget-object p1, p1, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mPressAnimationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_36

    .line 125
    :cond_21
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->this$1:Lcom/miui/contentextension/setting/preference/GuidePreference$1;

    iget-object p1, p1, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mPressAnimationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->this$1:Lcom/miui/contentextension/setting/preference/GuidePreference$1;

    iget-object p1, p1, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mPressAnimationLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 127
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->this$1:Lcom/miui/contentextension/setting/preference/GuidePreference$1;

    iget-object p1, p1, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mCopyFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 129
    :goto_36
    iget-boolean p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->val$copyVisibility:Z

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->this$1:Lcom/miui/contentextension/setting/preference/GuidePreference$1;

    iget-object p1, p1, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mPressAnimationLayout:Landroid/widget/FrameLayout;

    goto :goto_43

    :cond_3f
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->this$1:Lcom/miui/contentextension/setting/preference/GuidePreference$1;

    iget-object p1, p1, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mCopyFrameLayout:Landroid/widget/FrameLayout;

    .line 130
    :goto_43
    iget-boolean p2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->val$scrollRight:Z

    if-eqz p2, :cond_4a

    iget-object p2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->val$leftToCenterTranslationX:[F

    goto :goto_4c

    :cond_4a
    iget-object p2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;->val$rightToCenterTranslationX:[F

    .line 129
    :goto_4c
    const-string v0, "translationX"

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
