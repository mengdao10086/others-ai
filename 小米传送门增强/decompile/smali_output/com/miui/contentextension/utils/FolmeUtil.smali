.class public Lcom/miui/contentextension/utils/FolmeUtil;
.super Ljava/lang/Object;
.source "FolmeUtil.java"


# direct methods
.method public static doAlpha(Landroid/view/View;)V
    .registers 5

    .line 31
    invoke-static {}, Lcom/miui/contentextension/utils/PhoneInfoHelper;->getInstance()Lcom/miui/contentextension/utils/PhoneInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/PhoneInfoHelper;->lowTotalMemory()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 34
    :cond_b
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    invoke-interface {v0, v1, v1, v1, v1}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 36
    invoke-interface {v0, v1, v3}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 37
    invoke-interface {v0, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 38
    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static varargs doAlphas([Landroid/view/View;)V
    .registers 4

    .line 50
    invoke-static {}, Lcom/miui/contentextension/utils/PhoneInfoHelper;->getInstance()Lcom/miui/contentextension/utils/PhoneInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/PhoneInfoHelper;->lowTotalMemory()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 53
    :cond_b
    array-length v0, p0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    aget-object v2, p0, v1

    .line 54
    invoke-static {v2}, Lcom/miui/contentextension/utils/FolmeUtil;->doAlpha(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public static doScale(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3

    .line 148
    invoke-static {}, Lcom/miui/contentextension/utils/PhoneInfoHelper;->getInstance()Lcom/miui/contentextension/utils/PhoneInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/PhoneInfoHelper;->lowTotalMemory()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 151
    :cond_b
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0, v0, v0}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    invoke-interface {p0, p1}, Lmiuix/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static varargs doScaleOnTouch([Landroid/view/View;)V
    .registers 5

    .line 155
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p0, v1

    .line 156
    new-instance v3, Lcom/miui/contentextension/utils/FolmeUtil$3;

    invoke-direct {v3}, Lcom/miui/contentextension/utils/FolmeUtil$3;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method public static doTint(Landroid/view/View;)V
    .registers 5

    .line 87
    invoke-static {}, Lcom/miui/contentextension/utils/PhoneInfoHelper;->getInstance()Lcom/miui/contentextension/utils/PhoneInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/PhoneInfoHelper;->lowTotalMemory()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 90
    :cond_b
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v1, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v1}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static doTintScale(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3

    .line 254
    invoke-static {}, Lcom/miui/contentextension/utils/PhoneInfoHelper;->getInstance()Lcom/miui/contentextension/utils/PhoneInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/PhoneInfoHelper;->lowTotalMemory()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 257
    :cond_b
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    invoke-interface {p0, p1}, Lmiuix/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static varargs doTintScaleOnTouch([Landroid/view/View;)V
    .registers 5

    .line 261
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p0, v1

    .line 262
    new-instance v3, Lcom/miui/contentextension/utils/FolmeUtil$5;

    invoke-direct {v3}, Lcom/miui/contentextension/utils/FolmeUtil$5;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method public static varargs doTints([Landroid/view/View;)V
    .registers 4

    .line 98
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p0, v1

    .line 99
    invoke-static {v2}, Lcom/miui/contentextension/utils/FolmeUtil;->doTint(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method
