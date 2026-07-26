.class public final Landroidx/core/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# direct methods
.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .registers 7

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    return v0

    .line 102
    :cond_8
    invoke-static {p1}, Landroidx/core/app/AppOpsManagerCompat;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_10

    return p2

    :cond_10
    if-nez p4, :cond_24

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_23

    .line 109
    array-length v1, p4

    if-gtz v1, :cond_20

    goto :goto_23

    .line 112
    :cond_20
    aget-object p4, p4, p2

    goto :goto_24

    :cond_23
    :goto_23
    return v0

    .line 115
    :cond_24
    :goto_24
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-ne v0, p3, :cond_39

    .line 118
    invoke-static {v1, p4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 122
    invoke-static {p0, p3, p1, p4}, Landroidx/core/app/AppOpsManagerCompat;->checkOrNoteProxyOp(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_3d

    .line 124
    :cond_39
    invoke-static {p0, p1, p4}, Landroidx/core/app/AppOpsManagerCompat;->noteProxyOpNoThrow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :goto_3d
    if-nez p0, :cond_40

    goto :goto_41

    :cond_40
    const/4 p2, -0x2

    :goto_41
    return p2
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .line 143
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 144
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {p0, p1, v0, v1, v2}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method
