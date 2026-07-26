.class public Lcom/miui/contentextension/utils/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field private static final LOCATION_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 17
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/utils/PermissionUtils;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 54
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
