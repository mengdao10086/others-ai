.class public Lcom/miui/contentextension/utils/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# direct methods
.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 16
    const-string v0, "accessibility"

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_18

    .line 19
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 20
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method
