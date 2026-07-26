.class public Lmiuix/appcompat/app/DialogContract;
.super Ljava/lang/Object;
.source "DialogContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/DialogContract$ValueList;,
        Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;,
        Lmiuix/appcompat/app/DialogContract$PanelPosSpec;,
        Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;,
        Lmiuix/appcompat/app/DialogContract$OrientationSpec;,
        Lmiuix/appcompat/app/DialogContract$DimensConfig;
    }
.end annotation


# direct methods
.method public static insetsToRect(Landroid/graphics/Insets;)Landroid/graphics/Rect;
    .registers 3

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 45
    :cond_8
    iget v1, p0, Landroid/graphics/Insets;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 46
    iget v1, p0, Landroid/graphics/Insets;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 47
    iget v1, p0, Landroid/graphics/Insets;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 48
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static mergeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    .line 32
    iget v2, p0, Landroid/graphics/Rect;->left:I

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    if-eqz p1, :cond_11

    iget v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    if-eqz p0, :cond_1d

    .line 33
    iget v2, p0, Landroid/graphics/Rect;->top:I

    goto :goto_1e

    :cond_1d
    move v2, v1

    :goto_1e
    if-eqz p1, :cond_23

    iget v3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_24

    :cond_23
    move v3, v1

    :goto_24
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    if-eqz p0, :cond_2f

    .line 34
    iget v2, p0, Landroid/graphics/Rect;->right:I

    goto :goto_30

    :cond_2f
    move v2, v1

    :goto_30
    if-eqz p1, :cond_35

    iget v3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_36

    :cond_35
    move v3, v1

    :goto_36
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    if-eqz p0, :cond_41

    .line 35
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_42

    :cond_41
    move p0, v1

    :goto_42
    if-eqz p1, :cond_46

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_46
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method
