.class public Lmiuix/viewpager/widget/ViewPager;
.super Landroidx/viewpager/widget/OriginalViewPager;
.source "ViewPager.java"


# instance fields
.field mDragEnabled:Z


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 26
    iget-boolean v0, p0, Lmiuix/viewpager/widget/ViewPager;->mDragEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 30
    :cond_6
    :try_start_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_a} :catch_b

    return p1

    :catch_b
    move-exception p1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch IllegalArgumentException:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewPager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 39
    iget-boolean v0, p0, Lmiuix/viewpager/widget/ViewPager;->mDragEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 43
    :cond_6
    :try_start_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_a} :catch_b

    return p1

    :catch_b
    move-exception p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Catch IllegalArgumentException:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewPager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setDraggable(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lmiuix/viewpager/widget/ViewPager;->mDragEnabled:Z

    return-void
.end method
