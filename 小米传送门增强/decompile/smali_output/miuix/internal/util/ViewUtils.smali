.class public Lmiuix/internal/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;,
        Lmiuix/internal/util/ViewUtils$RelativePadding;
    }
.end annotation


# direct methods
.method public static doOnApplyWindowInsets(Landroid/view/View;Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;)V
    .registers 7

    .line 328
    new-instance v0, Lmiuix/internal/util/ViewUtils$RelativePadding;

    .line 330
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 331
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 332
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lmiuix/internal/util/ViewUtils$RelativePadding;-><init>(IIII)V

    .line 336
    new-instance v1, Lmiuix/internal/util/ViewUtils$2;

    invoke-direct {v1, p1, v0}, Lmiuix/internal/util/ViewUtils$2;-><init>(Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;Lmiuix/internal/util/ViewUtils$RelativePadding;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 346
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->requestApplyInsetsWhenAttached(Landroid/view/View;)V

    return-void
.end method

.method public static getBoundsInWindow(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    const/4 v0, 0x2

    .line 187
    new-array v0, v0, [I

    .line 188
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 189
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    aget v0, v0, v2

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 189
    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static getMeasuredHeightWithMargin(Landroid/view/View;)I
    .registers 3

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    .line 178
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_14

    .line 179
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 180
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    .line 181
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    :cond_14
    return p0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .registers 2

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .registers 1

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 155
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static isNightMode(Landroid/content/res/Configuration;)Z
    .registers 3

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 160
    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p0

    return p0

    .line 162
    :cond_b
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static layoutChildView(Landroid/view/ViewGroup;Landroid/view/View;IIII)V
    .registers 8

    .line 146
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 147
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    if-eqz v0, :cond_d

    sub-int v1, p0, p4

    goto :goto_e

    :cond_d
    move v1, p2

    :goto_e
    if-eqz v0, :cond_12

    sub-int p4, p0, p2

    .line 150
    :cond_12
    invoke-virtual {p1, v1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static requestApplyInsetsWhenAttached(Landroid/view/View;)V
    .registers 2

    .line 351
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 353
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_12

    .line 356
    :cond_a
    new-instance v0, Lmiuix/internal/util/ViewUtils$3;

    invoke-direct {v0}, Lmiuix/internal/util/ViewUtils$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_12
    return-void
.end method

.method public static resetPaddingBottom(Landroid/view/View;I)V
    .registers 5

    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
