.class public Lmiuix/popupwidget/internal/widget/ArrowPopupView;
.super Landroid/widget/FrameLayout;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;
    }
.end annotation


# instance fields
.field private mAlphaAnimationEnabled:Z

.field private mAnchor:Landroid/view/View;

.field private mAnchorTrackListener:Landroid/view/View$OnLayoutChangeListener;

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrow:Landroidx/appcompat/widget/AppCompatImageView;

.field private mArrowBackgroundPaintColor:I

.field private mArrowBottom:Landroid/graphics/drawable/Drawable;

.field private mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowBottomRight:Landroid/graphics/drawable/Drawable;

.field private final mArrowLayoutTask:Ljava/lang/Runnable;

.field private mArrowLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowMode:I

.field private mArrowRight:Landroid/graphics/drawable/Drawable;

.field private mArrowSpaceLeft:I

.field private mArrowSpaceTop:I

.field private mArrowTop:Landroid/graphics/drawable/Drawable;

.field private mArrowTopLeft:Landroid/graphics/drawable/Drawable;

.field private mArrowTopRight:Landroid/graphics/drawable/Drawable;

.field private mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

.field private mAutoDismiss:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundLeft:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRight:Landroid/graphics/drawable/Drawable;

.field private mContentFrame:Landroid/widget/FrameLayout;

.field private mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

.field private mElevation:I

.field private mEnableTrackAnchor:Z

.field private mHasFirstLayout:Z

.field private mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

.field private mIsDismissing:Z

.field private mMinBorder:I

.field private mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

.field private mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

.field private mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

.field private mRtlMode:I

.field private mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShowingAnimation:Z

.field private mSpaceLeft:I

.field private mSpaceTop:I

.field private mTitleBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTranslationValue:I


