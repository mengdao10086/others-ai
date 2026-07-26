.class public Lmiuix/core/util/MaterialDayNightConfig;
.super Ljava/lang/Object;
.source "MaterialDayNightConfig.java"


# instance fields
.field public darkConfig:Lmiuix/core/util/MaterialConfig;

.field public defaultConfig:Lmiuix/core/util/MaterialConfig;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_b

    .line 21
    iput-object v0, p0, Lmiuix/core/util/MaterialDayNightConfig;->defaultConfig:Lmiuix/core/util/MaterialConfig;

    .line 22
    iput-object v0, p0, Lmiuix/core/util/MaterialDayNightConfig;->darkConfig:Lmiuix/core/util/MaterialConfig;

    return-void

    .line 25
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_17

    .line 27
    iput-object v0, p0, Lmiuix/core/util/MaterialDayNightConfig;->defaultConfig:Lmiuix/core/util/MaterialConfig;

    .line 28
    iput-object v0, p0, Lmiuix/core/util/MaterialDayNightConfig;->darkConfig:Lmiuix/core/util/MaterialConfig;

    goto :goto_2a

    .line 30
    :cond_17
    new-instance v3, Lmiuix/core/util/MaterialConfig;

    invoke-direct {v3, p1}, Lmiuix/core/util/MaterialConfig;-><init>(Landroid/os/Parcel;)V

    iput-object v3, p0, Lmiuix/core/util/MaterialDayNightConfig;->defaultConfig:Lmiuix/core/util/MaterialConfig;

    if-le v1, v2, :cond_28

    .line 32
    new-instance v0, Lmiuix/core/util/MaterialConfig;

    invoke-direct {v0, p1}, Lmiuix/core/util/MaterialConfig;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lmiuix/core/util/MaterialDayNightConfig;->darkConfig:Lmiuix/core/util/MaterialConfig;

    goto :goto_2a

    .line 34
    :cond_28
    iput-object v0, p0, Lmiuix/core/util/MaterialDayNightConfig;->darkConfig:Lmiuix/core/util/MaterialConfig;

    :goto_2a
    return-void
.end method

.method public constructor <init>(Lmiuix/core/util/MaterialConfig;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lmiuix/core/util/MaterialDayNightConfig;->defaultConfig:Lmiuix/core/util/MaterialConfig;

    return-void
.end method

.method public static create(Landroid/os/Parcelable;)Lmiuix/core/util/MaterialDayNightConfig;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 128
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 131
    :try_start_c
    invoke-interface {p0, v1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1b

    .line 136
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 137
    new-instance p0, Lmiuix/core/util/MaterialDayNightConfig;

    invoke-direct {p0, v1}, Lmiuix/core/util/MaterialDayNightConfig;-><init>(Landroid/os/Parcel;)V

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 133
    :catch_1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method


# virtual methods
.method public get(Z)Lmiuix/core/util/MaterialConfig;
    .registers 3

    .line 49
    iget-object v0, p0, Lmiuix/core/util/MaterialDayNightConfig;->darkConfig:Lmiuix/core/util/MaterialConfig;

    if-nez v0, :cond_7

    .line 50
    iget-object p1, p0, Lmiuix/core/util/MaterialDayNightConfig;->defaultConfig:Lmiuix/core/util/MaterialConfig;

    return-object p1

    :cond_7
    if-eqz p1, :cond_b

    .line 52
    iget-object v0, p0, Lmiuix/core/util/MaterialDayNightConfig;->defaultConfig:Lmiuix/core/util/MaterialConfig;

    :cond_b
    return-object v0
.end method

.method public getBlurConfig(Z)Lmiuix/core/util/MaterialConfig$BlurConfig;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lmiuix/core/util/MaterialDayNightConfig;->get(Z)Lmiuix/core/util/MaterialConfig;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 84
    :cond_8
    invoke-virtual {p1}, Lmiuix/core/util/MaterialConfig;->getBlurConfig()Lmiuix/core/util/MaterialConfig$BlurConfig;

    move-result-object p1

    return-object p1
.end method

.method public getColorBlendConfig(Z)Lmiuix/core/util/MaterialConfig$ColorBlendConfig;
    .registers 2

    .line 64
    invoke-virtual {p0, p1}, Lmiuix/core/util/MaterialDayNightConfig;->get(Z)Lmiuix/core/util/MaterialConfig;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_8
    invoke-virtual {p1}, Lmiuix/core/util/MaterialConfig;->getColorBlendConfig()Lmiuix/core/util/MaterialConfig$ColorBlendConfig;

    move-result-object p1

    return-object p1
.end method
