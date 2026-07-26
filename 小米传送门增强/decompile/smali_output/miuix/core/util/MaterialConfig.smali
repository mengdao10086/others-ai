.class public Lmiuix/core/util/MaterialConfig;
.super Ljava/lang/Object;
.source "MaterialConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/core/util/MaterialConfig$ColorBlendConfig;,
        Lmiuix/core/util/MaterialConfig$BlurConfig;,
        Lmiuix/core/util/MaterialConfig$ShadowConfig;,
        Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;
    }
.end annotation


# instance fields
.field private mBloomStrokeConfig:Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;

.field private mBlurConfig:Lmiuix/core/util/MaterialConfig$BlurConfig;

.field private mColorBlendConfig:Lmiuix/core/util/MaterialConfig$ColorBlendConfig;

.field private mFallbackColorBlendConfig:Lmiuix/core/util/MaterialConfig$ColorBlendConfig;

.field private mShadowConfig:Lmiuix/core/util/MaterialConfig$ShadowConfig;

.field public final token:Ljava/lang/String;

.field public final tokenVariant:Ljava/lang/String;

.field public final version:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/core/util/MaterialConfig;->version:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiuix/core/util/MaterialConfig;->token:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiuix/core/util/MaterialConfig;->tokenVariant:Ljava/lang/String;

    const/16 v3, 0x1e

    if-gt v0, v3, :cond_1d

    .line 39
    invoke-direct {p0, p1}, Lmiuix/core/util/MaterialConfig;->parseCurrentVersion(Landroid/os/Parcel;)V

    goto :goto_34

    .line 43
    :cond_1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 42
    const-string v0, "Error! Can\'t read this token: the support version is %d, your token version is %d, tokenInfo:%s_%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 41
    const-string v0, "MaterialConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method private parseCurrentVersion(Landroid/os/Parcel;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lmiuix/core/util/MaterialConfig;->parseVersionBelow30(Landroid/os/Parcel;)V

    return-void
.end method