# direct methods
.method public static synthetic $r8$lambda$6m0ixo5nxi9Ennq6tSQi1u9vbJc(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 249
    sget v0, Lmiuix/popupwidget/R$attr;->arrowPopupViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 253
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    const/4 v1, 0x2

    .line 160
    iput v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    .line 189
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$1;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 208
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$2;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHideAnimatorListener:Landroid/view/animation/Animation$AnimationListener;

    .line 226
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mEnableTrackAnchor:Z

    .line 227
    iput-boolean v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHasFirstLayout:Z

    .line 228
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$$ExternalSyntheticLambda0;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLayoutTask:Ljava/lang/Runnable;

    .line 230
    new-instance v2, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;

    invoke-direct {v2, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchorTrackListener:Landroid/view/View$OnLayoutChangeListener;

    .line 241
    iput v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 242
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAlphaAnimationEnabled:Z

    .line 254
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 256
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    .line 258
    sget-object v0, Lmiuix/popupwidget/R$styleable;->ArrowPopupView:[I

    sget v1, Lmiuix/popupwidget/R$style;->Widget_ArrowPopupView_DayNight:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/popupwidget/R$color;->miuix_appcompat_arrow_popup_background_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 262
    sget v0, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_arrowBackgroundColor:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBackgroundPaintColor:I

    .line 263
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_contentBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 264
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_backgroundLeft:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 265
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_backgroundRight:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 266
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_titleBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    .line 267
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    .line 268
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topArrowWithTitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    .line 269
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    .line 270
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_rightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 271
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_leftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 272
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topLeftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    .line 273
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_topRightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    .line 274
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomRightArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    .line 275
    sget p3, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_bottomLeftArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 276
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_elevation:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 277
    sget v0, Lmiuix/popupwidget/R$styleable;->ArrowPopupView_android_elevation:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mElevation:I

    .line 279
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_window_min_border:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mMinBorder:I

    return-void
.end method

.method static synthetic access$002(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .registers 2

    .line 59
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method static synthetic access$100(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mShowingAnimation:Z

    return p0
.end method

.method static synthetic access$1400(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)I
    .registers 1

    .line 59
    iget p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    return p0
.end method

.method static synthetic access$1402(Lmiuix/popupwidget/internal/widget/ArrowPopupView;I)I
    .registers 2

    .line 59
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    return p1
.end method

.method static synthetic access$1500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;
    .registers 1

    .line 59
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->animateShowing()V

    return-void
.end method

.method static synthetic access$302(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Z)Z
    .registers 2

    .line 59
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Lmiuix/popupwidget/widget/ArrowPopupWindow;
    .registers 1

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHasFirstLayout:Z

    return p0
.end method

.method static synthetic access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Ljava/lang/Runnable;
    .registers 1

    .line 59
    iget-object p0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLayoutTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private adjustArrowMode()V
    .registers 12

    const/4 v0, 0x2

    .line 1185
    new-array v0, v0, [I

    .line 1186
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1188
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 1189
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    .line 1190
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 1191
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    .line 1192
    iget-object v5, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1193
    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1195
    new-instance v7, Landroid/util/SparseIntArray;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v8, 0x1

    .line 1196
    aget v9, v0, v8

    sub-int/2addr v9, v4

    const/16 v10, 0x10

    invoke-virtual {v7, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1197
    aget v8, v0, v8

    sub-int/2addr v2, v8

    sub-int/2addr v2, v5

    sub-int/2addr v2, v4

    const/16 v4, 0x8

    invoke-virtual {v7, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x0

    .line 1198
    aget v4, v0, v2

    sub-int/2addr v4, v3

    const/16 v5, 0x40

    invoke-virtual {v7, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1199
    aget v0, v0, v2

    sub-int/2addr v1, v0

    sub-int/2addr v1, v6

    sub-int/2addr v1, v3

    const/16 v0, 0x20

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, -0x80000000

    .line 1205
    :goto_56
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_78

    .line 1206
    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1207
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iget v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mMinBorder:I

    if-lt v3, v4, :cond_6a

    move v10, v1

    goto :goto_78

    .line 1210
    :cond_6a
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-le v3, v0, :cond_75

    .line 1212
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    move v10, v1

    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1215
    :cond_78
    :goto_78
    invoke-virtual {p0, v10}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setArrowMode(I)V

    return-void
.end method

.method private animateShowing()V
    .registers 14

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1112
    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isFeatureWholeAnim()Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 1113
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v4, :cond_11

    .line 1114
    invoke-virtual {v4}, Landroid/view/animation/AnimationSet;->cancel()V

    .line 1116
    :cond_11
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_18

    .line 1117
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1119
    :cond_18
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 1120
    new-instance v5, Lmiuix/popupwidget/internal/widget/ArrowPopupView$8;

    invoke-direct {v5, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$8;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    .line 1128
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 1129
    iget v6, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    if-eq v6, v3, :cond_49

    if-ne v6, v2, :cond_47

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    goto :goto_49

    :cond_47
    move v6, v1

    goto :goto_4a

    :cond_49
    :goto_49
    move v6, v3

    .line 1130
    :goto_4a
    iget v7, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v8, 0x10

    if-eq v7, v8, :cond_65

    const/16 v8, 0x20

    if-eq v7, v8, :cond_5f

    const/16 v8, 0x40

    if-eq v7, v8, :cond_59

    goto :goto_66

    :cond_59
    if-nez v6, :cond_5c

    neg-float v4, v4

    .line 1146
    :cond_5c
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_66

    :cond_5f
    if-eqz v6, :cond_62

    neg-float v4, v4

    .line 1139
    :cond_62
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_66

    :cond_65
    neg-float v4, v4

    .line 1150
    :goto_66
    iget-object v6, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    const/4 v7, 0x0

    new-array v8, v0, [F

    aput v7, v8, v1

    aput v4, v8, v3

    aput v7, v8, v2

    invoke-static {v6, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1151
    new-instance v8, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x4b0

    .line 1152
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1153
    iget-boolean v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    const/4 v11, -0x1

    const/16 v12, 0x8

    if-eqz v10, :cond_8d

    .line 1154
    invoke-virtual {v6, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_90

    .line 1156
    :cond_8d
    invoke-virtual {v6, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1158
    :goto_90
    new-instance v10, Lmiuix/popupwidget/internal/widget/ArrowPopupView$9;

    invoke-direct {v10, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$9;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1168
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    new-array v0, v0, [F

    aput v7, v0, v1

    aput v4, v0, v3

    aput v7, v0, v2

    invoke-static {v10, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1169
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1170
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1171
    iget-boolean v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    if-eqz v4, :cond_b9

    .line 1172
    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_bc

    .line 1174
    :cond_b9
    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1176
    :goto_bc
    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v6, v2, v1

    aput-object v0, v2, v3

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1177
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_cc
    return-void
.end method

.method private arrowHorizontalLayout(I)V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 747
    new-array v2, v1, [I

    .line 748
    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 749
    aget v4, v2, v3

    const/4 v5, 0x1

    .line 750
    aget v6, v2, v5

    .line 751
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 752
    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 753
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    .line 755
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    .line 756
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 757
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    .line 758
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 759
    iget v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    invoke-virtual {v0, v13}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowWidth(I)I

    move-result v13

    .line 760
    iget v14, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    invoke-virtual {v0, v14}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowHeight(I)I

    move-result v14

    .line 761
    div-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v6

    aget v16, v2, v5

    sub-int v15, v15, v16

    iput v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v15, v10, v15

    sub-int/2addr v8, v14

    .line 763
    div-int/2addr v8, v1

    add-int/2addr v6, v8

    sub-int v6, v6, v16

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    .line 764
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v8

    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v8, v3

    div-int/2addr v8, v1

    add-int/2addr v6, v8

    iput v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 766
    div-int/lit8 v3, v12, 0x2

    sub-int v6, v12, v3

    .line 769
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v8

    add-int v8, v8, p1

    iput v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 771
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isRightMode()Z

    move-result v8

    if-eqz v8, :cond_be

    .line 772
    iget v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    if-eq v8, v5, :cond_a6

    if-ne v8, v1, :cond_93

    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_93

    goto :goto_a6

    .line 777
    :cond_93
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int/2addr v4, v11

    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    .line 778
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v13

    const/4 v5, 0x0

    aget v2, v2, v5

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_fc

    .line 773
    :cond_a6
    :goto_a6
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v4, v7

    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    .line 774
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v13

    const/4 v5, 0x0

    aget v2, v2, v5

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 775
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    goto :goto_fc

    .line 781
    :cond_be
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isLeftMode()Z

    move-result v8

    if-eqz v8, :cond_fc

    .line 782
    iget v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    if-eq v8, v5, :cond_e9

    if-ne v8, v1, :cond_d1

    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_d1

    goto :goto_e9

    .line 787
    :cond_d1
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v4, v7

    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    .line 788
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v13

    const/4 v5, 0x0

    aget v2, v2, v5

    sub-int/2addr v4, v2

    add-int/2addr v1, v4

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 789
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    goto :goto_fc

    .line 783
    :cond_e9
    :goto_e9
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int/2addr v4, v11

    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    .line 784
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    sub-int/2addr v4, v13

    const/4 v7, 0x0

    aget v2, v2, v7

    sub-int/2addr v4, v2

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 793
    :cond_fc
    :goto_fc
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    if-lt v1, v3, :cond_109

    if-lt v15, v6, :cond_109

    sub-int/2addr v1, v3

    .line 795
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v2

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_119

    :cond_109
    if-ge v15, v6, :cond_113

    sub-int v1, v10, v12

    .line 798
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v2

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_119

    :cond_113
    if-ge v1, v3, :cond_119

    .line 801
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 803
    :cond_119
    :goto_119
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v1, v2

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    if-gez v1, :cond_126

    const/4 v2, 0x0

    .line 806
    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    goto :goto_12f

    :cond_126
    add-int v2, v1, v14

    if-le v2, v10, :cond_12f

    add-int/2addr v14, v1

    sub-int/2addr v14, v10

    sub-int/2addr v1, v14

    .line 808
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    .line 810
    :cond_12f
    :goto_12f
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    invoke-virtual {v1, v2}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->setArrowMode(I)V

    .line 811
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    invoke-virtual {v1, v2}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->setRtlMode(I)V

    .line 812
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    const/4 v3, 0x0

    .line 813
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 814
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v4, v11

    .line 815
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v5, v12

    .line 816
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 812
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method private arrowLayout()V
    .registers 6

    .line 569
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_12

    .line 570
    :cond_f
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    goto :goto_15

    :cond_12
    :goto_12
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetX:I

    neg-int v0, v0

    .line 571
    :goto_15
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isVerticalMode()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 572
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowVerticalLayout(I)V

    goto :goto_22

    .line 574
    :cond_1f
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowHorizontalLayout(I)V

    .line 578
    :goto_22
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 580
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 581
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_52

    .line 582
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 583
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_69

    .line 584
    :cond_52
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_69

    .line 585
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 586
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    :cond_69
    :goto_69
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_71

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v0, :cond_78

    .line 589
    :cond_71
    const-string v0, "ArrowPopupView"

    const-string v1, "Invalid LayoutPrams of content view, please check the anchor view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return-void
.end method

.method private arrowVerticalLayout(I)V
    .registers 20

    move-object/from16 v0, p0

    .line 595
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 596
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    .line 598
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    .line 599
    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 600
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    .line 601
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 602
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 603
    iget v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    invoke-virtual {v0, v8}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowWidth(I)I

    move-result v8

    .line 604
    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    invoke-virtual {v0, v9}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getArrowHeight(I)I

    move-result v9

    const/4 v10, 0x2

    .line 606
    new-array v11, v10, [I

    .line 607
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v12, 0x0

    .line 608
    aget v13, v11, v12

    const/4 v14, 0x1

    .line 609
    aget v15, v11, v14

    .line 610
    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    sub-int v16, v1, v8

    .line 611
    div-int/lit8 v16, v16, 0x2

    add-int v16, v13, v16

    aget v17, v11, v12

    sub-int v12, v16, v17

    iput v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v12

    iget v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mOffsetY:I

    add-int/2addr v12, v10

    iput v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 615
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isBottomMode()Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 616
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    aget v10, v11, v14

    sub-int/2addr v15, v10

    sub-int/2addr v15, v6

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    .line 617
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v10, v9

    add-int/2addr v15, v10

    add-int/2addr v2, v15

    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    goto :goto_a1

    .line 619
    :cond_8a
    invoke-direct/range {p0 .. p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    move-result v10

    if-eqz v10, :cond_a1

    .line 620
    iget v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    add-int/2addr v15, v2

    aget v2, v11, v14

    sub-int/2addr v15, v2

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    .line 621
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v15, v2

    add-int/2addr v15, v9

    add-int/2addr v10, v15

    iput v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 625
    :cond_a1
    :goto_a1
    div-int/lit8 v2, v5, 0x2

    sub-int v9, v5, v2

    .line 628
    iget v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    if-eq v10, v14, :cond_b5

    const/4 v12, 0x2

    if-ne v10, v12, :cond_b3

    invoke-static/range {p0 .. p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_b3

    goto :goto_b5

    :cond_b3
    const/4 v10, 0x0

    goto :goto_b6

    :cond_b5
    :goto_b5
    move v10, v14

    :goto_b6
    const/16 v14, 0x12

    const/16 v12, 0x9

    if-nez v10, :cond_c0

    .line 629
    iget v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eq v15, v12, :cond_d6

    :cond_c0
    if-nez v10, :cond_c6

    iget v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eq v15, v14, :cond_d6

    :cond_c6
    if-eqz v10, :cond_ce

    iget v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v14, 0xa

    if-eq v15, v14, :cond_d6

    :cond_ce
    if-eqz v10, :cond_d8

    iget v14, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v15, 0x11

    if-ne v14, v15, :cond_d8

    :cond_d6
    const/4 v14, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v14, 0x0

    :goto_d9
    const/high16 v17, 0x41e00000    # 28.0f

    if-nez v10, :cond_e6

    .line 631
    iget v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v12, 0xa

    if-eq v15, v12, :cond_e4

    goto :goto_e6

    :cond_e4
    :goto_e4
    const/4 v2, 0x2

    goto :goto_ff

    :cond_e6
    :goto_e6
    if-nez v10, :cond_ee

    iget v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v15, 0x11

    if-eq v12, v15, :cond_e4

    :cond_ee
    if-eqz v10, :cond_f6

    iget v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v15, 0x9

    if-eq v12, v15, :cond_e4

    :cond_f6
    if-eqz v10, :cond_11d

    iget v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v12, 0x12

    if-ne v10, v12, :cond_11d

    goto :goto_e4

    .line 636
    :goto_ff
    div-int/2addr v1, v2

    add-int/2addr v13, v1

    sub-int/2addr v13, v5

    int-to-float v1, v13

    mul-float v7, v7, v17

    add-float/2addr v1, v7

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    aget v7, v11, v2

    int-to-float v2, v7

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    :goto_11b
    const/4 v1, 0x0

    goto :goto_16e

    :cond_11d
    if-eqz v14, :cond_14f

    const/4 v10, 0x2

    .line 638
    div-int/2addr v1, v10

    add-int/2addr v13, v1

    int-to-float v1, v13

    mul-float v7, v7, v17

    sub-float/2addr v1, v7

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    aget v7, v11, v2

    int-to-float v2, v7

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int v2, v1, v5

    if-le v2, v3, :cond_144

    sub-int v2, v3, v2

    add-int/2addr v1, v2

    .line 642
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 644
    :cond_144
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    const/4 v7, 0x0

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    move v1, v7

    goto :goto_16e

    :cond_14f
    const/4 v7, 0x0

    const/4 v10, 0x2

    .line 646
    div-int/2addr v1, v10

    add-int/2addr v13, v1

    aget v1, v11, v7

    sub-int/2addr v13, v1

    iput v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v1, v3, v13

    if-lt v13, v2, :cond_162

    if-lt v1, v9, :cond_162

    sub-int/2addr v13, v2

    .line 650
    iput v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_11b

    :cond_162
    if-ge v1, v9, :cond_169

    sub-int v1, v3, v5

    .line 653
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    goto :goto_11b

    :cond_169
    const/4 v1, 0x0

    if-ge v13, v2, :cond_16e

    .line 656
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 660
    :cond_16e
    :goto_16e
    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int v2, v2, p1

    iput v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 661
    iget v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    add-int v7, v7, p1

    iput v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    if-gez v7, :cond_17f

    .line 664
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    goto :goto_189

    :cond_17f
    add-int v1, v7, v8

    if-le v1, v3, :cond_189

    add-int v1, v7, v8

    sub-int/2addr v1, v3

    sub-int/2addr v7, v1

    .line 666
    iput v7, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    :cond_189
    :goto_189
    add-int/2addr v2, v5

    if-le v2, v3, :cond_190

    sub-int v1, v3, v5

    .line 670
    iput v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    .line 673
    :cond_190
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    invoke-virtual {v1, v2}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->setArrowMode(I)V

    .line 676
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1a1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1b5

    .line 677
    :cond_1a1
    iget v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    int-to-float v1, v1

    int-to-float v2, v8

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v5

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    .line 678
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v2, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->setArrowHorizonOffset(F)V

    .line 681
    :cond_1b5
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    iget v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    const/4 v7, 0x0

    .line 682
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 683
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    add-int/2addr v9, v5

    .line 684
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    .line 685
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 681
    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method private isBottomMode()Z
    .registers 2

    const/16 v0, 0x10

    .line 562
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result v0

    return v0
.end method

.method private isCertainMode(I)Z
    .registers 3

    .line 546
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private isLeftMode()Z
    .registers 2

    const/16 v0, 0x20

    .line 550
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result v0

    return v0
.end method

.method private isRightMode()Z
    .registers 2

    const/16 v0, 0x40

    .line 554
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result v0

    return v0
.end method

.method private isTopMode()Z
    .registers 2

    const/16 v0, 0x8

    .line 558
    invoke-direct {p0, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isCertainMode(I)Z

    move-result v0

    return v0
.end method

.method private isVerticalMode()Z
    .registers 2

    .line 542
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isBottomMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private updateArrowDrawable(I)V
    .registers 5

    .line 1228
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    const/16 v0, 0x20

    if-eq p1, v0, :cond_7c

    const/16 v0, 0x40

    if-eq p1, v0, :cond_6f

    packed-switch p1, :pswitch_data_8a

    packed-switch p1, :pswitch_data_94

    goto/16 :goto_88

    .line 1255
    :pswitch_20
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_27

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    goto :goto_29

    :cond_27
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    :goto_29
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_88

    .line 1259
    :pswitch_2d
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_34

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_36

    :cond_34
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottomRight:Landroid/graphics/drawable/Drawable;

    :goto_36
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_88

    .line 1235
    :pswitch_3a
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_88

    .line 1251
    :pswitch_42
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_49

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_4b

    :cond_49
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    :goto_4b
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_88

    .line 1247
    :pswitch_4f
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_56

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopRight:Landroid/graphics/drawable/Drawable;

    goto :goto_58

    :cond_56
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopLeft:Landroid/graphics/drawable/Drawable;

    :goto_58
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_88

    .line 1231
    :pswitch_5c
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTopWithTitle:Landroid/graphics/drawable/Drawable;

    goto :goto_6b

    :cond_69
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowTop:Landroid/graphics/drawable/Drawable;

    :goto_6b
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_88

    .line 1243
    :cond_6f
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_76

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_78

    :cond_76
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    :goto_78
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_88

    .line 1239
    :cond_7c
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_83

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    goto :goto_85

    :cond_83
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    :goto_85
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x8
        :pswitch_5c
        :pswitch_4f
        :pswitch_42
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x10
        :pswitch_3a
        :pswitch_2d
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public getArrowHeight(I)I
    .registers 3

    .line 846
    iget p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1d

    packed-switch p1, :pswitch_data_28

    packed-switch p1, :pswitch_data_32

    const/4 p1, 0x0

    goto :goto_27

    .line 853
    :pswitch_12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_arrow_height_vertical:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_27

    .line 857
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_arrow_height_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_27
    return p1

    :pswitch_data_28
    .packed-switch 0x8
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x10
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public getArrowMode()I
    .registers 2

    .line 1219
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    return v0
.end method

.method public getArrowWidth(I)I
    .registers 3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1b

    packed-switch p1, :pswitch_data_26

    packed-switch p1, :pswitch_data_30

    const/4 p1, 0x0

    goto :goto_25

    .line 833
    :pswitch_10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_arrow_width_vertical:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    goto :goto_25

    .line 837
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_arrow_width_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_25
    return p1

    :pswitch_data_26
    .packed-switch 0x8
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch

    :pswitch_data_30
    .packed-switch 0x10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public getContentFrameWrapperBottomPadding()I
    .registers 2

    .line 375
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getContentFrameWrapperTopPadding()I
    .registers 2

    .line 371
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 3

    .line 506
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 507
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNegativeButton()Landroidx/appcompat/widget/AppCompatButton;
    .registers 2

    .line 538
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    return-object v0
.end method

.method public getPopupElevation()I
    .registers 2

    .line 285
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mElevation:I

    return v0
.end method

.method public getPositiveButton()Landroidx/appcompat/widget/AppCompatButton;
    .registers 2

    .line 534
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    return-object v0
.end method

.method public getRollingPercent()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTitleHeight()I
    .registers 3

    .line 383
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    .line 384
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 948
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 949
    invoke-virtual {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 951
    new-instance v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;

    invoke-direct {v0, p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 1294
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1295
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 1296
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchorTrackListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1297
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLayoutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 882
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    return-void

    .line 890
    :cond_5
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 891
    iget v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 893
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    const/16 v3, 0x40

    const/16 v4, 0x20

    const/16 v5, 0x10

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v2, v6, :cond_7e

    if-eq v2, v5, :cond_65

    if-eq v2, v4, :cond_4c

    if-eq v2, v3, :cond_33

    move v2, v7

    move v9, v8

    move v10, v9

    goto :goto_95

    .line 914
    :cond_33
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    .line 915
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v9, v2, v9

    .line 916
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    const/high16 v2, 0x42b40000    # 90.0f

    goto :goto_95

    .line 908
    :cond_4c
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceTop:I

    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    .line 909
    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v9

    sub-int/2addr v9, v2

    .line 910
    iget v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    sub-int v10, v2, v10

    const/high16 v2, -0x3d4c0000    # -90.0f

    goto :goto_95

    .line 902
    :cond_65
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    .line 903
    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getRight()I

    move-result v9

    sub-int/2addr v9, v2

    .line 904
    iget v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v10, v2, v10

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_95

    .line 896
    :cond_7e
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowSpaceLeft:I

    iget-object v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v2, v9

    .line 897
    iget v9, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    sub-int v9, v2, v9

    .line 898
    iget-object v10, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getRight()I

    move-result v10

    sub-int/2addr v10, v2

    move v2, v7

    .line 919
    :goto_95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    int-to-float v12, v0

    int-to-float v13, v1

    .line 920
    invoke-virtual {p1, v2, v12, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 921
    iget v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    if-eq v2, v6, :cond_f7

    if-eq v2, v5, :cond_f7

    if-eq v2, v4, :cond_aa

    if-eq v2, v3, :cond_aa

    goto/16 :goto_135

    .line 934
    :cond_aa
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 935
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v8, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 936
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isLeftMode()Z

    move-result v0

    if-eqz v0, :cond_d6

    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    :goto_d4
    int-to-float v0, v0

    goto :goto_da

    :cond_d6
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    neg-int v0, v0

    goto :goto_d4

    :goto_da
    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 937
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v9

    .line 938
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 939
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v8, v8, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 940
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_135

    .line 924
    :cond_f7
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceLeft:I

    int-to-float v0, v0

    iget v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mSpaceTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 925
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v8, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 926
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->isTopMode()Z

    move-result v0

    if-eqz v0, :cond_115

    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    :goto_113
    int-to-float v0, v0

    goto :goto_119

    :cond_115
    iget v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTranslationValue:I

    neg-int v0, v0

    goto :goto_113

    :goto_119
    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 927
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v0, v9

    .line 928
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 929
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v8, v8, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 930
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 943
    :goto_135
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 343
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 344
    sget v0, Lmiuix/popupwidget/R$id;->popup_arrow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrow:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x1020002

    .line 345
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    .line 346
    sget v0, Lmiuix/popupwidget/R$id;->content_wrapper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    .line 347
    iget v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowBackgroundPaintColor:I

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->setArrowBackgroundPaintColor(I)V

    .line 349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 350
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 352
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_53

    .line 353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 354
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 355
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 358
    :cond_53
    sget v0, Lmiuix/popupwidget/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 359
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1020016

    .line 360
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x102001a

    .line 361
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    const v0, 0x1020019

    .line 362
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 364
    new-instance v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 365
    new-instance v0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;-><init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    .line 366
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mPositiveClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mNegativeClickListener:Lmiuix/popupwidget/internal/widget/ArrowPopupView$WrapperOnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 866
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 872
    iget p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    if-nez p1, :cond_f

    .line 873
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->adjustArrowMode()V

    .line 875
    :cond_f
    iget p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->updateArrowDrawable(I)V

    .line 876
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->arrowLayout()V

    const/4 p1, 0x1

    .line 877
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHasFirstLayout:Z

    return-void

    :cond_1b
    const/4 p1, 0x0

    .line 867
    throw p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1307
    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTmpRect:Landroid/graphics/Rect;

    .line 1308
    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrameWrapper:Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 1309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p1, 0x0

    .line 1310
    throw p1

    .line 1313
    :cond_20
    :goto_20
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_2c

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    :goto_2d
    return p1
.end method

.method public setAlphaAnimation(Z)V
    .registers 2

    .line 1289
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAlphaAnimationEnabled:Z

    return-void
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 4

    .line 1265
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1266
    iget-object v1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchorTrackListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1268
    :cond_9
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchor:Landroid/view/View;

    const/4 v0, 0x0

    .line 1269
    iput-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHasFirstLayout:Z

    .line 1270
    iget-boolean v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mEnableTrackAnchor:Z

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 1271
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAnchorTrackListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_19
    return-void
.end method

.method public setArrowMode(I)V
    .registers 2

    .line 1223
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowMode:I

    .line 1224
    invoke-direct {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->updateArrowDrawable(I)V

    return-void
.end method

.method public setArrowPopupWindow(Lmiuix/popupwidget/widget/ArrowPopupWindow;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setAutoDismiss(Z)V
    .registers 2

    .line 289
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mAutoDismiss:Z

    return-void
.end method

.method public setContentView(I)V
    .registers 4

    .line 513
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4

    .line 490
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 495
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_c

    .line 497
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    return-void
.end method

.method public setEnableTrackAnchor(Z)V
    .registers 2

    .line 502
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mEnableTrackAnchor:Z

    return-void
.end method

.method public setLayoutRtlMode(I)V
    .registers 3

    const/4 v0, 0x2

    if-gt p1, v0, :cond_8

    if-ltz p1, :cond_8

    .line 294
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    goto :goto_a

    .line 296
    :cond_8
    iput v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mRtlMode:I

    :goto_a
    return-void
.end method

.method public setRollingPercent(F)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4

    .line 517
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTitleText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 1285
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method
