.class public final Lcom/miui/contentextension/utils/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/miui/contentextension/utils/PackageHelper;

    invoke-direct {v0}, Lcom/miui/contentextension/utils/PackageHelper;-><init>()V

    sput-object v0, Lcom/miui/contentextension/utils/PackageHelper;->INSTANCE:Lcom/miui/contentextension/utils/PackageHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isAtLeastAndroidVersionByCodeName(C)Z
    .registers 6

    .line 10
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_21

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    if-ltz p1, :cond_21

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    if-gtz p1, :cond_21

    move v2, v3

    :cond_21
    return v2
.end method

.method static synthetic isAtLeastAndroidVersionByCodeName$default(Lcom/miui/contentextension/utils/PackageHelper;CILjava/lang/Object;)Z
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/16 p1, 0x53

    .line 9
    :cond_6
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/PackageHelper;->isAtLeastAndroidVersionByCodeName(C)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final atLeastAndroidS()Z
    .registers 4

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-gt v0, v1, :cond_11

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/miui/contentextension/utils/PackageHelper;->isAtLeastAndroidVersionByCodeName$default(Lcom/miui/contentextension/utils/PackageHelper;CILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    move v2, v1

    :cond_11
    :goto_11
    return v2
.end method

.method public final getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 16
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_15

    :catch_15
    return v0
.end method

.method public final isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 26
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    const/4 v1, 0x1

    :catch_1a
    return v1
.end method
