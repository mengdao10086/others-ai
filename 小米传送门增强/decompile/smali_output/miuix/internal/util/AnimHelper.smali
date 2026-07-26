.class public Lmiuix/internal/util/AnimHelper;
.super Ljava/lang/Object;
.source "AnimHelper.java"


# static fields
.field private static volatile sIsDebugEnabled:Z = false


# direct methods
.method public static synthetic $r8$lambda$090dziXw8w7or7gWr-5GFy8fBbs(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lmiuix/internal/util/AnimHelper;->lambda$addItemPressEffect$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static addItemPressEffect(Landroid/view/View;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 34
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$attr;->itemPressEffectForeground:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 37
    new-instance v0, Lmiuix/internal/util/AnimHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lmiuix/internal/util/AnimHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1e
    return-void
.end method

.method public static addPressAnim(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-static {p0, v0}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;Lmiuix/animation/IHoverStyle$HoverEffect;)V

    return-void
.end method

.method public static addPressAnim(Landroid/view/View;Lmiuix/animation/IHoverStyle$HoverEffect;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v2, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 56
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static addPressAnimWithBg(Landroid/view/View;)V
    .registers 7

    .line 60
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmiuix/animation/ITouchStyle;->setTint(I)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    new-array v3, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 61
    invoke-interface {v0, v2, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    .line 62
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v2

    invoke-interface {v2, v1}, Lmiuix/animation/IHoverStyle;->setTint(I)Lmiuix/animation/IHoverStyle;

    move-result-object v2

    sget-object v3, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 63
    invoke-interface {v2, v3}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$attr;->isLightTheme:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v3

    if-eqz v3, :cond_45

    const/high16 v3, 0x14000000

    .line 67
    invoke-interface {v0, v3}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    .line 68
    invoke-interface {v2, v3}, Lmiuix/animation/IHoverStyle;->setBackgroundColor(I)Lmiuix/animation/IHoverStyle;

    goto :goto_4e

    :cond_45
    const v3, 0x24ffffff

    .line 70
    invoke-interface {v0, v3}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(I)Lmiuix/animation/ITouchStyle;

    .line 71
    invoke-interface {v2, v3}, Lmiuix/animation/IHoverStyle;->setBackgroundColor(I)Lmiuix/animation/IHoverStyle;

    .line 73
    :goto_4e
    new-array v3, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p0, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 74
    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v2, p0, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static isDialogDebugInAndroidUIThreadEnabled()Z
    .registers 1

    .line 99
    sget-boolean v0, Lmiuix/internal/util/AnimHelper;->sIsDebugEnabled:Z

    return v0
.end method

.method private static synthetic lambda$addItemPressEffect$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_19

    .line 40
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_19

    .line 41
    invoke-virtual {p0, v2}, Landroid/view/View;->setHovered(Z)V

    :cond_19
    :goto_19
    return v2
.end method
