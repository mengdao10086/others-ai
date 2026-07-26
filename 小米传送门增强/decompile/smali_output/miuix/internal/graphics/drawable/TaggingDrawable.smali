.class public Lmiuix/internal/graphics/drawable/TaggingDrawable;
.super Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;
.source "TaggingDrawable.java"


# instance fields
.field private mRawState:[I

.field private mTaggingState:[I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;[I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;[I)V
    .registers 4

    .line 21
    invoke-direct {p0, p1}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 13
    new-array v0, p1, [I

    iput-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    .line 14
    new-array p1, p1, [I

    iput-object p1, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    .line 22
    invoke-virtual {p0, p2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    return-void
.end method

.method public static containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z
    .registers 9

    .line 79
    invoke-static {p0}, Lmiuix/internal/graphics/drawable/StateListDrawableReflect;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_20

    .line 81
    invoke-static {p0, v2}, Lmiuix/internal/graphics/drawable/StateListDrawableReflect;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v3

    .line 82
    array-length v4, v3

    move v5, v1

    :goto_e
    if-ge v5, v4, :cond_1d

    aget v6, v3, v5

    .line 83
    invoke-static {p1, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ltz v6, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_20
    return v1
.end method

.method private static mergeTaggingState([I[I)[I
    .registers 5

    .line 49
    array-length v0, p1

    array-length v1, p0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 50
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public setState([I)Z
    .registers 3

    .line 38
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 39
    iput-object p1, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    .line 40
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    invoke-static {v0, p1}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mergeTaggingState([I[I)[I

    move-result-object p1

    invoke-super {p0, p1}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->setState([I)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public setTaggingState([I)Z
    .registers 3

    .line 26
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 27
    iput-object p1, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mTaggingState:[I

    .line 28
    iget-object v0, p0, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mRawState:[I

    invoke-static {p1, v0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->mergeTaggingState([I[I)[I

    move-result-object p1

    invoke-super {p0, p1}, Lmiuix/internal/graphics/drawable/DrawableWrapperCompat;->setState([I)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method
