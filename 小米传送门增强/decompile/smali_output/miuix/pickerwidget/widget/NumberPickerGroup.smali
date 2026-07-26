.class public Lmiuix/pickerwidget/widget/NumberPickerGroup;
.super Landroid/widget/LinearLayout;
.source "NumberPickerGroup.java"


# instance fields
.field private final mValuePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    return-void
.end method

.method private isDayNumberPicker(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .registers 3

    .line 109
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    sget v0, Lmiuix/pickerwidget/R$id;->day:I

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 14

    .line 34
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    if-nez p1, :cond_d0

    .line 36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    move v1, p2

    move v6, v1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_15
    if-ge v1, p1, :cond_47

    .line 43
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 44
    instance-of v8, v7, Lmiuix/pickerwidget/widget/NumberPicker;

    if-eqz v8, :cond_3f

    .line 45
    check-cast v7, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 46
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxTextWidth()F

    move-result v8

    add-float/2addr v5, v8

    .line 47
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    move-result v8

    cmpl-float v9, v8, v0

    if-lez v9, :cond_35

    add-float/2addr v3, v8

    .line 50
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getMarginLabelLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    .line 52
    :cond_35
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginTextSizeHighlight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_44

    .line 54
    :cond_3f
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 60
    :cond_47
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    const-string v7, "    "

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v3, v7

    mul-float/2addr v4, v7

    add-float/2addr v5, v3

    add-float/2addr v5, v1

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v6

    int-to-float v3, v3

    sub-float/2addr v3, v4

    div-float v4, v3, v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v6

    if-gez v6, :cond_6b

    mul-float/2addr v4, v2

    goto :goto_6c

    :cond_6b
    move v4, v2

    :goto_6c
    cmpg-float v6, v4, v2

    if-gtz v6, :cond_d0

    :goto_70
    if-ge p2, p1, :cond_d0

    .line 79
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 81
    instance-of v8, v6, Lmiuix/pickerwidget/widget/NumberPicker;

    if-eqz v8, :cond_cd

    .line 82
    move-object v8, v6

    check-cast v8, Lmiuix/pickerwidget/widget/NumberPicker;

    float-to-int v9, v4

    .line 83
    invoke-virtual {v8, v9}, Lmiuix/pickerwidget/widget/NumberPicker;->setTextSizeHighlight(I)V

    .line 84
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginTextSizeHint()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    div-float/2addr v9, v2

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lmiuix/pickerwidget/widget/NumberPicker;->setTextSizeHint(I)V

    .line 85
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    move-result v9

    cmpl-float v9, v9, v0

    if-lez v9, :cond_9c

    .line 88
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getMarginLabelLeft()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    goto :goto_9d

    :cond_9c
    move v9, v0

    .line 92
    :goto_9d
    invoke-direct {p0, v8}, Lmiuix/pickerwidget/widget/NumberPickerGroup;->isDayNumberPicker(Lmiuix/pickerwidget/widget/NumberPicker;)Z

    move-result v10

    if-eqz v10, :cond_b3

    .line 93
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxTextWidth()F

    move-result v10

    add-float/2addr v10, v1

    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    move-result v8

    :goto_ac
    mul-float/2addr v8, v7

    add-float/2addr v10, v8

    mul-float/2addr v10, v3

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    float-to-int v8, v9

    goto :goto_bc

    .line 95
    :cond_b3
    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxTextWidth()F

    move-result v10

    invoke-virtual {v8}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    move-result v8

    goto :goto_ac

    .line 97
    :goto_bc
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    .line 99
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 100
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 98
    invoke-virtual {v6, v8, v9}, Landroid/view/View;->measure(II)V

    :cond_cd
    add-int/lit8 p2, p2, 0x1

    goto :goto_70

    :cond_d0
    return-void
.end method
