.class public Landroidx/core/content/res/FontResourcesParserCompat;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/FontResourcesParserCompat$Api21Impl;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    }
.end annotation


# direct methods
.method private static getType(Landroid/content/res/TypedArray;I)I
    .registers 2

    .line 258
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat$Api21Impl;->getType(Landroid/content/res/TypedArray;I)I

    move-result p0

    return p0
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    goto :goto_0

    :cond_b
    if-ne v0, v1, :cond_12

    .line 194
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object p0

    return-object p0

    .line 192
    :cond_12
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readCerts(Landroid/content/res/Resources;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 279
    :cond_7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 281
    :try_start_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-nez v1, :cond_1b

    .line 282
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_19

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_19
    move-exception p0

    goto :goto_52

    .line 285
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 288
    invoke-static {v0, v2}, Landroidx/core/content/res/FontResourcesParserCompat;->getType(Landroid/content/res/TypedArray;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_43

    move p1, v2

    .line 289
    :goto_29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_4e

    .line 290
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_40

    .line 292
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_29

    .line 296
    :cond_43
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_1b .. :try_end_4e} :catchall_19

    .line 300
    :cond_4e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :goto_52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    throw p0
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 199
    const-string v2, "font-family"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 202
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object p0

    return-object p0

    .line 204
    :cond_16
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 212
    sget-object v1, Landroidx/core/R$styleable;->FontFamily:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    sget v1, Landroidx/core/R$styleable;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    sget v2, Landroidx/core/R$styleable;->FontFamily_fontProviderPackage:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    sget v3, Landroidx/core/R$styleable;->FontFamily_fontProviderQuery:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    sget v4, Landroidx/core/R$styleable;->FontFamily_fontProviderCerts:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 217
    sget v6, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 219
    sget v7, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    const/16 v8, 0x1f4

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 221
    sget v8, Landroidx/core/R$styleable;->FontFamily_fontProviderSystemFontFamily:I

    .line 222
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x3

    if-eqz v1, :cond_5b

    if-eqz v2, :cond_5b

    if-eqz v3, :cond_5b

    .line 226
    :goto_42
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v0, :cond_4c

    .line 227
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_42

    .line 229
    :cond_4c
    invoke-static {p1, v4}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p0

    .line 230
    new-instance p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    new-instance v0, Landroidx/core/provider/FontRequest;

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p1, v0, v6, v7, v8}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Landroidx/core/provider/FontRequest;IILjava/lang/String;)V

    return-object p1

    .line 237
    :cond_5b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    :goto_60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v0, :cond_86

    .line 239
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6e

    goto :goto_60

    .line 240
    :cond_6e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 241
    const-string v3, "font"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 242
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 244
    :cond_82
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_60

    .line 247
    :cond_86
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8e

    const/4 p0, 0x0

    return-object p0

    .line 251
    :cond_8e
    new-instance p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    new-array p1, v5, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-direct {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;-><init>([Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V

    return-object p0
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 316
    sget-object v1, Landroidx/core/R$styleable;->FontFamilyFont:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 317
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_15

    .line 319
    :cond_13
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_android_fontWeight:I

    :goto_15
    const/16 v1, 0x190

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 321
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_26

    .line 323
    :cond_24
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_android_fontStyle:I

    :goto_26
    const/4 v1, 0x0

    .line 324
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_30

    move v5, v2

    goto :goto_31

    :cond_30
    move v5, v1

    .line 325
    :goto_31
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_3c

    .line 327
    :cond_3a
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_android_ttcIndex:I

    .line 329
    :goto_3c
    sget v2, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_47

    .line 331
    :cond_45
    sget v2, Landroidx/core/R$styleable;->FontFamilyFont_android_fontVariationSettings:I

    .line 332
    :goto_47
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 333
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 334
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_5a

    .line 336
    :cond_58
    sget v0, Landroidx/core/R$styleable;->FontFamilyFont_android_font:I

    .line 337
    :goto_5a
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 338
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    :goto_65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_70

    .line 341
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_65

    .line 343
    :cond_70
    new-instance p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    return-object p0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    if-lez v0, :cond_14

    .line 350
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    goto :goto_1

    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method private static toByteArrayList([Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_16

    aget-object v4, p0, v3

    .line 308
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method