.method private parseVersionBelow30(Landroid/os/Parcel;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_8e

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_20

    .line 61
    new-array v2, v2, [I

    .line 62
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_21

    :cond_20
    move-object v2, v4

    .line 65
    :goto_21
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v5, :cond_31

    .line 67
    new-array v5, v5, [I

    .line 68
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_32

    :cond_31
    move-object v5, v4

    .line 71
    :goto_32
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v6, :cond_42

    .line 73
    new-array v6, v6, [F

    .line 74
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readFloatArray([F)V

    goto :goto_43

    :cond_42
    move-object v6, v4

    .line 76
    :goto_43
    new-instance v7, Lmiuix/core/util/MaterialConfig$ColorBlendConfig;

    invoke-direct {v7, v2, v5, v6}, Lmiuix/core/util/MaterialConfig$ColorBlendConfig;-><init>([I[I[F)V

    iput-object v7, v0, Lmiuix/core/util/MaterialConfig;->mColorBlendConfig:Lmiuix/core/util/MaterialConfig$ColorBlendConfig;

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_8e

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_64

    .line 82
    new-array v2, v2, [I

    .line 83
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_65

    :cond_64
    move-object v2, v4

    .line 86
    :goto_65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v5, :cond_75

    .line 88
    new-array v5, v5, [I

    .line 89
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_76

    :cond_75
    move-object v5, v4

    .line 92
    :goto_76
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lez v6, :cond_86

    .line 94
    new-array v6, v6, [F

    .line 95
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->readFloatArray([F)V

    goto :goto_87

    :cond_86
    move-object v6, v4

    .line 97
    :goto_87
    new-instance v7, Lmiuix/core/util/MaterialConfig$ColorBlendConfig;

    invoke-direct {v7, v2, v5, v6}, Lmiuix/core/util/MaterialConfig$ColorBlendConfig;-><init>([I[I[F)V

    iput-object v7, v0, Lmiuix/core/util/MaterialConfig;->mFallbackColorBlendConfig:Lmiuix/core/util/MaterialConfig$ColorBlendConfig;

    .line 100
    :cond_8e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_d8

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_bd

    .line 110
    new-array v2, v2, [F

    .line 111
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readFloatArray([F)V

    move-object v11, v2

    goto :goto_be

    :cond_bd
    move-object v11, v4

    .line 114
    :goto_be
    iget v2, v0, Lmiuix/core/util/MaterialConfig;->version:I

    invoke-static {}, Lmiuix/core/util/RomUtils;->getHyperOsVersion()I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    if-gt v2, v5, :cond_cc

    .line 115
    iget-object v2, v0, Lmiuix/core/util/MaterialConfig;->mColorBlendConfig:Lmiuix/core/util/MaterialConfig$ColorBlendConfig;

    :goto_ca
    move-object v12, v2

    goto :goto_cf

    .line 117
    :cond_cc
    iget-object v2, v0, Lmiuix/core/util/MaterialConfig;->mFallbackColorBlendConfig:Lmiuix/core/util/MaterialConfig$ColorBlendConfig;

    goto :goto_ca

    .line 119
    :goto_cf
    new-instance v2, Lmiuix/core/util/MaterialConfig$BlurConfig;

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lmiuix/core/util/MaterialConfig$BlurConfig;-><init>(IIIII[FLmiuix/core/util/MaterialConfig$ColorBlendConfig;)V

    iput-object v2, v0, Lmiuix/core/util/MaterialConfig;->mBlurConfig:Lmiuix/core/util/MaterialConfig$BlurConfig;

    goto :goto_da

    .line 122
    :cond_d8
    iput-object v4, v0, Lmiuix/core/util/MaterialConfig;->mBlurConfig:Lmiuix/core/util/MaterialConfig$BlurConfig;

    .line 124
    :goto_da
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_101

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 131
    new-instance v2, Lmiuix/core/util/MaterialConfig$ShadowConfig;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lmiuix/core/util/MaterialConfig$ShadowConfig;-><init>(IFFFF)V

    iput-object v2, v0, Lmiuix/core/util/MaterialConfig;->mShadowConfig:Lmiuix/core/util/MaterialConfig$ShadowConfig;

    goto :goto_103

    .line 134
    :cond_101
    iput-object v4, v0, Lmiuix/core/util/MaterialConfig;->mShadowConfig:Lmiuix/core/util/MaterialConfig$ShadowConfig;

    .line 136
    :goto_103
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v2, :cond_16a

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 150
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v23

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v24

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v25

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v26

    .line 159
    new-instance v1, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;

    move-object v5, v1

    invoke-direct/range {v5 .. v26}, Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;-><init>(FFFFFFFFFFFFFFFFFFFFF)V

    iput-object v1, v0, Lmiuix/core/util/MaterialConfig;->mBloomStrokeConfig:Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;

    goto :goto_16c

    .line 167
    :cond_16a
    iput-object v4, v0, Lmiuix/core/util/MaterialConfig;->mBloomStrokeConfig:Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;

    :goto_16c
    return-void
.end method


# virtual methods
.method public getBloomStrokeConfig()Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;
    .registers 2

    .line 188
    iget-object v0, p0, Lmiuix/core/util/MaterialConfig;->mBloomStrokeConfig:Lmiuix/core/util/MaterialConfig$BloomStrokeConfig;

    return-object v0
.end method

.method public getBlurConfig()Lmiuix/core/util/MaterialConfig$BlurConfig;
    .registers 2

    .line 180
    iget-object v0, p0, Lmiuix/core/util/MaterialConfig;->mBlurConfig:Lmiuix/core/util/MaterialConfig$BlurConfig;

    return-object v0
.end method

.method public getColorBlendConfig()Lmiuix/core/util/MaterialConfig$ColorBlendConfig;
    .registers 2

    .line 172
    iget-object v0, p0, Lmiuix/core/util/MaterialConfig;->mColorBlendConfig:Lmiuix/core/util/MaterialConfig$ColorBlendConfig;

    return-object v0
.end method

.method public getShadowConfig()Lmiuix/core/util/MaterialConfig$ShadowConfig;
    .registers 2

    .line 184
    iget-object v0, p0, Lmiuix/core/util/MaterialConfig;->mShadowConfig:Lmiuix/core/util/MaterialConfig$ShadowConfig;

    return-object v0
.end method
