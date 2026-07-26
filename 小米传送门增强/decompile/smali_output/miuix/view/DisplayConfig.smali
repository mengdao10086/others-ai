.class public Lmiuix/view/DisplayConfig;
.super Ljava/lang/Object;
.source "DisplayConfig.java"


# instance fields
.field public defaultBitmapDensity:I

.field public density:F

.field public densityDpi:I

.field public fontScale:F

.field public scaledDensity:F

.field public windowHeightDp:I

.field public windowWidthDp:I


# direct methods
.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lmiuix/view/DisplayConfig;->windowWidthDp:I

    .line 30
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Lmiuix/view/DisplayConfig;->windowHeightDp:I

    .line 31
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 32
    iput v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    int-to-float v0, v0

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    .line 33
    iput v0, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 34
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_22

    goto :goto_24

    :cond_22
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_24
    mul-float/2addr v0, p1

    .line 35
    iput v0, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .registers 5

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 20
    iput v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 21
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lmiuix/view/DisplayConfig;->density:F

    .line 22
    iget v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    div-float/2addr v1, v0

    .line 23
    iput v1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 24
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiuix/view/DisplayConfig;->windowWidthDp:I

    .line 25
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lmiuix/view/DisplayConfig;->windowHeightDp:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 40
    instance-of v0, p1, Lmiuix/view/DisplayConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 41
    iget v0, p0, Lmiuix/view/DisplayConfig;->density:F

    check-cast p1, Lmiuix/view/DisplayConfig;

    iget v2, p1, Lmiuix/view/DisplayConfig;->density:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    iget v2, p1, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 42
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    iget v2, p1, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 43
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_32

    iget v0, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iget v2, p1, Lmiuix/view/DisplayConfig;->densityDpi:I

    if-ne v0, v2, :cond_32

    iget v0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    iget p1, p1, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    if-ne v0, p1, :cond_32

    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 52
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ densityDpi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", density:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", windowWidthDp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->windowWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windowHeightDp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->windowHeightDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scaledDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fontScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", defaultBitmapDensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
