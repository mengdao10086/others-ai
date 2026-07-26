.class public Lmiuix/provider/ExtraSettings$System;
.super Ljava/lang/Object;
.source "ExtraSettings.java"


# direct methods
.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 3

    .line 79
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 3

    .line 301
    invoke-static {p0, p1, p2}, Lmiuix/provider/ExtraSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 3

    .line 247
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
