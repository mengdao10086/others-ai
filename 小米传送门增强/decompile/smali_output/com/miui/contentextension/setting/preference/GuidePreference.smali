.class public Lcom/miui/contentextension/setting/preference/GuidePreference;
.super Landroidx/preference/Preference;
.source "GuidePreference.java"

# interfaces
.implements Lmiuix/preference/PreferenceStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/preference/GuidePreference$OnGuidePreferenceClickListener;
    }
.end annotation


# instance fields
.field private final mClicks:[J

.field private final mContext:Landroid/content/Context;

.field private final mDuration:J

.field public mIsCopyViewVisible:Z

.field private mLottieViewCopy:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLottieViewDoubleFinger:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLottieViewOneFinger:Lcom/airbnb/lottie/LottieAnimationView;

.field private mModeDoubleFingerStr:Ljava/lang/String;

.field private mOnGuidePreferenceClickListener:Lcom/miui/contentextension/setting/preference/GuidePreference$OnGuidePreferenceClickListener;

.field private mSummary:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClicks(Lcom/miui/contentextension/setting/preference/GuidePreference;)[J
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mClicks:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/miui/contentextension/setting/preference/GuidePreference;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnGuidePreferenceClickListener(Lcom/miui/contentextension/setting/preference/GuidePreference;)Lcom/miui/contentextension/setting/preference/GuidePreference$OnGuidePreferenceClickListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mOnGuidePreferenceClickListener:Lcom/miui/contentextension/setting/preference/GuidePreference$OnGuidePreferenceClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 76
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mIsCopyViewVisible:Z

    const-wide/16 v0, 0xbb8

    .line 70
    iput-wide v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mDuration:J

    const/16 p2, 0xf

    .line 71
    new-array p2, p2, [J

    iput-object p2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mClicks:[J

    .line 77
    iput-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d0039

    .line 78
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private getCopyAnimationFile()Ljava/lang/String;
    .registers 2

    .line 188
    invoke-static {}, Lcom/miui/contentextension/utils/DarkModeUtil;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    const-string v0, "copy_phone_dark.json"

    return-object v0

    .line 191
    :cond_9
    const-string v0, "copy_phone_light.json"

    return-object v0
.end method

.method private getDoubleFingerAnimationFile()Ljava/lang/String;
    .registers 2

    .line 204
    invoke-static {}, Lcom/miui/contentextension/utils/DarkModeUtil;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 205
    const-string v0, "double_finger_phone_dark.json"

    return-object v0

    .line 207
    :cond_9
    const-string v0, "double_finger_phone_light.json"

    return-object v0
.end method

.method private getOneFingerAnimationFile()Ljava/lang/String;
    .registers 2

    .line 196
    invoke-static {}, Lcom/miui/contentextension/utils/DarkModeUtil;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 197
    const-string v0, "one_finger_phone_dark.json"

    return-object v0

    .line 199
    :cond_9
    const-string v0, "one_finger_phone_light.json"

    return-object v0
.end method

.method private initView(Landroidx/preference/PreferenceViewHolder;)V
    .registers 11

    .line 88
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a0209

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/view/ScrollLinearlayout;

    const v2, 0x7f0a00ca

    .line 90
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    const v2, 0x7f0a0116

    .line 91
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    const v2, 0x7f0a00c9

    .line 92
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewCopy:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0a0277

    .line 93
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewOneFinger:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0a0276

    .line 94
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewDoubleFinger:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0a0142

    .line 95
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    const v2, 0x7f0a0143

    .line 96
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    const v2, 0x7f0a00f6

    .line 97
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportClipboard(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 99
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    new-instance v2, Lcom/miui/contentextension/setting/preference/GuidePreference$1;

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/contentextension/setting/preference/GuidePreference$1;-><init>(Lcom/miui/contentextension/setting/preference/GuidePreference;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Lcom/miui/contentextension/view/ScrollLinearlayout;->setOnScrollListener(Lcom/miui/contentextension/view/ScrollLinearlayout$OnScrollListener;)V

    goto :goto_7d

    :cond_75
    const/16 v0, 0x8

    .line 139
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 140
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_7d
    const v0, 0x7f0a029a

    .line 142
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    iget-object v2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/miui/contentextension/setting/preference/GuidePreference;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 144
    new-instance v2, Lcom/miui/contentextension/setting/preference/GuidePreference$2;

    invoke-direct {v2, p0}, Lcom/miui/contentextension/setting/preference/GuidePreference$2;-><init>(Lcom/miui/contentextension/setting/preference/GuidePreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_96
    const v0, 0x7f0a029e

    .line 166
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mSummary:Landroid/widget/TextView;

    .line 168
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100244

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mModeDoubleFingerStr:Ljava/lang/String;

    .line 169
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewCopy:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->getCopyAnimationFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->setCompositionListener(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewDoubleFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->getDoubleFingerAnimationFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->setCompositionListener(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewOneFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->getOneFingerAnimationFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->setCompositionListener(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getCurrentPressItem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->switchAnimation(Ljava/lang/String;Z)V

    .line 173
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->initCopyAnimation()V

    return-void
.end method

.method private setCompositionListener(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .registers 4

    .line 258
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p2

    .line 259
    new-instance v0, Lcom/miui/contentextension/setting/preference/GuidePreference$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/contentextension/setting/preference/GuidePreference$3;-><init>(Lcom/miui/contentextension/setting/preference/GuidePreference;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    return-void
.end method


# virtual methods
.method public enabledCardStyle()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public initCopyAnimation()V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportClipboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 213
    :cond_9
    iget-object v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewCopy:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mIsCopyViewVisible:Z

    .line 216
    iget-object v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewCopy:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 217
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->updateSummary()V

    return-void
.end method

.method public isScreenReaderActive(Landroid/content/Context;)Z
    .registers 3

    .line 182
    const-string v0, "accessibility"

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_18

    .line 184
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method public isTouchAnimationEnable()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 2

    .line 83
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->initView(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setOnGuidePreferenceClickListener(Lcom/miui/contentextension/setting/preference/GuidePreference$OnGuidePreferenceClickListener;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mOnGuidePreferenceClickListener:Lcom/miui/contentextension/setting/preference/GuidePreference$OnGuidePreferenceClickListener;

    return-void
.end method

.method public switchAnimation(Ljava/lang/String;Z)V
    .registers 5

    .line 233
    iget-object v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mModeDoubleFingerStr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 234
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewOneFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewOneFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 236
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewOneFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 238
    :cond_1d
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewDoubleFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewDoubleFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 240
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->updateSummary()V

    goto :goto_4b

    .line 243
    :cond_2b
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewDoubleFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewDoubleFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 245
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewDoubleFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 247
    :cond_3d
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewOneFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mLottieViewOneFinger:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 249
    invoke-virtual {p0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->updateSummary()V

    const/4 v1, 0x1

    :goto_4b
    if-eqz p2, :cond_50

    .line 253
    invoke-static {v1}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackSettingOperationMode(Z)V

    :cond_50
    return-void
.end method

.method public updateSummary()V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mSummary:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 222
    :cond_5
    iget-boolean v1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mIsCopyViewVisible:Z

    if-eqz v1, :cond_10

    const v1, 0x7f1001fa

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_24

    .line 225
    :cond_10
    iget-object v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCurrentInDoubleMode(Landroid/content/Context;)Z

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    const v0, 0x7f10024b

    goto :goto_21

    :cond_1e
    const v0, 0x7f10024e

    :goto_21
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_24
    return-void
.end method
