.class public Lmiuix/graphics/shadow/DropShadowConfig$Builder;
.super Ljava/lang/Object;
.source "DropShadowConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/graphics/shadow/DropShadowConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;


# direct methods
.method public constructor <init>(F)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lmiuix/graphics/shadow/DropShadowConfig;

    invoke-direct {v0, p1}, Lmiuix/graphics/shadow/DropShadowConfig;-><init>(F)V

    iput-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    return-void
.end method

.method public constructor <init>(Lmiuix/core/util/MaterialConfig$ShadowConfig;)V
    .registers 11

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v8, Lmiuix/graphics/shadow/DropShadowConfig;

    iget v2, p1, Lmiuix/core/util/MaterialConfig$ShadowConfig;->shadowColor:I

    iget v3, p1, Lmiuix/core/util/MaterialConfig$ShadowConfig;->shadowOffsetX:F

    iget v4, p1, Lmiuix/core/util/MaterialConfig$ShadowConfig;->shadowOffsetY:F

    iget v5, p1, Lmiuix/core/util/MaterialConfig$ShadowConfig;->shadowRadius:F

    iget v6, p1, Lmiuix/core/util/MaterialConfig$ShadowConfig;->shadowDispersion:F

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    move-object v0, v8

    move v1, v2

    invoke-direct/range {v0 .. v7}, Lmiuix/graphics/shadow/DropShadowConfig;-><init>(IIFFFFLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v8, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    return-void
.end method


# virtual methods
.method public create()Lmiuix/graphics/shadow/DropShadowConfig;
    .registers 2

    .line 95
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    return-object v0
.end method

.method public setOffsetYDp(I)Lmiuix/graphics/shadow/DropShadowConfig$Builder;
    .registers 3

    .line 80
    iget-object v0, p0, Lmiuix/graphics/shadow/DropShadowConfig$Builder;->dropShadowConfig:Lmiuix/graphics/shadow/DropShadowConfig;

    int-to-float p1, p1

    iput p1, v0, Lmiuix/graphics/shadow/DropShadowConfig;->offsetYDp:F

    return-object p0
.end method
