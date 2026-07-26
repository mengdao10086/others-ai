.class Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;
.super Ljava/lang/Object;
.source "ResponsiveActionMenuView.java"

# interfaces
.implements Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final isDarkThemeOverlay:Z

.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$color;->miuix_default_color_on_surface_light:I

    invoke-static {p1, v0}, Lmiuix/core/util/MiuixUIUtils;->isDarkThemeOverlay(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->isDarkThemeOverlay:Z

    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 172
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    # getter for: Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    # getter for: Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$300(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    # getter for: Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$400(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method public getBackgroundColor()I
    .registers 4

    .line 177
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->isDarkThemeOverlay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 178
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

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

    .line 186
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    # getter for: Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mMaterial:Lmiuix/core/util/MaterialDayNightConfig;
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$500(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Lmiuix/core/util/MaterialDayNightConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 188
    invoke-virtual {v0, p1}, Lmiuix/core/util/MaterialDayNightConfig;->getBlurConfig(Z)Lmiuix/core/util/MaterialConfig$BlurConfig;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public isLightTheme()Z
    .registers 5

    .line 157
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    # getter for: Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendEnabled:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$200(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    # getter for: Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$300(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    # getter for: Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mBottomMenuBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$400(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_15
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 159
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getColorFromDrawable(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 161
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isLightColor(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->isDarkThemeOverlay:Z

    if-nez v0, :cond_2e

    move v1, v2

    :cond_2e
    return v1

    .line 165
    :cond_2f
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->isDarkThemeOverlay:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    .line 166
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lmiuix/appcompat/R$attr;->isLightTheme:I

    invoke-static {v0, v3, v2}, Lmiuix/internal/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_42

    move v1, v2

    :cond_42
    return v1
.end method

.method public onBlurApplyStateChanged(Z)V
    .registers 3

    .line 200
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    # setter for: Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mApplyBlur:Z
    invoke-static {v0, p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$602(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;Z)Z

    .line 201
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$3;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    # invokes: Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->updateBackground()V
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$700(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V

    return-void
.end method

.method public onBlurEnableStateChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method
