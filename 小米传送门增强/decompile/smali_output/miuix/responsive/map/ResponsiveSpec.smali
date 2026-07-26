.class public Lmiuix/responsive/map/ResponsiveSpec;
.super Ljava/lang/Object;
.source "ResponsiveSpec.java"


# direct methods
.method public static isScreenOrientationMatch(II)Z
    .registers 4

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    if-ne p0, p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method
