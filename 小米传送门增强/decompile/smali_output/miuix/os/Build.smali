.class public Lmiuix/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# static fields
.field public static final IS_AUTOMOTIVE:Z

.field public static final IS_DEBUGGABLE:Z

.field public static final IS_FLIP:Z

.field public static final IS_FOLDABLE:Z

.field public static final IS_FOLD_INSIDE:Z

.field public static final IS_FOLD_OUTSIDE:Z

.field public static final IS_INDEPENDENT_REAR:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_REAR:Z

.field public static final IS_TABLET:Z

.field public static final IS_WEAR:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 9
    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 14
    invoke-static {}, Lmiuix/os/Build;->isTablet()Z

    move-result v0

    sput-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 19
    invoke-static {}, Lmiuix/os/Build;->isAutoMotive()Z

    move-result v0

    sput-boolean v0, Lmiuix/os/Build;->IS_AUTOMOTIVE:Z

    .line 24
    invoke-static {}, Lmiuix/os/Build;->isWear()Z

    move-result v0

    sput-boolean v0, Lmiuix/os/Build;->IS_WEAR:Z

    .line 52
    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    move v0, v2

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    sput-boolean v0, Lmiuix/os/Build;->IS_DEBUGGABLE:Z

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const-string v4, "persist.sys.muiltdisplay_type"

    const/4 v5, 0x2

    if-le v0, v3, :cond_85

    .line 58
    const-string v0, "persist.sys.multi_display_type"

    invoke-static {v0, v2}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v2, :cond_6c

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v5, :cond_48

    move v3, v2

    goto :goto_49

    :cond_48
    move v3, v1

    .line 61
    :goto_49
    sput-boolean v3, Lmiuix/os/Build;->IS_REAR:Z

    const/4 v3, 0x3

    if-ne v0, v3, :cond_50

    move v3, v2

    goto :goto_51

    :cond_50
    move v3, v1

    .line 62
    :goto_51
    sput-boolean v3, Lmiuix/os/Build;->IS_FOLD_INSIDE:Z

    const/4 v3, 0x4

    if-ne v0, v3, :cond_58

    move v3, v2

    goto :goto_59

    :cond_58
    move v3, v1

    .line 63
    :goto_59
    sput-boolean v3, Lmiuix/os/Build;->IS_FLIP:Z

    const/4 v3, 0x5

    if-ne v0, v3, :cond_60

    move v3, v2

    goto :goto_61

    :cond_60
    move v3, v1

    .line 64
    :goto_61
    sput-boolean v3, Lmiuix/os/Build;->IS_FOLD_OUTSIDE:Z

    const/4 v3, 0x6

    if-ne v0, v3, :cond_68

    move v0, v2

    goto :goto_69

    :cond_68
    move v0, v1

    .line 65
    :goto_69
    sput-boolean v0, Lmiuix/os/Build;->IS_INDEPENDENT_REAR:Z

    goto :goto_9d

    .line 67
    :cond_6c
    invoke-static {v4, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_74

    move v3, v2

    goto :goto_75

    :cond_74
    move v3, v1

    .line 68
    :goto_75
    sput-boolean v3, Lmiuix/os/Build;->IS_REAR:Z

    if-ne v0, v5, :cond_7b

    move v0, v2

    goto :goto_7c

    :cond_7b
    move v0, v1

    .line 69
    :goto_7c
    sput-boolean v0, Lmiuix/os/Build;->IS_FOLD_INSIDE:Z

    .line 70
    sput-boolean v1, Lmiuix/os/Build;->IS_FLIP:Z

    .line 71
    sput-boolean v1, Lmiuix/os/Build;->IS_FOLD_OUTSIDE:Z

    .line 72
    sput-boolean v1, Lmiuix/os/Build;->IS_INDEPENDENT_REAR:Z

    goto :goto_9d

    .line 75
    :cond_85
    invoke-static {v4, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_8d

    move v3, v2

    goto :goto_8e

    :cond_8d
    move v3, v1

    .line 76
    :goto_8e
    sput-boolean v3, Lmiuix/os/Build;->IS_REAR:Z

    if-ne v0, v5, :cond_94

    move v0, v2

    goto :goto_95

    :cond_94
    move v0, v1

    .line 77
    :goto_95
    sput-boolean v0, Lmiuix/os/Build;->IS_FOLD_INSIDE:Z

    .line 78
    sput-boolean v1, Lmiuix/os/Build;->IS_FLIP:Z

    .line 79
    sput-boolean v1, Lmiuix/os/Build;->IS_FOLD_OUTSIDE:Z

    .line 80
    sput-boolean v1, Lmiuix/os/Build;->IS_INDEPENDENT_REAR:Z

    .line 82
    :goto_9d
    sget-boolean v0, Lmiuix/os/Build;->IS_FOLD_INSIDE:Z

    if-nez v0, :cond_a9

    sget-boolean v0, Lmiuix/os/Build;->IS_FOLD_OUTSIDE:Z

    if-nez v0, :cond_a9

    sget-boolean v0, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz v0, :cond_aa

    :cond_a9
    move v1, v2

    :cond_aa
    sput-boolean v1, Lmiuix/os/Build;->IS_FOLDABLE:Z

    return-void
.end method

.method private static isAutoMotive()Z
    .registers 2

    .line 92
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "automotive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isTablet()Z
    .registers 2

    .line 87
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isWear()Z
    .registers 2

    .line 97
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
