.class public final Landroidx/core/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/ResourcesCompat$ThemeCompat;,
        Landroidx/core/content/res/ResourcesCompat$Api21Impl;,
        Landroidx/core/content/res/ResourcesCompat$FontCallback;
    }
.end annotation


# static fields
.field private static final sColorStateCacheLock:Ljava/lang/Object;

.field private static final sColorStateCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTempTypedValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 79
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    return-void
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 137
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ResourcesCompat$Api21Impl;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 543
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 546
    invoke-static/range {v0 .. v7}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    .registers 18

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x1

    move v9, p1

    move-object v2, p2

    .line 569
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    move-object v0, p0

    move v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 570
    invoke-static/range {v0 .. v8}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_3e

    if-nez p4, :cond_3e

    if-eqz p7, :cond_1e

    goto :goto_3e

    .line 573
    :cond_1e
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Font resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be retrieved."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method private static loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    .registers 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 600
    const-string v13, "ResourcesCompat"

    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v2, :cond_c6

    .line 605
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 606
    const-string v2, "res/"

    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v15, 0x0

    const/4 v10, -0x3

    if-nez v2, :cond_24

    if-eqz v11, :cond_23

    .line 609
    invoke-virtual {v11, v10, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    :cond_23
    return-object v15

    .line 614
    :cond_24
    iget v2, v1, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v7, p4

    invoke-static {v0, v4, v14, v2, v7}, Landroidx/core/graphics/TypefaceCompat;->findFromCache(Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_34

    if-eqz v11, :cond_33

    .line 619
    invoke-virtual {v11, v2, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_33
    return-object v2

    :cond_34
    if-eqz p8, :cond_37

    return-object v15

    .line 627
    :cond_37
    :try_start_37
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 628
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 630
    invoke-static {v2, v0}, Landroidx/core/content/res/FontResourcesParserCompat;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v2

    if-nez v2, :cond_5f

    .line 632
    const-string v0, "Failed to find font-family tag"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_5e

    .line 634
    invoke-virtual {v11, v10, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    goto :goto_5e

    :catch_58
    move-exception v0

    move v15, v10

    goto :goto_96

    :catch_5b
    move-exception v0

    move v15, v10

    goto :goto_ab

    :cond_5e
    :goto_5e
    return-object v15

    .line 639
    :cond_5f
    iget v6, v1, Landroid/util/TypedValue;->assetCookie:I
    :try_end_61
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_61} :catch_5b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_61} :catch_58

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object v5, v14

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move v15, v10

    move/from16 v10, p7

    :try_start_71
    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFamilyXml(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :catch_76
    move-exception v0

    goto :goto_96

    :catch_78
    move-exception v0

    goto :goto_ab

    :cond_7a
    move v15, v10

    .line 643
    iget v5, v1, Landroid/util/TypedValue;->assetCookie:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object v4, v14

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v11, :cond_95

    if-eqz v0, :cond_92

    .line 647
    invoke-virtual {v11, v0, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_95

    .line 649
    :cond_92
    invoke-virtual {v11, v15, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
    :try_end_95
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_95} :catch_78
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_95} :catch_76

    :cond_95
    :goto_95
    return-object v0

    .line 657
    :goto_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read xml resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bf

    .line 655
    :goto_ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse xml resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_bf
    if-eqz v11, :cond_c4

    .line 660
    invoke-virtual {v11, v15, v12}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    :cond_c4
    const/4 v1, 0x0

    return-object v1

    .line 601
    :cond_c6
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is not a Font: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
