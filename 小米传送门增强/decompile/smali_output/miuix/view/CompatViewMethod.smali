.class public Lmiuix/view/CompatViewMethod;
.super Ljava/lang/Object;
.source "CompatViewMethod.java"


# direct methods
.method public static setActivityTranslucent(Landroid/app/Activity;Z)V
    .registers 4

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTranslucent(Z)Z

    :cond_9
    return-void
.end method

.method public static setForceDarkAllowed(Landroid/view/View;Z)V
    .registers 4

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    :cond_9
    return-void
.end method
