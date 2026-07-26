.class public Lmiuix/autodensity/AutoDensityContextWrapper;
.super Landroid/view/ContextThemeWrapper;
.source "AutoDensityContextWrapper.java"


# instance fields
.field private mOriginConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getNoOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 3

    move-object v0, p0

    .line 43
    :goto_1
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_10

    .line 44
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    goto :goto_1

    .line 46
    :cond_10
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getOriginConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 28
    iget-object v0, p0, Lmiuix/autodensity/AutoDensityContextWrapper;->mOriginConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public restoreOriginConfig()V
    .registers 5

    .line 32
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lmiuix/autodensity/AutoDensityContextWrapper;->mOriginConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 34
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lmiuix/autodensity/AutoDensityContextWrapper;->mOriginConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 35
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lmiuix/autodensity/AutoDensityContextWrapper;->mOriginConfiguration:Landroid/content/res/Configuration;

    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 36
    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 37
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_47

    goto :goto_49

    :cond_47
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_49
    mul-float/2addr v2, v0

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    return-void
.end method

.method public setOriginConfiguration(Landroid/content/res/Configuration;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lmiuix/autodensity/AutoDensityContextWrapper;->mOriginConfiguration:Landroid/content/res/Configuration;

    return-void
.end method
