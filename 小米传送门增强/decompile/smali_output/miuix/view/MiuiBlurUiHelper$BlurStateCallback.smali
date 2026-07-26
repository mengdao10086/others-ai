.class public interface abstract Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;
.super Ljava/lang/Object;
.source "MiuiBlurUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/view/MiuiBlurUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BlurStateCallback"
.end annotation


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getBlurConfig(Z)Lmiuix/core/util/MaterialConfig$BlurConfig;
    .registers 2

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isLightTheme()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onBlurApplyStateChanged(Z)V
.end method

.method public abstract onBlurEnableStateChanged(Z)V
.end method

.method public onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V
    .registers 2

    .line 0
    return-void
.end method
