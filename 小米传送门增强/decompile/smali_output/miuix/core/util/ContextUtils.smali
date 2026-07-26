.class public Lmiuix/core/util/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# direct methods
.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .line 26
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_12

    .line 27
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 28
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 30
    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method
