.class public Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;
.super Ljava/lang/Object;
.source "FloatingABOLayoutSpec.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mFloatingTheme:Z

.field private mFloatingWindow:Z

.field private mIsInDialogMode:Z

.field private mMaxHeightMajor:Landroid/util/TypedValue;

.field private mMaxHeightMinor:Landroid/util/TypedValue;

.field private mMaxWidthMajor:Landroid/util/TypedValue;

.field private mMaxWidthMinor:Landroid/util/TypedValue;

.field private mPhysicalSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 27
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 54
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    .line 56
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->updatePhysicalSize(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getFixedHeightMajor()Landroid/util/TypedValue;
    .registers 2

    .line 184
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private getFixedHeightMinor()Landroid/util/TypedValue;
    .registers 2

    .line 192
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private getFixedWidthMajor()Landroid/util/TypedValue;
    .registers 2

    .line 188
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private getFixedWidthMinor()Landroid/util/TypedValue;
    .registers 2

    .line 180
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private getMaxHeightMajor()Landroid/util/TypedValue;
    .registers 2

    .line 208
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private getMaxHeightMinor()Landroid/util/TypedValue;
    .registers 2

    .line 204
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private getMaxWidthMajor()Landroid/util/TypedValue;
    .registers 2

    .line 200
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private getMaxWidthMinor()Landroid/util/TypedValue;
    .registers 2

    .line 196
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .registers 9

    .line 140
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_33

    .line 144
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    move-object p3, p4

    .line 146
    :goto_10
    invoke-direct {p0, p3, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    move-result p3

    if-lez p3, :cond_1d

    const/high16 p1, 0x40000000    # 2.0f

    .line 149
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_33

    :cond_1d
    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move-object p5, p6

    .line 152
    :goto_21
    invoke-direct {p0, p5, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    move-result p2

    if-lez p2, :cond_33

    .line 154
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 155
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_33
    :goto_33
    return p1
.end method

.method private getThemeResourceId(Landroid/view/ContextThemeWrapper;)I
    .registers 5

    .line 235
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getThemeResId"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 234
    invoke-static {p1, v0, v2}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1f

    :catch_16
    move-exception p1

    .line 238
    const-string v0, "FloatingABOLayoutSpec"

    const-string v1, "catch theme resource get exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private isPortrait()Z
    .registers 2

    .line 176
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/WindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 73
    :cond_3
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 74
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 75
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 76
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 78
    :cond_1b
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 79
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 80
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 82
    :cond_2d
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 83
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 84
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 86
    :cond_3f
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 87
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 88
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 90
    :cond_51
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 91
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 92
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 94
    :cond_63
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 95
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 96
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 98
    :cond_75
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 99
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 102
    :cond_87
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 103
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 104
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 106
    :cond_99
    sget v0, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    .line 107
    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    .line 108
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private resolveDimension(Landroid/util/TypedValue;Z)I
    .registers 5

    if-eqz p1, :cond_26

    .line 164
    iget v0, p1, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_26

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    .line 166
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    :goto_f
    float-to-int p1, p1

    goto :goto_27

    :cond_11
    const/4 v1, 0x6

    if-ne v0, v1, :cond_26

    if-eqz p2, :cond_1c

    .line 168
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    :goto_1a
    int-to-float p2, p2

    goto :goto_21

    :cond_1c
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    goto :goto_1a

    .line 169
    :goto_21
    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    goto :goto_f

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method


# virtual methods
.method public getHeightMeasureSpec(I)I
    .registers 9

    .line 134
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 135
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxHeightMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    .line 134
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method public getHeightMeasureSpecForDialog(I)I
    .registers 9

    .line 124
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method public getWidthMeasureSpec(I)I
    .registers 9

    .line 129
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 130
    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    .line 129
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method public getWidthMeasureSpecForDialog(I)I
    .registers 9

    .line 119
    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method public onConfigurationChanged()V
    .registers 4

    .line 212
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    .line 213
    iget-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mIsInDialogMode:Z

    if-eqz v1, :cond_1e

    instance-of v1, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_1e

    .line 215
    move-object v1, v0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getThemeResourceId(Landroid/view/ContextThemeWrapper;)I

    move-result v1

    if-lez v1, :cond_1e

    .line 217
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 220
    :cond_1e
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 221
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 222
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 223
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 224
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    .line 225
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    .line 226
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    .line 227
    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    .line 228
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->updatePhysicalSize(Landroid/content/Context;)V

    return-void
.end method

.method public onFloatingModeChanged(Z)V
    .registers 3

    .line 112
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-nez v0, :cond_5

    return-void

    .line 115
    :cond_5
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    return-void
.end method

.method public setIsInDialogMode(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mIsInDialogMode:Z

    return-void
.end method

.method public updatePhysicalSize(Landroid/content/Context;)V
    .registers 3

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 62
    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    return-void
.end method
