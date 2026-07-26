.class Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method


# virtual methods
.method addFlags(I)V
    .registers 3

    .line 148
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method

.method boundsMatch()Z
    .registers 5

    .line 166
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 167
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_13

    return v2

    .line 172
    :cond_13
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v1, v0, 0x70

    if-eqz v1, :cond_27

    .line 173
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_27

    return v2

    .line 178
    :cond_27
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v1, v0, 0x700

    if-eqz v1, :cond_3b

    .line 179
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_3b

    return v2

    .line 184
    :cond_3b
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v1, v0, 0x7000

    if-eqz v1, :cond_4f

    .line 185
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    and-int/2addr v0, v1

    if-nez v0, :cond_4f

    return v2

    :cond_4f
    const/4 v0, 0x1

    return v0
.end method

.method compare(II)I
    .registers 3

    .line 0
    if-le p1, p2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-ne p1, p2, :cond_8

    const/4 p1, 0x2

    return p1

    :cond_8
    const/4 p1, 0x4

    return p1
.end method

.method resetFlags()V
    .registers 2

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method

.method setBounds(IIII)V
    .registers 5

    .line 141
    iput p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 142
    iput p2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 143
    iput p3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 144
    iput p4, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    return-void
.end method
