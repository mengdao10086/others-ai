.class Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;
.super Ljava/lang/Object;
.source "DialogParentPanel2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/widget/DialogParentPanel2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingABOLayoutSpec"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mFullHeightMajor:Landroid/util/TypedValue;

.field private mIsDebugEnabled:Z

.field private mIsFlipTinyScreen:Z

.field private mIsFreeWindowMode:Z

.field private mMaxHeightMajor:Landroid/util/TypedValue;

.field private mMaxHeightMinor:Landroid/util/TypedValue;

.field private mMaxWidthMajor:Landroid/util/TypedValue;

.field private mMaxWidthMinor:Landroid/util/TypedValue;

.field private mMeasureRule:Lmiuix/appcompat/app/strategy/IPanelMeasureRule;

.field private mPanelMaxLimitHeight:I

.field private mScreenHeightDp:I

.field private final mScreenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    .line 217
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 218
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    invoke-virtual {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getScreenHeightDp()I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    .line 220
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    return-void
.end method

.method static synthetic access$002(Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;Lmiuix/appcompat/app/strategy/IPanelMeasureRule;)Lmiuix/appcompat/app/strategy/IPanelMeasureRule;
    .registers 2

    .line 195
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMeasureRule:Lmiuix/appcompat/app/strategy/IPanelMeasureRule;

    return-object p1
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;)I
    .registers 1

    .line 195
    iget p0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mPanelMaxLimitHeight:I

    return p0
.end method

.method static synthetic access$102(Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;I)I
    .registers 2

    .line 195
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mPanelMaxLimitHeight:I

    return p1
.end method

.method static synthetic access$202(Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;Z)Z
    .registers 2

    .line 195
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsDebugEnabled:Z

    return p1
.end method

