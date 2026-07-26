.class Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInfo"
.end annotation


# instance fields
.field public channel:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public targetSdkVersion:I

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;->targetSdkVersion:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/utils/DeviceUtils-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/utils/DeviceUtils$AppInfo;-><init>()V

    return-void
.end method
