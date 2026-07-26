.class final Landroidx/core/view/WindowInsetsCompat$TypeImpl30;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeImpl30"
.end annotation


# direct methods
.method static toPlatformType(I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_3
    const/16 v3, 0x100

    if-gt v2, v3, :cond_54

    and-int v3, p0, v2

    if-eqz v3, :cond_51

    if-eq v2, v1, :cond_4c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_47

    const/4 v3, 0x4

    if-eq v2, v3, :cond_42

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3d

    const/16 v3, 0x10

    if-eq v2, v3, :cond_38

    const/16 v3, 0x20

    if-eq v2, v3, :cond_33

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x80

    if-eq v2, v3, :cond_28

    goto :goto_51

    .line 2096
    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    :goto_2c
    or-int/2addr v0, v3

    goto :goto_51

    .line 2093
    :cond_2e
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v3

    goto :goto_2c

    .line 2090
    :cond_33
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    goto :goto_2c

    .line 2087
    :cond_38
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    goto :goto_2c

    .line 2084
    :cond_3d
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    goto :goto_2c

    .line 2081
    :cond_42
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v3

    goto :goto_2c

    .line 2078
    :cond_47
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    goto :goto_2c

    .line 2075
    :cond_4c
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    goto :goto_2c

    :cond_51
    :goto_51
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_54
    return v0
.end method
