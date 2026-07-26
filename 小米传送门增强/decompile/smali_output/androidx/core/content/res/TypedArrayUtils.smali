.class public Landroidx/core/content/res/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


# direct methods
.method public static getAttr(Landroid/content/Context;II)I
    .registers 5

    .line 354
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 356
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p0, :cond_12

    return p1

    :cond_12
    return p2
.end method

.method public static getBoolean(Landroid/content/res/TypedArray;IIZ)Z
    .registers 4

    .line 264
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 265
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 275
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_a

    .line 277
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public static getInt(Landroid/content/res/TypedArray;III)I
    .registers 4

    .line 288
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 289
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static getResourceId(Landroid/content/res/TypedArray;III)I
    .registers 4

    .line 299
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 300
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method public static getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;
    .registers 3

    .line 310
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    .line 312
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public static getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;
    .registers 3

    .line 326
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_a

    .line 328
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public static getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;
    .registers 3

    .line 342
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_a

    .line 344
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    :cond_a
    return-object p1
.end method
