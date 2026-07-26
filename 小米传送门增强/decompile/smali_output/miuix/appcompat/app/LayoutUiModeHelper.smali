.class public Lmiuix/appcompat/app/LayoutUiModeHelper;
.super Ljava/lang/Object;
.source "LayoutUiModeHelper.java"


# direct methods
.method public static autoSetLayoutUiMode(Landroid/app/Activity;)V
    .registers 3

    .line 26
    instance-of v0, p0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1f

    .line 27
    move-object v0, p0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 28
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFloatingWindowTheme()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1e

    const/high16 v0, 0x8000000

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1e
    return-void

    :cond_1f
    if-eqz p0, :cond_2a

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 40
    invoke-static {p0, v0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;Landroid/view/Window;)V

    :cond_2a
    return-void
.end method

.method public static autoSetLayoutUiMode(Landroid/app/Activity;Landroid/view/Window;)V
    .registers 5

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v1, "mWindowingMode=freeform"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 53
    const-string v2, "miui-magic-windows"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 55
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result p0

    const/high16 v2, 0x8000000

    if-nez p0, :cond_28

    if-nez v0, :cond_24

    if-nez v1, :cond_28

    .line 56
    :cond_24
    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2b

    .line 60
    :cond_28
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_2b
    const/high16 p0, 0x4000000

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
