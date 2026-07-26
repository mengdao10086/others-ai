.class public Lmiuix/internal/util/TaggingDrawableUtil;
.super Ljava/lang/Object;
.source "TaggingDrawableUtil.java"


# static fields
.field private static final STATES_TAGS:[I

.field private static final STATE_SET_FIRST:[I

.field private static final STATE_SET_LAST:[I

.field private static final STATE_SET_MIDDLE:[I

.field private static final STATE_SET_SINGLE:[I

.field private static mPaddingLarge:I = -0x1

.field private static mPaddingSingle:I = -0x1

.field private static mPaddingSmall:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const v0, 0x10100a3

    const v1, 0x10100a4

    const v2, 0x10100a5

    const v3, 0x10100a6

    .line 19
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    sput-object v4, Lmiuix/internal/util/TaggingDrawableUtil;->STATES_TAGS:[I

    .line 26
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    .line 27
    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    .line 28
    filled-new-array {v2}, [I

    move-result-object v0

    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    .line 29
    filled-new-array {v3}, [I

    move-result-object v0

    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_LAST:[I

    return-void
.end method

.method private static getDimen(Landroid/content/Context;I)I
    .registers 2

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static updateBackgroundState(Landroid/view/View;II)V
    .registers 6

    if-eqz p0, :cond_3d

    if-nez p2, :cond_5

    goto :goto_3d

    .line 40
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_21

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lmiuix/internal/util/TaggingDrawableUtil;->STATES_TAGS:[I

    .line 42
    invoke-static {v1, v2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 43
    new-instance v1, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    invoke-direct {v1, v0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    .line 47
    :cond_21
    instance-of p0, v0, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    if-eqz p0, :cond_3d

    .line 48
    check-cast v0, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    const/4 p0, 0x1

    if-ne p2, p0, :cond_2d

    .line 51
    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    goto :goto_3a

    :cond_2d
    if-nez p1, :cond_32

    .line 53
    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    goto :goto_3a

    :cond_32
    sub-int/2addr p2, p0

    if-ne p1, p2, :cond_38

    .line 55
    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_LAST:[I

    goto :goto_3a

    .line 57
    :cond_38
    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    .line 59
    :goto_3a
    invoke-virtual {v0, p0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    :cond_3d
    :goto_3d
    return-void
.end method

.method public static updateItemBackground(Landroid/view/View;II)V
    .registers 3

    .line 32
    invoke-static {p0, p1, p2}, Lmiuix/internal/util/TaggingDrawableUtil;->updateBackgroundState(Landroid/view/View;II)V

    .line 33
    invoke-static {p0, p1, p2}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    return-void
.end method

.method public static updateItemPadding(Landroid/view/View;II)V
    .registers 10

    if-eqz p0, :cond_6d

    if-nez p2, :cond_5

    goto :goto_6d

    .line 67
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 72
    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_item_min_height:I

    invoke-static {v0, v3}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne p2, v4, :cond_31

    .line 74
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    if-ne p1, v5, :cond_2d

    .line 75
    sget p1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_single_item:I

    invoke-static {v0, p1}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    move-result p1

    sput p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    .line 77
    :cond_2d
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSingle:I

    :goto_2f
    move p2, p1

    goto :goto_67

    .line 80
    :cond_31
    sget v6, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    if-ne v6, v5, :cond_3d

    .line 81
    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-static {v0, v6}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    move-result v6

    sput v6, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 83
    :cond_3d
    sget v6, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    if-ne v6, v5, :cond_49

    .line 84
    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    invoke-static {v0, v5}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    move-result v5

    sput v5, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    :cond_49
    if-nez p1, :cond_56

    .line 87
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    .line 88
    sget p2, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 89
    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_first_item_min_height:I

    invoke-static {v0, v3}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    move-result v3

    goto :goto_67

    :cond_56
    sub-int/2addr p2, v4

    if-ne p1, p2, :cond_64

    .line 91
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    .line 92
    sget p2, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingLarge:I

    .line 93
    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_last_item_min_height:I

    invoke-static {v0, v3}, Lmiuix/internal/util/TaggingDrawableUtil;->getDimen(Landroid/content/Context;I)I

    move-result v3

    goto :goto_67

    .line 95
    :cond_64
    sget p1, Lmiuix/internal/util/TaggingDrawableUtil;->mPaddingSmall:I

    goto :goto_2f

    .line 99
    :goto_67
    invoke-virtual {p0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 100
    invoke-virtual {p0, v1, p1, v2, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_6d
    :goto_6d
    return-void
.end method
