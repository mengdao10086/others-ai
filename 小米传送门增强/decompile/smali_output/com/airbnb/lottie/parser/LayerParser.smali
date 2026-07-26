.class public Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "LayerParser.java"


# static fields
.field private static final EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 27
    const-string v21, "cl"

    const-string v22, "hd"

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "refId"

    const-string v3, "ty"

    const-string v4, "parent"

    const-string v5, "sw"

    const-string v6, "sh"

    const-string v7, "sc"

    const-string v8, "ks"

    const-string v9, "tt"

    const-string v10, "masksProperties"

    const-string v11, "shapes"

    const-string v12, "t"

    const-string v13, "ef"

    const-string v14, "sr"

    const-string v15, "st"

    const-string v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string v20, "tm"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 63
    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 68
    const-string v0, "nm"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .registers 27

    move-object/from16 v2, p0

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 55
    new-instance v25, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v25

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v11, v4

    invoke-direct {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    .line 59
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v3, "__container"

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v25
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .registers 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 90
    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 96
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const-string v2, "UNSET"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v11, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 253
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/4 v14, 0x0

    .line 246
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v31, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v20

    move-object/from16 v29, v21

    move-object/from16 v30, v29

    move-object/from16 v32, v30

    move-wide/from16 v16, v4

    move/from16 v22, v6

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v27, v24

    move/from16 v28, v27

    move/from16 v33, v28

    move/from16 v25, v9

    move-wide/from16 v18, v11

    move v1, v14

    move/from16 v26, v1

    move-object v9, v2

    move-object/from16 v11, v32

    move-object v12, v11

    move/from16 v2, v26

    .line 100
    :cond_4d
    :goto_4d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1db

    .line 101
    sget-object v3, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_288

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_4d

    .line 228
    :pswitch_64
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v33

    goto :goto_4d

    .line 225
    :pswitch_69
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4d

    .line 222
    :pswitch_6e
    invoke-static {v0, v7, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v32

    goto :goto_4d

    .line 219
    :pswitch_73
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_4d

    .line 216
    :pswitch_79
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_4d

    .line 213
    :pswitch_7f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v28, v3

    goto :goto_4d

    .line 210
    :pswitch_8d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v27, v3

    goto :goto_4d

    .line 207
    :pswitch_9b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v26, v3

    goto :goto_4d

    .line 204
    :pswitch_a3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v25, v3

    goto :goto_4d

    .line 181
    :pswitch_ab
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    :goto_b3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 185
    :goto_bc
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 186
    sget-object v4, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    if-eqz v4, :cond_d1

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_bc

    .line 188
    :cond_d1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 196
    :cond_d9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    goto :goto_b3

    .line 198
    :cond_dd
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 157
    :pswitch_f6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 158
    :goto_f9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_132

    .line 159
    sget-object v3, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    if-eqz v3, :cond_12d

    if-eq v3, v4, :cond_110

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_f9

    .line 164
    :cond_110
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 166
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v3

    move-object/from16 v30, v3

    .line 168
    :cond_11f
    :goto_11f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_129

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_11f

    .line 171
    :cond_129
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_f9

    .line 161
    :cond_12d
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseDocumentData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v29

    goto :goto_f9

    .line 178
    :cond_132
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    goto/16 :goto_4d

    .line 147
    :pswitch_137
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 148
    :cond_13a
    :goto_13a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 149
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v3

    if-eqz v3, :cond_13a

    .line 151
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13a

    .line 154
    :cond_14a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto/16 :goto_4d

    .line 139
    :pswitch_14f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 140
    :goto_152
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_160

    .line 141
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/MaskParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_152

    .line 143
    :cond_160
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto/16 :goto_4d

    .line 135
    :pswitch_16c
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v5

    aget-object v31, v3, v5

    .line 136
    invoke-virtual {v7, v4}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    goto/16 :goto_4d

    .line 132
    :pswitch_17b
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v21

    goto/16 :goto_4d

    .line 129
    :pswitch_181
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    goto/16 :goto_4d

    .line 126
    :pswitch_18b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v23, v3

    goto/16 :goto_4d

    .line 123
    :pswitch_19a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move/from16 v22, v3

    goto/16 :goto_4d

    .line 120
    :pswitch_1a9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v18, v3

    goto/16 :goto_4d

    .line 112
    :pswitch_1b2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    .line 113
    sget-object v12, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ge v3, v4, :cond_4d

    .line 114
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v4

    aget-object v12, v4, v3

    goto/16 :goto_4d

    .line 109
    :pswitch_1c6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4d

    .line 106
    :pswitch_1cc
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v16, v3

    goto/16 :goto_4d

    .line 103
    :pswitch_1d5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4d

    .line 235
    :cond_1db
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    div-float v34, v1, v25

    div-float v35, v2, v25

    .line 243
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v0, v34, v14

    if-lez v0, :cond_209

    .line 246
    new-instance v5, Lcom/airbnb/lottie/value/Keyframe;

    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v36

    const/4 v4, 0x0

    const/16 v37, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v15

    move-object v14, v5

    move/from16 v5, v37

    move-object/from16 v37, v10

    move-object v10, v6

    move-object/from16 v6, v36

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 247
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_20d

    :cond_209
    move-object/from16 v37, v10

    move-object v10, v6

    move v0, v14

    :goto_20d
    cmpl-float v0, v35, v0

    if-lez v0, :cond_212

    goto :goto_218

    .line 251
    :cond_212
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v0

    move/from16 v35, v0

    .line 252
    :goto_218
    new-instance v14, Lcom/airbnb/lottie/value/Keyframe;

    .line 253
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v13

    move/from16 v5, v34

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 254
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v13, Lcom/airbnb/lottie/value/Keyframe;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 257
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v13

    move-object v2, v15

    move-object v3, v15

    move/from16 v5, v35

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 258
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v0, ".ai"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_250

    const-string v0, "ai"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 261
    :cond_250
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 264
    :cond_255
    new-instance v34, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v34

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move-object v6, v12

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    move-object/from16 v35, v10

    move-object/from16 v10, v37

    move-object/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v15, v25

    move/from16 v16, v26

    move/from16 v17, v27

    move/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move-object/from16 v21, v35

    move-object/from16 v22, v31

    move-object/from16 v23, v32

    move/from16 v24, v33

    invoke-direct/range {v0 .. v24}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v34

    :pswitch_data_288
    .packed-switch 0x0
        :pswitch_1d5
        :pswitch_1cc
        :pswitch_1c6
        :pswitch_1b2
        :pswitch_1a9
        :pswitch_19a
        :pswitch_18b
        :pswitch_181
        :pswitch_17b
        :pswitch_16c
        :pswitch_14f
        :pswitch_137
        :pswitch_f6
        :pswitch_ab
        :pswitch_a3
        :pswitch_9b
        :pswitch_8d
        :pswitch_7f
        :pswitch_79
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_64
    .end packed-switch
.end method
