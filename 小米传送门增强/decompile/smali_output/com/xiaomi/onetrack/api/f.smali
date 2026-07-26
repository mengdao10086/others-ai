.class public Lcom/xiaomi/onetrack/api/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x4

.field private static final d:I = 0x8

.field private static final e:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xiaomi/onetrack/Configuration;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isGAIDEnable()Z

    move-result v0

    .line 24
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isIMSIEnable()Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x2

    .line 28
    :cond_10
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isIMEIEnable()Z

    move-result v1

    if-eqz v1, :cond_18

    or-int/lit8 v0, v0, 0x4

    .line 31
    :cond_18
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isExceptionCatcherEnable()Z

    move-result v1

    if-eqz v1, :cond_20

    or-int/lit8 v0, v0, 0x8

    .line 34
    :cond_20
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->isOverrideMiuiRegionSetting()Z

    move-result p0

    if-eqz p0, :cond_28

    or-int/lit8 v0, v0, 0x10

    :cond_28
    return v0
.end method
