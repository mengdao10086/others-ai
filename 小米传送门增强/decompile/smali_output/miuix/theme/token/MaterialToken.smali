.class public Lmiuix/theme/token/MaterialToken;
.super Ljava/lang/Object;
.source "MaterialToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/theme/token/MaterialToken$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiuix/theme/token/MaterialToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blendColors:[I

.field public blendExtraParams:[F

.field public blendModes:[I

.field public bloomStrokeColorA:F

.field public bloomStrokeColorB:F

.field public bloomStrokeColorG:F

.field public bloomStrokeColorR:F

.field public bloomStrokeGradientDegree:F

.field public bloomStrokeWidth:F

.field public blurContainerMode:I

.field public blurElementMode:I

.field public blurExtraParams:[F

.field public blurRadius:I

.field public blurSubType:I

.field public blurType:I

.field public enableBloomStroke:I

.field public enableBlur:I

.field public enableColorBlend:I

.field public enableShadow:I

.field public fallbackBlendColors:[I

.field public fallbackBlendExtraParams:[F

.field public fallbackBlendModes:[I

.field public hasFallbackColorBlend:I

.field public normalWidth:F

.field public shadowColor:I

.field public shadowDispersion:F

.field public shadowOffsetX:F

.field public shadowOffsetY:F

.field public shadowRadius:F

.field public source1A:F

.field public source1B:F

.field public source1G:F

.field public source1R:F

.field public source1X:F

.field public source1Y:F

.field public source1Z:F

.field public source2A:F

.field public source2B:F

.field public source2G:F

.field public source2R:F

.field public source2X:F

.field public source2Y:F

.field public source2Z:F

.field public token:Ljava/lang/String;

.field public tokenVariant:Ljava/lang/String;

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 286
    new-instance v0, Lmiuix/theme/token/MaterialToken$1;

    invoke-direct {v0}, Lmiuix/theme/token/MaterialToken$1;-><init>()V

    sput-object v0, Lmiuix/theme/token/MaterialToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 5

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableColorBlend:I

    .line 32
    iput v0, p0, Lmiuix/theme/token/MaterialToken;->hasFallbackColorBlend:I

    .line 38
    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableBlur:I

    .line 47
    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableShadow:I

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->shadowOffsetX:F

    .line 50
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->shadowOffsetY:F

    .line 51
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->shadowRadius:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 52
    iput v2, p0, Lmiuix/theme/token/MaterialToken;->shadowDispersion:F

    .line 55
    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableBloomStroke:I

    .line 56
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeWidth:F

    .line 57
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeGradientDegree:F

    .line 58
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorR:F

    .line 59
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorG:F

    .line 60
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorB:F

    .line 61
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorA:F

    .line 62
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->normalWidth:F

    .line 63
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1X:F

    .line 64
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1Y:F

    .line 65
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1Z:F

    .line 66
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1R:F

    .line 67
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1G:F

    .line 68
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1B:F

    .line 69
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1A:F

    .line 70
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2X:F

    .line 71
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2Y:F

    .line 72
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2Z:F

    .line 73
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2R:F

    .line 74
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2G:F

    .line 75
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2B:F

    .line 76
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2A:F

    .line 168
    iput p1, p0, Lmiuix/theme/token/MaterialToken;->version:I

    return-void
.end method

.method synthetic constructor <init>(ILmiuix/theme/token/MaterialToken$1;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1}, Lmiuix/theme/token/MaterialToken;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableColorBlend:I

    .line 32
    iput v0, p0, Lmiuix/theme/token/MaterialToken;->hasFallbackColorBlend:I

    .line 38
    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableBlur:I

    .line 47
    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableShadow:I

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->shadowOffsetX:F

    .line 50
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->shadowOffsetY:F

    .line 51
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->shadowRadius:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 52
    iput v2, p0, Lmiuix/theme/token/MaterialToken;->shadowDispersion:F

    .line 55
    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableBloomStroke:I

    .line 56
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeWidth:F

    .line 57
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeGradientDegree:F

    .line 58
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorR:F

    .line 59
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorG:F

    .line 60
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorB:F

    .line 61
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorA:F

    .line 62
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->normalWidth:F

    .line 63
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1X:F

    .line 64
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1Y:F

    .line 65
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1Z:F

    .line 66
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1R:F

    .line 67
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1G:F

    .line 68
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1B:F

    .line 69
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source1A:F

    .line 70
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2X:F

    .line 71
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2Y:F

    .line 72
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2Z:F

    .line 73
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2R:F

    .line 74
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2G:F

    .line 75
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2B:F

    .line 76
    iput v1, p0, Lmiuix/theme/token/MaterialToken;->source2A:F

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->version:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/theme/token/MaterialToken;->token:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/theme/token/MaterialToken;->tokenVariant:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableColorBlend:I

    if-lez v0, :cond_b3

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_6a

    .line 86
    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/theme/token/MaterialToken;->blendColors:[I

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 89
    :cond_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_77

    .line 91
    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/theme/token/MaterialToken;->blendModes:[I

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 94
    :cond_77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_84

    .line 96
    new-array v0, v0, [F

    iput-object v0, p0, Lmiuix/theme/token/MaterialToken;->blendExtraParams:[F

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 99
    :cond_84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->hasFallbackColorBlend:I

    if-lez v0, :cond_b3

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_99

    .line 103
    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/theme/token/MaterialToken;->fallbackBlendColors:[I

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 106
    :cond_99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_a6

    .line 108
    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/theme/token/MaterialToken;->fallbackBlendModes:[I

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 111
    :cond_a6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_b3

    .line 113
    new-array v0, v0, [F

    iput-object v0, p0, Lmiuix/theme/token/MaterialToken;->fallbackBlendExtraParams:[F

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 118
    :cond_b3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableBlur:I

    if-lez v0, :cond_ea

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->blurContainerMode:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->blurElementMode:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->blurType:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->blurRadius:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->blurSubType:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_e7

    .line 127
    new-array v0, v0, [F

    iput-object v0, p0, Lmiuix/theme/token/MaterialToken;->blurExtraParams:[F

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    goto :goto_ea

    :cond_e7
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lmiuix/theme/token/MaterialToken;->blurExtraParams:[F

    .line 133
    :cond_ea
    :goto_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableShadow:I

    if-lez v0, :cond_110

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->shadowColor:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->shadowOffsetX:F

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->shadowOffsetY:F

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->shadowRadius:F

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->shadowDispersion:F

    .line 141
    :cond_110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->enableBloomStroke:I

    if-lez v0, :cond_196

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeWidth:F

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeGradientDegree:F

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorR:F

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorG:F

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorB:F

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorA:F

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->normalWidth:F

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source1X:F

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source1Y:F

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source1Z:F

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source1R:F

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source1G:F

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source1B:F

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source1A:F

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source2X:F

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source2Y:F

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source2Z:F

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source2R:F

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source2G:F

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmiuix/theme/token/MaterialToken;->source2B:F

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lmiuix/theme/token/MaterialToken;->source2A:F

    :cond_196
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 178
    iget-object v0, p0, Lmiuix/theme/token/MaterialToken;->token:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{no token name}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_22
    iget-object v0, p0, Lmiuix/theme/token/MaterialToken;->tokenVariant:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 182
    iget-object v0, p0, Lmiuix/theme/token/MaterialToken;->token:Ljava/lang/String;

    return-object v0

    .line 184
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiuix/theme/token/MaterialToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/theme/token/MaterialToken;->tokenVariant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 189
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->version:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->token:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_11

    move-object p2, v0

    goto :goto_13

    :cond_11
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->token:Ljava/lang/String;

    :goto_13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->tokenVariant:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_21

    :cond_1f
    iget-object v0, p0, Lmiuix/theme/token/MaterialToken;->tokenVariant:Ljava/lang/String;

    :goto_21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->enableColorBlend:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->enableColorBlend:I

    const/4 v0, 0x0

    if-lez p2, :cond_b7

    .line 194
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->blendColors:[I

    if-eqz p2, :cond_65

    array-length v1, p2

    if-lez v1, :cond_65

    iget-object v1, p0, Lmiuix/theme/token/MaterialToken;->blendModes:[I

    if-eqz v1, :cond_65

    array-length v1, v1

    if-lez v1, :cond_65

    .line 196
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->blendColors:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 198
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->blendModes:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->blendModes:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 200
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->blendExtraParams:[F

    if-eqz p2, :cond_61

    .line 201
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->blendExtraParams:[F

    array-length v1, p2

    if-lez v1, :cond_6e

    .line 203
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_6e

    .line 206
    :cond_61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6e

    .line 209
    :cond_65
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    :cond_6e
    :goto_6e
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->hasFallbackColorBlend:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->hasFallbackColorBlend:I

    if-lez p2, :cond_b7

    .line 215
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->fallbackBlendColors:[I

    if-eqz p2, :cond_ae

    array-length v1, p2

    if-lez v1, :cond_ae

    iget-object v1, p0, Lmiuix/theme/token/MaterialToken;->fallbackBlendModes:[I

    if-eqz v1, :cond_ae

    array-length v1, v1

    if-lez v1, :cond_ae

    .line 217
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->fallbackBlendColors:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 219
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->fallbackBlendModes:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->fallbackBlendModes:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 221
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->fallbackBlendExtraParams:[F

    if-eqz p2, :cond_aa

    .line 222
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->fallbackBlendExtraParams:[F

    array-length v1, p2

    if-lez v1, :cond_b7

    .line 224
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_b7

    .line 227
    :cond_aa
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b7

    .line 230
    :cond_ae
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    :cond_b7
    :goto_b7
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->enableBlur:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->enableBlur:I

    if-lez p2, :cond_ed

    .line 238
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->blurContainerMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->blurElementMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->blurType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->blurRadius:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->blurSubType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->blurExtraParams:[F

    if-eqz p2, :cond_ea

    .line 244
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object p2, p0, Lmiuix/theme/token/MaterialToken;->blurExtraParams:[F

    array-length v0, p2

    if-lez v0, :cond_ed

    .line 246
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_ed

    .line 249
    :cond_ea
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    :cond_ed
    :goto_ed
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->enableShadow:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->enableShadow:I

    if-lez p2, :cond_10f

    .line 254
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->shadowColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->shadowOffsetX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 256
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->shadowOffsetY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 257
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->shadowRadius:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 258
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->shadowDispersion:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 260
    :cond_10f
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->enableBloomStroke:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->enableBloomStroke:I

    if-lez p2, :cond_181

    .line 262
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 263
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeGradientDegree:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 264
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorR:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 265
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorG:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 266
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorB:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 267
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->bloomStrokeColorA:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 268
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->normalWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 269
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source1X:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 270
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source1Y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 271
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source1Z:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 272
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source1R:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 273
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source1G:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 274
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source1B:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 275
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source1A:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 276
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source2X:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 277
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source2Y:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 278
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source2Z:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 279
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source2R:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 280
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source2G:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 281
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source2B:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 282
    iget p2, p0, Lmiuix/theme/token/MaterialToken;->source2A:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_181
    return-void
.end method
