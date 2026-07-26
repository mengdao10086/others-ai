.class Lcom/airbnb/lottie/parser/MaskParser;
.super Ljava/lang/Object;
.source "MaskParser.java"


# direct methods
.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 23
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move-object v7, v6

    move v8, v5

    .line 24
    :goto_c
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 25
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_e0

    :goto_20
    move v10, v3

    goto :goto_4d

    :sswitch_22
    const-string v10, "mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2b

    goto :goto_20

    :cond_2b
    move v10, v0

    goto :goto_4d

    :sswitch_2d
    const-string v10, "inv"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_36

    goto :goto_20

    :cond_36
    move v10, v1

    goto :goto_4d

    :sswitch_38
    const-string v10, "pt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_41

    goto :goto_20

    :cond_41
    move v10, v2

    goto :goto_4d

    :sswitch_43
    const-string v10, "o"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4c

    goto :goto_20

    :cond_4c
    move v10, v5

    :goto_4d
    packed-switch v10, :pswitch_data_f2

    .line 58
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_c

    .line 28
    :pswitch_54
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_fe

    :goto_62
    move v4, v3

    goto :goto_8f

    :sswitch_64
    const-string v10, "s"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    goto :goto_62

    :cond_6d
    move v4, v0

    goto :goto_8f

    :sswitch_6f
    const-string v10, "n"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_78

    goto :goto_62

    :cond_78
    move v4, v1

    goto :goto_8f

    :sswitch_7a
    const-string v10, "i"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_83

    goto :goto_62

    :cond_83
    move v4, v2

    goto :goto_8f

    :sswitch_85
    const-string v10, "a"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8e

    goto :goto_62

    :cond_8e
    move v4, v5

    :goto_8f
    packed-switch v4, :pswitch_data_110

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown mask mode "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Defaulting to Add."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 45
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_c

    .line 33
    :pswitch_af
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_c

    .line 36
    :pswitch_b3
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_c

    .line 39
    :pswitch_b7
    const-string v4, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {p1, v4}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 41
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_c

    .line 30
    :pswitch_c0
    sget-object v4, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_c

    .line 55
    :pswitch_c4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v8

    goto/16 :goto_c

    .line 49
    :pswitch_ca
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseShapeData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-result-object v6

    goto/16 :goto_c

    .line 52
    :pswitch_d0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    goto/16 :goto_c

    .line 61
    :cond_d6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 63
    new-instance p0, Lcom/airbnb/lottie/model/content/Mask;

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    return-object p0

    nop

    :sswitch_data_e0
    .sparse-switch
        0x6f -> :sswitch_43
        0xe04 -> :sswitch_38
        0x197f1 -> :sswitch_2d
        0x3339a3 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_d0
        :pswitch_ca
        :pswitch_c4
        :pswitch_54
    .end packed-switch

    :sswitch_data_fe
    .sparse-switch
        0x61 -> :sswitch_85
        0x69 -> :sswitch_7a
        0x6e -> :sswitch_6f
        0x73 -> :sswitch_64
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
    .end packed-switch
.end method
