.class public Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.source "FoldFloatingActivityHelper.java"


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

    .line 41
    invoke-static {}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isSupportTransWithClipAnim()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 44
    :cond_7
    invoke-virtual {p0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFloatingWindow()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->clearFloatingWindowAnim(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void

    .line 48
    :cond_13
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->obtainPageIndex(Lmiuix/appcompat/app/AppCompatActivity;)I

    move-result v0

    if-ltz v0, :cond_20

    .line 50
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->execFloatingWindowExitAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V

    :cond_20
    return-void
.end method

.method public isFloatingModeSupport()Z
    .registers 6

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lmiuix/core/util/EnvStateManager;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x258

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2f

    .line 24
    iget v1, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    const/16 v2, 0x2003

    const/4 v4, 0x1

    if-ne v1, v2, :cond_19

    return v4

    .line 26
    :cond_19
    invoke-static {v1}, Lmiuix/core/util/ScreenModeHelper;->isInFreeFormMode(I)Z

    move-result v1

    if-nez v1, :cond_20

    return v4

    .line 29
    :cond_20
    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    const/16 v2, 0x2eb

    if-lt v1, v2, :cond_2f

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/16 v1, 0x29e

    if-le v0, v1, :cond_2f

    move v3, v4

    :cond_2f
    return v3
.end method
