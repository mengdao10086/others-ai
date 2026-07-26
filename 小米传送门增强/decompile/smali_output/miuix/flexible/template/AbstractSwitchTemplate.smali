.class public abstract Lmiuix/flexible/template/AbstractSwitchTemplate;
.super Ljava/lang/Object;
.source "AbstractSwitchTemplate.java"

# interfaces
.implements Lmiuix/flexible/template/IHyperCellTemplate;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mIsViewStub:Z

.field private mLevelCallback:Lmiuix/flexible/view/HyperCellLayout$LevelCallback;

.field private mLevelSupplier:Lmiuix/flexible/template/level/LevelSupplier;

.field private mRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mIsViewStub:Z

    return-void
.end method

.method private layoutChildView(Landroid/view/View;ZIIIII)V
    .registers 9

    if-eqz p2, :cond_5

    sub-int v0, p3, p6

    goto :goto_6

    :cond_5
    move v0, p4

    :goto_6
    if-eqz p2, :cond_a

    sub-int p6, p3, p4

    .line 171
    :cond_a
    invoke-virtual {p1, v0, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 5

    .line 106
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 107
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 109
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 111
    invoke-virtual {p3, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    .line 113
    :cond_11
    invoke-virtual {p3, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_14
    return-void
.end method


# virtual methods
.method public applyLevel()V
    .registers 1

    .line 0
    return-void
.end method

.method public createLevelSupplier()Lmiuix/flexible/template/level/LevelSupplier;
    .registers 3

    .line 51
    new-instance v0, Lmiuix/flexible/template/level/FontLevelSupplier;

    iget-object v1, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/flexible/template/level/FontLevelSupplier;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract getLayoutResId(I)I
.end method

.method public getLevel()I
    .registers 2

    .line 46
    iget-object v0, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mLevelSupplier:Lmiuix/flexible/template/level/LevelSupplier;

    invoke-interface {v0}, Lmiuix/flexible/template/level/LevelSupplier;->getLevel()I

    move-result v0

    return v0
.end method

.method public init(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 29
    iput-object p2, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p3, :cond_27

    .line 31
    sget-object v1, Lmiuix/flexible/R$styleable;->HyperCellLayout:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 32
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    move v2, v0

    :goto_10
    if-ge v2, v1, :cond_24

    .line 34
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 35
    sget v4, Lmiuix/flexible/R$styleable;->HyperCellLayout_viewStub:I

    if-ne v3, v4, :cond_21

    const/4 v4, 0x1

    .line 36
    invoke-virtual {p3, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mIsViewStub:Z

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 39
    :cond_24
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    :cond_27
    invoke-virtual {p0}, Lmiuix/flexible/template/AbstractSwitchTemplate;->createLevelSupplier()Lmiuix/flexible/template/level/LevelSupplier;

    move-result-object p3

    iput-object p3, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mLevelSupplier:Lmiuix/flexible/template/level/LevelSupplier;

    .line 42
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lmiuix/flexible/template/AbstractSwitchTemplate;->getLevel()I

    move-result p3

    invoke-virtual {p0, p3}, Lmiuix/flexible/template/AbstractSwitchTemplate;->getLayoutResId(I)I

    move-result p3

    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method public onAttachedToWindow(Landroid/view/ViewGroup;)V
    .registers 4

    .line 79
    iget-boolean v0, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mIsViewStub:Z

    if-eqz v0, :cond_f

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 81
    iget-object v1, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mRoot:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p1, v0}, Lmiuix/flexible/template/AbstractSwitchTemplate;->replaceSelfWithView(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/view/ViewGroup;Landroid/content/res/Configuration;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onDetachedFromWindow(Landroid/view/ViewGroup;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onFinishInflate(Landroid/view/ViewGroup;)V
    .registers 3

    .line 71
    iget-boolean v0, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mIsViewStub:Z

    if-nez v0, :cond_9

    .line 72
    iget-object v0, p0, Lmiuix/flexible/template/AbstractSwitchTemplate;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_9
    invoke-virtual {p0}, Lmiuix/flexible/template/AbstractSwitchTemplate;->applyLevel()V

    return-void
.end method

.method public onLayout(Landroid/view/ViewGroup;ZIIII)V
    .registers 16

    if-eqz p2, :cond_34

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    .line 154
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p4

    const/4 p6, 0x0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_f

    goto :goto_10

    :cond_f
    move v0, p6

    :goto_10
    sub-int/2addr p5, p3

    :goto_11
    if-ge p6, p2, :cond_34

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v5

    .line 160
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 161
    invoke-virtual {p1, p6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int v7, v5, p3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    add-int v8, v6, p3

    move-object v1, p0

    move v3, v0

    move v4, p5

    .line 162
    invoke-direct/range {v1 .. v8}, Lmiuix/flexible/template/AbstractSwitchTemplate;->layoutChildView(Landroid/view/View;ZIIIII)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_11

    :cond_34
    return-void
.end method

.method public onMeasure(Landroid/view/ViewGroup;II)[I
    .registers 15

    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 121
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 122
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 123
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 124
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 125
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v3, v4

    .line 126
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_2d
    if-ge v5, v2, :cond_51

    .line 130
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 132
    invoke-static {v3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 133
    invoke-static {v4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 131
    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 134
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 135
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_51
    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_56

    goto :goto_61

    .line 140
    :cond_56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v0

    add-int/2addr p2, v0

    add-int v0, v6, p2

    :goto_61
    if-ne p3, v2, :cond_64

    goto :goto_6f

    .line 145
    :cond_64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    add-int/2addr p2, p1

    add-int v1, v7, p2

    .line 147
    :goto_6f
    filled-new-array {v0, v1}, [I

    move-result-object p1

    return-object p1
.end method

.method public onViewAdded(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onViewRemoved(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    .line 0
    return-void
.end method

.method public setLevelCallback(Lmiuix/flexible/view/HyperCellLayout$LevelCallback;)V
    .registers 2

    .line 57
    invoke-virtual {p0}, Lmiuix/flexible/template/AbstractSwitchTemplate;->applyLevel()V

    return-void
.end method
