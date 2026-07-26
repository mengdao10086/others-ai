.class public abstract Lmiuix/spring/view/SpringHelper;
.super Ljava/lang/Object;
.source "SpringHelper.java"

# interfaces
.implements Lmiuix/spring/view/SpringStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/spring/view/SpringHelper$AxisHandler;
    }
.end annotation


# instance fields
.field private mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

.field private mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lmiuix/spring/view/SpringHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/spring/view/SpringHelper$1;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    .line 27
    new-instance v0, Lmiuix/spring/view/SpringHelper$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/spring/view/SpringHelper$2;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    return-void
.end method


# virtual methods
.method protected abstract canScrollHorizontally()Z
.end method

.method protected abstract canScrollVertically()Z
.end method

.method protected abstract dispatchNestedPreScroll(II[I[II)Z
.end method

.method protected abstract dispatchNestedScroll(IIII[II[I)V
.end method

.method protected abstract getHeight()I
.end method

.method public getHorizontalDistance()I
    .registers 2

    .line 48
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v0, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    float-to-int v0, v0

    return v0
.end method

.method public getVerticalDistance()I
    .registers 2

    .line 56
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v0, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    float-to-int v0, v0

    return v0
.end method

.method protected abstract getWidth()I
.end method

.method public handleNestedPreScroll(II[I[II)Z
    .registers 18

    move-object v6, p0

    const/4 v7, 0x0

    .line 75
    filled-new-array {v7, v7}, [I

    move-result-object v8

    .line 78
    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->springAvailable()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_36

    if-nez p5, :cond_11

    move v0, v9

    goto :goto_12

    :cond_11
    move v0, v7

    .line 80
    :goto_12
    filled-new-array {p1, p2}, [I

    move-result-object v1

    .line 81
    iget-object v2, v6, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {v2, v1, v8, v0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedPreScroll([I[IZ)Z

    move-result v2

    .line 82
    iget-object v3, v6, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {v3, v1, v8, v0}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedPreScroll([I[IZ)Z

    move-result v0

    or-int/2addr v0, v2

    .line 83
    aget v2, v1, v7

    .line 84
    aget v1, v1, v9

    if-eqz v0, :cond_34

    .line 86
    iget-object v3, v6, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v3, v3, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    iget-object v4, v6, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v4, v4, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-interface {p0, v3, v4}, Lmiuix/spring/view/SpringStateListener;->onSpringDistanceChanged(FF)V

    :cond_34
    move v10, v0

    goto :goto_39

    :cond_36
    move v2, p1

    move v1, p2

    move v10, v7

    :goto_39
    if-eqz v10, :cond_41

    .line 93
    aget v0, v8, v7

    sub-int/2addr v2, v0

    .line 94
    aget v0, v8, v9

    sub-int/2addr v1, v0

    :cond_41
    move v11, v2

    move v2, v1

    move v1, v11

    move-object v0, p0

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 97
    invoke-virtual/range {v0 .. v5}, Lmiuix/spring/view/SpringHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    or-int/2addr v0, v10

    if-eqz p3, :cond_5f

    .line 101
    aget v1, p3, v7

    aget v2, v8, v7

    add-int/2addr v1, v2

    aput v1, p3, v7

    .line 102
    aget v1, p3, v9

    aget v2, v8, v9

    add-int/2addr v1, v2

    aput v1, p3, v9

    :cond_5f
    return v0
.end method

.method public handleNestedScroll(IIII[II[I)V
    .registers 22

    move-object v8, p0

    move-object/from16 v9, p5

    move/from16 v10, p6

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez p7, :cond_12

    const/4 v0, 0x2

    .line 110
    new-array v0, v0, [I

    aput v12, v0, v12

    aput v12, v0, v11

    move-object v13, v0

    goto :goto_14

    :cond_12
    move-object/from16 v13, p7

    :goto_14
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v13

    .line 113
    invoke-virtual/range {v0 .. v7}, Lmiuix/spring/view/SpringHelper;->dispatchNestedScroll(IIII[II[I)V

    .line 115
    aget v0, v13, v12

    sub-int v0, p3, v0

    .line 116
    aget v1, v13, v11

    sub-int v1, p4, v1

    if-nez v0, :cond_30

    if-eqz v1, :cond_4b

    .line 118
    :cond_30
    iget-object v2, v8, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {v2, v0, v9, v10, v13}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedScroll(I[II[I)Z

    move-result v0

    .line 119
    iget-object v2, v8, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    invoke-virtual {v2, v1, v9, v10, v13}, Lmiuix/spring/view/SpringHelper$AxisHandler;->handleNestedScroll(I[II[I)Z

    move-result v1

    if-nez v0, :cond_40

    if-eqz v1, :cond_4b

    .line 121
    :cond_40
    iget-object v0, v8, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v0, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    iget-object v1, v8, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v1, v1, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-interface {p0, v0, v1}, Lmiuix/spring/view/SpringStateListener;->onSpringDistanceChanged(FF)V

    :cond_4b
    return-void
.end method

.method public resetDistance()V
    .registers 5

    .line 64
    iget-object v0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v1, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    iget-object v1, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iget v1, v1, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    .line 65
    :goto_15
    iget-object v3, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$AxisHandler;

    iput v2, v3, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 66
    iput v2, v3, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    .line 67
    iput v2, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 68
    iput v2, v0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    if-eqz v1, :cond_26

    .line 70
    iget v0, v3, Lmiuix/spring/view/SpringHelper$AxisHandler;->mAllDistance:F

    invoke-interface {p0, v2, v0}, Lmiuix/spring/view/SpringStateListener;->onSpringDistanceChanged(FF)V

    :cond_26
    return-void
.end method

.method protected abstract springAvailable()Z
.end method

.method protected abstract vibrate()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
