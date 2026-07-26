.class public Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.source "PadFloatingActivityHelper.java"


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public execExitAnim()V
    .registers 2

    .line 39
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 42
    :cond_7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFloatingWindow()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->clearFloatingWindowAnim(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void

    .line 46
    :cond_13
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->obtainPageIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v0

    if-ltz v0, :cond_20

    .line 48
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->execFloatingWindowExitAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_20
    return-void
.end method

.method public isFloatingModeSupport()Z
    .registers 5

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 21
    iget v1, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    const/4 v2, 0x1

    if-nez v1, :cond_c

    return v2

    :cond_c
    const/16 v3, 0x2003

    if-ne v1, v3, :cond_11

    return v2

    :cond_11
    const/16 v3, 0x1003

    if-ne v1, v3, :cond_16

    return v2

    .line 29
    :cond_16
    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    const/16 v3, 0x2eb

    if-lt v1, v3, :cond_25

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/16 v1, 0x29e

    if-le v0, v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    return v2
.end method
