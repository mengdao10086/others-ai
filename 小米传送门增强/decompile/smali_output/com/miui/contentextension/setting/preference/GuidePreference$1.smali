.class Lcom/miui/contentextension/setting/preference/GuidePreference$1;
.super Ljava/lang/Object;
.source "GuidePreference.java"

# interfaces
.implements Lcom/miui/contentextension/view/ScrollLinearlayout$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/preference/GuidePreference;->initView(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

.field final synthetic val$leftDotImage:Landroid/widget/ImageView;

.field final synthetic val$mCopyFrameLayout:Landroid/widget/FrameLayout;

.field final synthetic val$mPressAnimationLayout:Landroid/widget/FrameLayout;

.field final synthetic val$rightDotImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/preference/GuidePreference;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    iput-object p2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mCopyFrameLayout:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mPressAnimationLayout:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$leftDotImage:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$rightDotImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Z)V
    .registers 12

    const/4 v0, 0x2

    .line 103
    iget-object v1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mCopyFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_e

    :cond_d
    move v1, v2

    .line 104
    :goto_e
    iget-object v4, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    xor-int/lit8 v5, v1, 0x1

    iput-boolean v5, v4, Lcom/miui/contentextension/setting/preference/GuidePreference;->mIsCopyViewVisible:Z

    .line 105
    invoke-virtual {v4}, Lcom/miui/contentextension/setting/preference/GuidePreference;->updateSummary()V

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scrollRight\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "--copy view visibility:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Taplus.GuidePreference"

    invoke-static {v5, v4}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenWidth()I

    move-result v4

    .line 109
    new-array v5, v0, [F

    const/4 v6, 0x0

    aput v6, v5, v2

    int-to-float v7, v4

    aput v7, v5, v3

    neg-int v4, v4

    int-to-float v4, v4

    .line 110
    new-array v8, v0, [F

    aput v4, v8, v2

    aput v6, v8, v3

    .line 111
    new-array v9, v0, [F

    aput v6, v9, v2

    aput v4, v9, v3

    .line 112
    new-array v0, v0, [F

    aput v7, v0, v2

    aput v6, v0, v3

    if-eqz v1, :cond_5a

    .line 114
    iget-object v2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mCopyFrameLayout:Landroid/widget/FrameLayout;

    goto :goto_5c

    :cond_5a
    iget-object v2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$mPressAnimationLayout:Landroid/widget/FrameLayout;

    :goto_5c
    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move-object v5, v9

    :goto_60
    const-string v3, "translationX"

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 116
    new-instance v3, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;

    move-object v4, v3

    move-object v5, p0

    move v6, v1

    move v7, p1

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/miui/contentextension/setting/preference/GuidePreference$1$1;-><init>(Lcom/miui/contentextension/setting/preference/GuidePreference$1;ZZ[F[F)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v3, 0xc8

    .line 133
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 134
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$leftDotImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f080442

    const v3, 0x7f080443

    if-eqz v1, :cond_8e

    move v4, v3

    goto :goto_8f

    :cond_8e
    move v4, v2

    :goto_8f
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->val$rightDotImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$1;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v2, v3

    :goto_a2
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
