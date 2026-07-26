.class public Lmiuix/recyclerview/card/LiteUtils;
.super Ljava/lang/Object;
.source "LiteUtils.java"


# direct methods
.method public static getThemeDimens(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I
    .registers 5

    .line 51
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, p2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_15

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p0, :cond_15

    .line 53
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static getThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 43
    filled-new-array {p1}, [I

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method
