.class Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "ContentModelParser.java"


# static fields
.field private static NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    const-string v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v1, 0x2

    move v2, v1

    .line 32
    :goto_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_28

    .line 33
    sget-object v3, Lcom/airbnb/lottie/parser/ContentModelParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    if-eqz v3, :cond_23

    if-eq v3, v0, :cond_1e

    .line 41
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_6

    .line 38
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v2

    goto :goto_6

    .line 35
    :cond_23
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    :cond_28
    move-object v3, v4

    :goto_29
    if-nez v3, :cond_2c

    return-object v4

    :cond_2c
    const/4 v5, -0x1

    .line 51
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_13a

    :goto_34
    move v0, v5

    goto/16 :goto_cf

    :sswitch_37
    const-string v0, "tr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_34

    :cond_40
    const/16 v0, 0xc

    goto/16 :goto_cf

    :sswitch_44
    const-string v0, "tm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_34

    :cond_4d
    const/16 v0, 0xb

    goto/16 :goto_cf

    :sswitch_51
    const-string v0, "st"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_34

    :cond_5a
    const/16 v0, 0xa

    goto/16 :goto_cf

    :sswitch_5e
    const-string v0, "sr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_34

    :cond_67
    const/16 v0, 0x9

    goto/16 :goto_cf

    :sswitch_6b
    const-string v0, "sh"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_34

    :cond_74
    const/16 v0, 0x8

    goto :goto_cf

    :sswitch_77
    const-string v0, "rp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_34

    :cond_80
    const/4 v0, 0x7

    goto :goto_cf

    :sswitch_82
    const-string v0, "rc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_34

    :cond_8b
    const/4 v0, 0x6

    goto :goto_cf

    :sswitch_8d
    const-string v0, "mm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_34

    :cond_96
    const/4 v0, 0x5

    goto :goto_cf

    :sswitch_98
    const-string v0, "gs"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_34

    :cond_a1
    const/4 v0, 0x4

    goto :goto_cf

    :sswitch_a3
    const-string v0, "gr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto :goto_34

    :cond_ac
    const/4 v0, 0x3

    goto :goto_cf

    :sswitch_ae
    const-string v0, "gf"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto/16 :goto_34

    :cond_b8
    move v0, v1

    goto :goto_cf

    :sswitch_ba
    const-string v1, "fl"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    goto/16 :goto_34

    :sswitch_c4
    const-string v0, "el"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    goto/16 :goto_34

    :cond_ce
    const/4 v0, 0x0

    :cond_cf
    :goto_cf
    packed-switch v0, :pswitch_data_170

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown shape type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    goto :goto_12c

    .line 68
    :pswitch_e7
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v4

    goto :goto_12c

    .line 80
    :pswitch_ec
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    move-result-object v4

    goto :goto_12c

    .line 56
    :pswitch_f1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-result-object v4

    goto :goto_12c

    .line 83
    :pswitch_f6
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/PolystarShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/PolystarShape;

    move-result-object v4

    goto :goto_12c

    .line 71
    :pswitch_fb
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapePathParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapePath;

    move-result-object v4

    goto :goto_12c

    .line 92
    :pswitch_100
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/RepeaterParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Repeater;

    move-result-object v4

    goto :goto_12c

    .line 77
    :pswitch_105
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/RectangleShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/RectangleShape;

    move-result-object v4

    goto :goto_12c

    .line 86
    :pswitch_10a
    invoke-static {p0}, Lcom/airbnb/lottie/parser/MergePathsParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;

    move-result-object v4

    .line 87
    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_12c

    .line 59
    :pswitch_114
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/GradientStrokeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;

    move-result-object v4

    goto :goto_12c

    .line 53
    :pswitch_119
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeGroupParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeGroup;

    move-result-object v4

    goto :goto_12c

    .line 65
    :pswitch_11e
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/GradientFillParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;

    move-result-object v4

    goto :goto_12c

    .line 62
    :pswitch_123
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/ShapeFillParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;

    move-result-object v4

    goto :goto_12c

    .line 74
    :pswitch_128
    invoke-static {p0, p1, v2}, Lcom/airbnb/lottie/parser/CircleShapeParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;I)Lcom/airbnb/lottie/model/content/CircleShape;

    move-result-object v4

    .line 98
    :goto_12c
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_136

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_12c

    .line 101
    :cond_136
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    return-object v4

    :sswitch_data_13a
    .sparse-switch
        0xca7 -> :sswitch_c4
        0xcc6 -> :sswitch_ba
        0xcdf -> :sswitch_ae
        0xceb -> :sswitch_a3
        0xcec -> :sswitch_98
        0xda0 -> :sswitch_8d
        0xe31 -> :sswitch_82
        0xe3e -> :sswitch_77
        0xe55 -> :sswitch_6b
        0xe5f -> :sswitch_5e
        0xe61 -> :sswitch_51
        0xe79 -> :sswitch_44
        0xe7e -> :sswitch_37
    .end sparse-switch

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_128
        :pswitch_123
        :pswitch_11e
        :pswitch_119
        :pswitch_114
        :pswitch_10a
        :pswitch_105
        :pswitch_100
        :pswitch_fb
        :pswitch_f6
        :pswitch_f1
        :pswitch_ec
        :pswitch_e7
    .end packed-switch
.end method
