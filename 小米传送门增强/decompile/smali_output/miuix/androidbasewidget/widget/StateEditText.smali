.class public Lmiuix/androidbasewidget/widget/StateEditText;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "StateEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
    }
.end annotation


# static fields
.field private static final WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mExploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

.field private mExtraDrawables:[Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field private mLabelLayout:Landroid/text/StaticLayout;

.field private mLabelLength:I

.field private mLabelMaxWidth:I

.field private mPressed:Z

.field private mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

.field private mWidgetPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const-class v0, Landroid/content/Context;

    const-class v1, Landroid/util/AttributeSet;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmiuix/androidbasewidget/widget/StateEditText;->WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method private createLabelLayout()V
    .registers 6

    .line 306
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method private dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 190
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_9

    .line 191
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->isWidgetResumedEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method private drawExtraWidget(Landroid/graphics/Canvas;)V
    .registers 15

    .line 275
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_77

    .line 277
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    .line 278
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    .line 279
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v2

    .line 280
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v3

    .line 281
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x2

    .line 282
    aget-object v4, v4, v5

    const/4 v6, 0x0

    if-nez v4, :cond_20

    move v4, v6

    goto :goto_27

    :cond_20
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v7, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v4, v7

    .line 283
    :goto_27
    div-int/2addr v1, v5

    move v5, v6

    .line 284
    :goto_29
    iget-object v7, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v8, v7

    if-ge v6, v8, :cond_77

    .line 285
    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 286
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 287
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 288
    iget-object v9, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v6

    add-int v10, v2, v3

    add-int/2addr v10, v4

    add-int v11, v10, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v12, v1, v8

    add-int/2addr v10, v7

    add-int/2addr v10, v5

    add-int/2addr v8, v1

    invoke-virtual {v9, v11, v12, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_6a

    .line 293
    :cond_56
    iget-object v9, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v9, v9, v6

    add-int v10, v2, v0

    sub-int/2addr v10, v3

    sub-int/2addr v10, v4

    sub-int v11, v10, v7

    sub-int/2addr v11, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v12, v1, v8

    sub-int/2addr v10, v5

    add-int/2addr v8, v1

    invoke-virtual {v9, v11, v12, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    :goto_6a
    iget v5, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v5, v7

    .line 299
    iget-object v7, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_77
    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;)V
    .registers 8

    .line 255
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_7d

    .line 256
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 257
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 258
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v1

    .line 259
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 260
    aget-object v2, v2, v3

    if-nez v2, :cond_2d

    goto :goto_34

    :cond_2d
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v3, v2

    .line 261
    :goto_34
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 263
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 264
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6e

    .line 266
    :cond_64
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    :goto_6e
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 269
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 270
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_7d
    return-void
.end method

.method private getLabelLength()I
    .registers 3

    .line 169
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    iget v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method private getWidgetLength()I
    .registers 6

    .line 175
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 176
    array-length v2, v0

    move v3, v1

    :goto_7
    if-ge v1, v2, :cond_16

    aget-object v4, v0, v1

    .line 177
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 178
    iget v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    move v1, v3

    :cond_17
    return v1
.end method

.method private isWidgetResumedEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 197
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 198
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    move-result v0

    move v2, v1

    .line 199
    :goto_a
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v3

    if-ge v2, v4, :cond_35

    .line 200
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_32

    .line 202
    invoke-direct {p0, p1, v2}, Lmiuix/androidbasewidget/widget/StateEditText;->onWidgetTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 206
    :cond_35
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    return v1
.end method

.method private onWidgetTouchEvent(Landroid/view/MotionEvent;I)Z
    .registers 5

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_23

    const/4 v1, 0x0

    if-eq p1, v0, :cond_15

    const/4 p2, 0x3

    if-eq p1, p2, :cond_e

    goto :goto_25

    .line 225
    :cond_e
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    if-eqz p1, :cond_25

    .line 226
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    goto :goto_25

    .line 213
    :cond_15
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_25

    .line 214
    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onWidgetClick(I)V

    .line 215
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    return v0

    .line 221
    :cond_23
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 229
    :cond_25
    :goto_25
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    return p1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 418
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExploreByTouchHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 421
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 186
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->dispatchEndDrawableTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    .line 158
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v0

    .line 160
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 161
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    move-result v1

    goto :goto_13

    .line 163
    :cond_f
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    .line 146
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v0

    .line 148
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 149
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    move-result v1

    goto :goto_13

    .line 151
    :cond_f
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 249
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->drawExtraWidget(Landroid/graphics/Canvas;)V

    .line 251
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->drawLabel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 234
    invoke-super {p0, p1, p2}, Lmiuix/androidbasewidget/widget/EditText;->onMeasure(II)V

    .line 235
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    if-eqz p1, :cond_45

    .line 236
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    if-nez p1, :cond_28

    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_28

    .line 237
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 238
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->createLabelLayout()V

    .line 240
    :cond_28
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 241
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p2

    if-le p1, p2, :cond_45

    .line 242
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/EditText;->setMeasuredDimension(II)V

    :cond_45
    return-void
.end method

.method public setInputType(I)V
    .registers 3

    .line 426
    invoke-virtual {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 427
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 428
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 4

    .line 97
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    .line 99
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 101
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 103
    :goto_24
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    const/4 v0, 0x0

    if-lez p1, :cond_46

    .line 104
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_43

    :cond_32
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_43
    iput v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    goto :goto_5c

    .line 106
    :cond_46
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_5a

    :cond_4f
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int v0, p1

    :goto_5a
    iput v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 108
    :goto_5c
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_67

    .line 109
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->createLabelLayout()V

    .line 111
    :cond_67
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setWidgetManager(Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz v0, :cond_a

    .line 86
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onDetached()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 89
    :cond_a
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_19

    .line 91
    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->getWidgetDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onAttached(Lmiuix/androidbasewidget/widget/StateEditText;)V

    :cond_19
    return-void
.end method
