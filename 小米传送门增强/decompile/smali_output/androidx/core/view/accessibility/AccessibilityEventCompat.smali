.class public final Landroidx/core/view/accessibility/AccessibilityEventCompat;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityEventCompat$Api19Impl;
    }
.end annotation


# direct methods
.method public static getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I
    .registers 1

    .line 349
    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityEventCompat$Api19Impl;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p0

    return p0
.end method

.method public static setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
    .registers 2

    .line 328
    invoke-static {p0, p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat$Api19Impl;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method
