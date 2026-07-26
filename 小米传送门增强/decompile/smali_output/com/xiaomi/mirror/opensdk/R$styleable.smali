.class public final Lcom/xiaomi/mirror/opensdk/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/opensdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MiuiDragShadow:[I

.field public static final MiuiDragShadow_thumbnailBorderColor:I = 0x0

.field public static final MiuiDragShadow_thumbnailBorderLevel:I = 0x1

.field public static final MiuiDragShadow_thumbnailBorderRoundOval:I = 0x2

.field public static final MiuiDragShadow_thumbnailBorderWidth:I = 0x3

.field public static final MiuiDragShadow_thumbnailCountInColor:I = 0x4

.field public static final MiuiDragShadow_thumbnailCountOutColor:I = 0x5

.field public static final MiuiDragShadow_thumbnailHeight:I = 0x6

.field public static final MiuiDragShadow_thumbnailMaskColor:I = 0x7

.field public static final MiuiDragShadow_thumbnailMaxWidth:I = 0x8

.field public static final MiuiDragShadow_thumbnailMinWidth:I = 0x9

.field public static final MiuiDragShadow_thumbnailShadowLayerColor:I = 0xa

.field public static final MiuiDragShadow_thumbnailShadowLayerRadius:I = 0xb

.field public static final MiuiDragShadow_thumbnailShadowLayerX:I = 0xc

.field public static final MiuiDragShadow_thumbnailShadowLayerY:I = 0xd


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/xiaomi/mirror/opensdk/R$styleable;->MiuiDragShadow:[I

    return-void

    :array_a
    .array-data 4
        0x7f04053a
        0x7f04053b
        0x7f04053c
        0x7f04053d
        0x7f04053e
        0x7f04053f
        0x7f040540
        0x7f040541
        0x7f040542
        0x7f040543
        0x7f040544
        0x7f040545
        0x7f040546
        0x7f040547
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
