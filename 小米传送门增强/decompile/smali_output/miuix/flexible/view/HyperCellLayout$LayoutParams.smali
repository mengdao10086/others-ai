.class public Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "HyperCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/flexible/view/HyperCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private animSpec:I

.field private animationGravity:I

.field private animationProgress:F

.field private areaId:I

.field private customParams:I

.field private gravity:I

.field private groupPriority:I

.field private groupWeight:F

.field private isAnimating:Z

.field private mark:I

.field private order:I

.field private priority:I

.field private weight:F


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 161
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->gravity:I

    .line 167
    iput-boolean p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->isAnimating:Z

    const/4 p2, 0x7

    .line 168
    iput p2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->animSpec:I

    const p2, 0x800003

    .line 173
    iput p2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->animationGravity:I

    .line 185
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->customParams:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 188
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->gravity:I

    .line 167
    iput-boolean v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->isAnimating:Z

    const/4 v1, 0x7

    .line 168
    iput v1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->animSpec:I

    const v1, 0x800003

    .line 173
    iput v1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->animationGravity:I

    .line 185
    iput v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->customParams:I

    if-eqz p2, :cond_99

    .line 190
    sget-object v1, Lmiuix/flexible/R$styleable;->HyperCellLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v0

    :goto_1f
    if-ge v1, p2, :cond_96

    .line 193
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 194
    sget v3, Lmiuix/flexible/R$styleable;->HyperCellLayout_Layout_mark:I

    if-ne v2, v3, :cond_3b

    const/4 v3, 0x1

    .line 195
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->mark:I

    if-lt v2, v3, :cond_33

    goto :goto_93

    .line 197
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Layout Parameter \'mark\' can not be smaller than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_3b
    sget v3, Lmiuix/flexible/R$styleable;->HyperCellLayout_Layout_node_weight:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_47

    .line 200
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->weight:F

    goto :goto_93

    .line 201
    :cond_47
    sget v3, Lmiuix/flexible/R$styleable;->HyperCellLayout_Layout_group_weight:I

    if-ne v2, v3, :cond_52

    .line 202
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->groupWeight:F

    goto :goto_93

    .line 203
    :cond_52
    sget v3, Lmiuix/flexible/R$styleable;->HyperCellLayout_Layout_android_layout_gravity:I

    if-ne v2, v3, :cond_5d

    .line 204
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->gravity:I

    goto :goto_93

    .line 205
    :cond_5d
    sget v3, Lmiuix/flexible/R$styleable;->HyperCellLayout_Layout_node_order:I

    if-ne v2, v3, :cond_68

    .line 206
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->order:I

    goto :goto_93

    .line 207
    :cond_68
    sget v3, Lmiuix/flexible/R$styleable;->HyperCellLayout_Layout_node_priority:I

    if-ne v2, v3, :cond_73

    .line 208
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->priority:I

    goto :goto_93

    .line 209
    :cond_73
    sget v3, Lmiuix/flexible/R$styleable;->HyperCellLayout_Layout_group_priority:I

    if-ne v2, v3, :cond_7e

    .line 210
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->groupPriority:I

    goto :goto_93

    .line 211
    :cond_7e
    sget v3, Lmiuix/flexible/R$styleable;->HyperCellLayout_Layout_area_id:I

    if-ne v2, v3, :cond_89

    .line 212
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->areaId:I

    goto :goto_93

    .line 213
    :cond_89
    sget v3, Lmiuix/flexible/R$styleable;->HyperCellLayout_Layout_custom_params:I

    if-ne v2, v3, :cond_93

    .line 214
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->customParams:I

    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 217
    :cond_96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_99
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 230
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 161
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->gravity:I

    .line 167
    iput-boolean p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->isAnimating:Z

    const/4 v0, 0x7

    .line 168
    iput v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->animSpec:I

    const v0, 0x800003

    .line 173
    iput v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->animationGravity:I

    .line 185
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->customParams:I

    return-void
.end method


# virtual methods
.method public getAnimSpec()I
    .registers 2

    .line 336
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->animSpec:I

    return v0
.end method

.method public getAnimationProgress()F
    .registers 2

    .line 328
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->animationProgress:F

    return v0
.end method

.method public getAreaId()I
    .registers 2

    .line 268
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->areaId:I

    return v0
.end method

.method public getCustomParams()I
    .registers 2

    .line 354
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->customParams:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 260
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->gravity:I

    return v0
.end method

.method public getGroupPriority()I
    .registers 2

    .line 306
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->groupPriority:I

    return v0
.end method

.method public getGroupWeight()F
    .registers 2

    .line 256
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->groupWeight:F

    return v0
.end method

.method public getMark()I
    .registers 2

    .line 248
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->mark:I

    return v0
.end method

.method public getOrder()I
    .registers 2

    .line 264
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->order:I

    return v0
.end method

.method public getPriority()I
    .registers 2

    .line 297
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->priority:I

    return v0
.end method

.method public getWeight()F
    .registers 2

    .line 252
    iget v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->weight:F

    return v0
.end method

.method public isAnimating()Z
    .registers 2

    .line 320
    iget-boolean v0, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->isAnimating:Z

    return v0
.end method

.method public setAreaId(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 2

    .line 315
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->areaId:I

    return-object p0
.end method

.method public setGravity(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 2

    .line 287
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->gravity:I

    return-object p0
.end method

.method public setGroupPriority(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 2

    .line 310
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->groupPriority:I

    return-object p0
.end method

.method public setGroupWeight(F)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 2

    .line 282
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->groupWeight:F

    return-object p0
.end method

.method public setMargin(IIII)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 5

    .line 363
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 364
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 365
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 366
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object p0
.end method

.method public setMark(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 2

    .line 272
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->mark:I

    return-object p0
.end method

.method public setOrder(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 2

    .line 292
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->order:I

    return-object p0
.end method

.method public setPriority(I)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 2

    .line 301
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->priority:I

    return-object p0
.end method

.method public setWeight(F)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 2

    .line 277
    iput p1, p0, Lmiuix/flexible/view/HyperCellLayout$LayoutParams;->weight:F

    return-object p0
.end method
