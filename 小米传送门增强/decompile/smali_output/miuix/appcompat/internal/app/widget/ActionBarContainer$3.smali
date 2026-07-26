.class Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;
.super Ljava/lang/Object;
.source "ActionBarContainer.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final isDarkThemeOverlay:Z

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .registers 3

    .line 197
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$color;->miuix_default_color_on_surface_light:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->isDarkThemeOverlay(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->isDarkThemeOverlay:Z

    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 216
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()I
    .registers 4

    .line 221
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->isDarkThemeOverlay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 222
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lmiuix/theme/R$attr;->colorSurface:I

    invoke-static {v0, v2, v1}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;II)I

    move-result v0

    return v0

    :cond_12
    return v1
.end method

.method public getBlurConfig(Z)Lmiuix/core/util/MaterialConfig$BlurConfig;
    .registers 3

    .line 230
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mMaterial:Lmiuix/core/util/MaterialDayNightConfig;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/core/util/MaterialDayNightConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 232
    invoke-virtual {v0, p1}, Lmiuix/core/util/MaterialDayNightConfig;->getBlurConfig(Z)Lmiuix/core/util/MaterialConfig$BlurConfig;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public isLightTheme()Z
    .registers 5

    .line 202
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    .line 203
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getColorFromDrawable(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 205
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 206
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isLightColor(I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->isDarkThemeOverlay:Z

    if-nez v0, :cond_25

    move v1, v2

    :cond_25
    return v1

    .line 209
    :cond_26
    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->isDarkThemeOverlay:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 210
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lmiuix/appcompat/R$attr;->isLightTheme:I

    invoke-static {v0, v3, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_39

    move v1, v2

    :cond_39
    return v1
.end method

.method public onBlurApplyStateChanged(Z)V
    .registers 4

    if-eqz p1, :cond_9

    .line 256
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x0

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$702(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    goto :goto_f

    .line 258
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    const/4 v1, 0x1

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mDrawBackground:Z
    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$702(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    .line 260
    :goto_f
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 261
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarView:Lmiuix/appcompat/internal/app/widget/ActionBarView;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setApplyBgBlur(Z)V

    .line 263
    :cond_20
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 264
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mActionBarContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->updateBackground(Z)V

    .line 266
    :cond_31
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .registers 4

    .line 239
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mIsSplit:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 240
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;Z)Z

    .line 241
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 242
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 243
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mUserApplySplitActionBarBgBlur:Ljava/lang/Boolean;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2e

    :cond_28
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mInternalApplySpiltBgBlur:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Z

    move-result v0

    :goto_2e
    if-eqz p1, :cond_43

    .line 245
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setSupportBlur(Z)V

    .line 246
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->setEnableBlur(Z)V

    .line 248
    :cond_43
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$3;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->mResidentActionMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/view/BlurableWidget;->applyBlur(Z)V

    :cond_4c
    return-void
.end method
