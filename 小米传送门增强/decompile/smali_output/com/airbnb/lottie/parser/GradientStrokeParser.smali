.class Lcom/airbnb/lottie/parser/GradientStrokeParser;
.super Ljava/lang/Object;
.source "GradientStrokeParser.java"


# static fields
.field private static final DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 23
    const-string v10, "hd"

    const-string v11, "d"

    const-string v0, "nm"

    const-string v1, "g"

    const-string v2, "o"

    const-string v3, "t"

    const-string v4, "s"

    const-string v5, "e"

    const-string v6, "w"

    const-string v7, "lc"

    const-string v8, "lj"

    const-string v9, "ml"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 37
    const-string v0, "p"

    const-string v1, "k"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 41
    const-string v0, "n"

    const-string v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 62
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v13, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 64
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_140

    .line 65
    sget-object v2, Lcom/airbnb/lottie/parser/GradientStrokeParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v2

    packed-switch v2, :pswitch_data_16e

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_17

    .line 115
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 116
    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/16 v18, 0x0

    .line 120
    :goto_3c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_64

    .line 121
    sget-object v4, Lcom/airbnb/lottie/parser/GradientStrokeParser;->DASH_PATTERN_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    if-eqz v4, :cond_5d

    move-object/from16 v20, v14

    const/4 v14, 0x1

    if-eq v4, v14, :cond_58

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    :goto_55
    move-object/from16 v14, v20

    goto :goto_3c

    .line 126
    :cond_58
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v18

    goto :goto_55

    :cond_5d
    move-object/from16 v20, v14

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    :cond_64
    move-object/from16 v20, v14

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 135
    const-string v4, "o"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    move-object/from16 v14, v18

    const/4 v2, 0x1

    goto :goto_30

    .line 137
    :cond_75
    const-string v4, "d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    const-string v4, "g"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    :cond_85
    const/4 v2, 0x1

    goto :goto_89

    :cond_87
    const/4 v2, 0x1

    goto :goto_91

    .line 138
    :goto_89
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->setHasDashPattern(Z)V

    move-object/from16 v4, v18

    .line 139
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_91
    move-object/from16 v14, v20

    goto :goto_30

    :cond_94
    move-object/from16 v20, v14

    const/4 v2, 0x1

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 143
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_a9

    const/4 v2, 0x0

    .line 145
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    :cond_a9
    const/4 v2, 0x0

    :goto_aa
    move-object/from16 v14, v20

    goto/16 :goto_17

    :pswitch_ae
    const/4 v2, 0x0

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v15

    goto/16 :goto_17

    :pswitch_b5
    move-object v4, v3

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v13, v2

    :goto_bb
    move-object v3, v4

    goto/16 :goto_17

    :pswitch_be
    move-object v4, v3

    .line 106
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    const/4 v12, 0x1

    sub-int/2addr v3, v12

    aget-object v12, v2, v3

    goto :goto_bb

    :pswitch_cc
    move-object v4, v3

    const/4 v2, 0x1

    .line 103
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v10

    sub-int/2addr v10, v2

    aget-object v10, v3, v10

    goto :goto_bb

    :pswitch_da
    move-object v4, v3

    .line 100
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    goto/16 :goto_17

    :pswitch_e1
    move-object v4, v3

    .line 97
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v8

    goto/16 :goto_17

    :pswitch_e8
    move-object v4, v3

    .line 94
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parsePoint(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v7

    goto/16 :goto_17

    :pswitch_ef
    move-object v4, v3

    const/4 v2, 0x1

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    if-ne v3, v2, :cond_fb

    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_f9
    move-object v5, v2

    goto :goto_bb

    :cond_fb
    sget-object v2, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_f9

    :pswitch_fe
    move-object v4, v3

    .line 88
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v16

    goto/16 :goto_17

    :pswitch_105
    move-object v4, v3

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v2, -0x1

    .line 72
    :goto_10a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_134

    .line 73
    sget-object v3, Lcom/airbnb/lottie/parser/GradientStrokeParser;->GRADIENT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    if-eqz v3, :cond_12c

    move-object/from16 v18, v6

    const/4 v6, 0x1

    if-eq v3, v6, :cond_126

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    :goto_123
    move-object/from16 v6, v18

    goto :goto_10a

    .line 78
    :cond_126
    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseGradientColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v3

    move-object v6, v3

    goto :goto_10a

    :cond_12c
    move-object/from16 v18, v6

    const/4 v6, 0x1

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v2

    goto :goto_123

    :cond_134
    move-object/from16 v18, v6

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    goto :goto_bb

    .line 67
    :pswitch_13a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_17

    :cond_140
    move-object v4, v3

    if-nez v16, :cond_159

    .line 156
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    move-object/from16 v16, v0

    .line 157
    :cond_159
    new-instance v17, Lcom/airbnb/lottie/model/content/GradientStroke;

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, v16

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v12

    move v10, v13

    move-object v12, v14

    move v13, v15

    invoke-direct/range {v0 .. v13}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    return-object v17

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_13a
        :pswitch_105
        :pswitch_fe
        :pswitch_ef
        :pswitch_e8
        :pswitch_e1
        :pswitch_da
        :pswitch_cc
        :pswitch_be
        :pswitch_b5
        :pswitch_ae
        :pswitch_2d
    .end packed-switch
.end method