.method private getTypedBaseValue(Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Z)[I
    .registers 10

    .line 270
    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFlipTinyScreen:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 271
    :goto_c
    new-instance v1, Lmiuix/appcompat/app/DialogContract$ValueList;

    invoke-direct {v1, p1, p2, p5}, Lmiuix/appcompat/app/DialogContract$ValueList;-><init>(Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)V

    .line 272
    iget-object p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMeasureRule:Lmiuix/appcompat/app/strategy/IPanelMeasureRule;

    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->isPortrait()Z

    move-result p2

    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    invoke-interface {p1, v0, p2, v2, v1}, Lmiuix/appcompat/app/strategy/IPanelMeasureRule;->selectLimitValue(ZZILmiuix/appcompat/app/DialogContract$ValueList;)Landroid/util/TypedValue;

    move-result-object p1

    .line 273
    invoke-direct {p0, p1, p6}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    move-result p1

    .line 275
    new-instance p2, Lmiuix/appcompat/app/DialogContract$ValueList;

    invoke-direct {p2, p3, p4, p5}, Lmiuix/appcompat/app/DialogContract$ValueList;-><init>(Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)V

    .line 276
    iget-object p3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMeasureRule:Lmiuix/appcompat/app/strategy/IPanelMeasureRule;

    invoke-direct {p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->isPortrait()Z

    move-result p4

    iget p5, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    invoke-interface {p3, v0, p4, p5, p2}, Lmiuix/appcompat/app/strategy/IPanelMeasureRule;->selectLimitValue(ZZILmiuix/appcompat/app/DialogContract$ValueList;)Landroid/util/TypedValue;

    move-result-object p2

    .line 277
    invoke-direct {p0, p2, p6}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    move-result p2

    .line 279
    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1
.end method

.method private isPortrait()Z
    .registers 4

    .line 316
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_11

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_11

    .line 317
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/WindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 320
    :cond_11
    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 227
    :cond_3
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 228
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 229
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 230
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 232
    :cond_1b
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 233
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 234
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 236
    :cond_2d
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 237
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 238
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 240
    :cond_3f
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 241
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 242
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 244
    :cond_51
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 245
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 246
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 248
    :cond_63
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 249
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 250
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 252
    :cond_75
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 253
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 254
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 256
    :cond_87
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 257
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 258
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 260
    :cond_99
    sget p2, Lmiuix/appcompat/R$styleable;->Window_windowFullHeightMajor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 261
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFullHeightMajor:Landroid/util/TypedValue;

    .line 262
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 264
    :cond_ab
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private resolveDimension(Landroid/util/TypedValue;Z)I
    .registers 5

    if-eqz p1, :cond_2e

    .line 326
    iget v0, p1, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_2e

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    .line 328
    iget-object p2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    :goto_17
    float-to-int p1, p1

    goto :goto_2f

    :cond_19
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2e

    if-eqz p2, :cond_24

    .line 330
    iget-object p2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    :goto_22
    int-to-float p2, p2

    goto :goto_29

    :cond_24
    iget-object p2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    goto :goto_22

    .line 331
    :goto_29
    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    goto :goto_17

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return p1
.end method


# virtual methods
.method public flushWindowSizeIfNeed(I)V
    .registers 4

    .line 344
    iget v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    if-eq v0, p1, :cond_60

    .line 345
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 346
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 347
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 348
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 349
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 350
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 351
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 352
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowFullHeightMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFullHeightMajor:Landroid/util/TypedValue;

    .line 353
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 354
    iput p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenHeightDp:I

    .line 357
    :cond_60
    iget-object p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    return-void
.end method

.method public getHeightMeasureSpecForDialog(I)I
    .registers 12

    .line 297
    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFlipTinyScreen:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v2

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v1

    .line 299
    :goto_e
    iget-object v4, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    iget-object v7, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    iget-object v8, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFullHeightMajor:Landroid/util/TypedValue;

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getTypedBaseValue(Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Z)[I

    move-result-object v9

    .line 301
    iget-object v3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMeasureRule:Lmiuix/appcompat/app/strategy/IPanelMeasureRule;

    aget v5, v9, v2

    aget v6, v9, v1

    iget v7, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mPanelMaxLimitHeight:I

    move v4, p1

    move v8, v0

    invoke-interface/range {v3 .. v8}, Lmiuix/appcompat/app/strategy/IPanelMeasureRule;->measurePanelHeight(IIIIZ)I

    move-result v3

    .line 303
    iget-boolean v4, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsDebugEnabled:Z

    if-eqz v4, :cond_8c

    .line 304
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHeightMeasureSpecForDialog: measuredValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fixedValue = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v9, v2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxValue = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v9, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", useMaxLimit = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mPanelMaxLimitHeight = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mPanelMaxLimitHeight:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsFlipTinyScreen = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFlipTinyScreen:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsFreeWindowMode = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFreeWindowMode:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialogParentPanel2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    return v3
.end method

.method public getScreenHeightDp()I
    .registers 3

    .line 362
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 363
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 364
    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getWidthMeasureSpecForDialog(I)I
    .registers 9

    .line 284
    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    iget-object v2, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    iget-object v3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mFullHeightMajor:Landroid/util/TypedValue;

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getTypedBaseValue(Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Z)[I

    move-result-object v0

    .line 286
    iget-object v1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mMeasureRule:Lmiuix/appcompat/app/strategy/IPanelMeasureRule;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-interface {v1, p1, v3, v5}, Lmiuix/appcompat/app/strategy/IPanelMeasureRule;->measurePanelWidth(III)I

    move-result v1

    .line 287
    iget-boolean v3, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsDebugEnabled:Z

    if-eqz v3, :cond_56

    .line 288
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWidthMeasureSpecForDialog: measuredValue = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fixedValue = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxValue = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v0, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialogParentPanel2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    return v1
.end method

.method public setIsInTinyScreen(Z)V
    .registers 2

    .line 338
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogParentPanel2$FloatingABOLayoutSpec;->mIsFlipTinyScreen:Z

    return-void
.end method
