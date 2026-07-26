.class public Lcom/miui/contentextension/view/HorizontalScrollViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "HorizontalScrollViewPager.java"


# instance fields
.field private mCanHScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 30
    iget-boolean v0, p0, Lcom/miui/contentextension/view/HorizontalScrollViewPager;->mCanHScroll:Z

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 36
    iget-boolean v0, p0, Lcom/miui/contentextension/view/HorizontalScrollViewPager;->mCanHScroll:Z

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public setCanHScroll(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/miui/contentextension/view/HorizontalScrollViewPager;->mCanHScroll:Z

    return-void
.end method
