.class public Lmiuix/animation/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;
    }
.end annotation


# static fields
.field private static final BUILT_IN:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final D_TAG:Ljava/lang/String; = "folme_design"

.field public static final TAG:Ljava/lang/String; = "miuix_anim"

.field public static final UNIT_MILLIS_SECOND:I = 0x3b9aca00

.field public static final UNIT_SECOND:I = 0x3e8

.field public static final sArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private static sTimeStatArray:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 48
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 218
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Double;

    const-class v1, Ljava/lang/String;

    const-class v3, Ljava/lang/Integer;

    const-class v5, Ljava/lang/Long;

    const-class v7, Ljava/lang/Short;

    const-class v9, Ljava/lang/Float;

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmiuix/animation/utils/CommonUtils;->BUILT_IN:[Ljava/lang/Class;

    .line 309
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTo(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 229
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 230
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 231
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_18
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .registers 4

    if-eqz p0, :cond_22

    .line 256
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_22

    :catch_6
    move-exception v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "miuix_anim"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-void
.end method

.method public static compressImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 8

    .line 280
    const-string v0, "IO close fail, "

    const-string v1, "miuix_anim"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    .line 283
    :try_start_a
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 284
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 286
    invoke-static {v2}, Lmiuix/animation/utils/CommonUtils;->parseToInputStream(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object p1

    invoke-static {p1, v3, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_38
    .catchall {:try_start_a .. :try_end_1e} :catchall_36

    .line 291
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_58

    :catch_22
    move-exception p0

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :catchall_36
    move-exception p0

    goto :goto_59

    :catch_38
    move-exception p0

    .line 288
    :try_start_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TintDrawable.compressImage failed, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_36

    .line 291
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_58

    :catch_51
    move-exception p0

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_28

    :goto_58
    return-object v3

    .line 291
    :goto_59
    :try_start_59
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_70

    :catch_5d
    move-exception p1

    .line 293
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_70
    throw p0
.end method

.method public static getDistance(FFFF)D
    .registers 8

    sub-float/2addr p2, p0

    float-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 200
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p3, p1

    float-to-double p0, p3

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getLocal(Lmiuix/animation/utils/ObjectPool;Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiuix/animation/utils/ObjectPool;",
            "Ljava/lang/ThreadLocal<",
            "TT;>;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_12

    const/4 v0, 0x0

    .line 266
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lmiuix/animation/utils/ObjectPool;->acquire(Lmiuix/animation/utils/ObjectPool;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    return-object v0
.end method

.method public static getRect(Lmiuix/animation/IAnimTarget;Landroid/graphics/RectF;)V
    .registers 4

    .line 204
    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 205
    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 206
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 207
    iget v0, p1, Landroid/graphics/RectF;->top:F

    sget-object v1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p0

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static getSize(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)F
    .registers 3

    .line 212
    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    if-ne p1, v0, :cond_7

    sget-object p1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    goto :goto_18

    .line 213
    :cond_7
    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    if-ne p1, v0, :cond_e

    sget-object p1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    goto :goto_18

    .line 214
    :cond_e
    sget-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    if-eq p1, v0, :cond_18

    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :cond_18
    :goto_18
    if-nez p1, :cond_1c

    const/4 p0, 0x0

    goto :goto_20

    .line 215
    :cond_1c
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p0

    :goto_20
    return p0
.end method

.method public static getTouchSlop(Landroid/view/View;)F
    .registers 3

    .line 193
    sget v0, Lmiuix/animation/utils/CommonUtils;->sTouchSlop:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    if-eqz p0, :cond_18

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    int-to-float p0, p0

    sput p0, Lmiuix/animation/utils/CommonUtils;->sTouchSlop:F

    .line 196
    :cond_18
    sget p0, Lmiuix/animation/utils/CommonUtils;->sTouchSlop:F

    return p0
.end method

.method public static hasFlags(JJ)Z
    .registers 4

    .line 0
    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static inArray([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    if-eqz p0, :cond_19

    .line 182
    array-length v1, p0

    if-lez v1, :cond_19

    .line 183
    array-length v1, p0

    move v2, v0

    :goto_a
    if-ge v2, v1, :cond_19

    aget-object v3, p0, v2

    .line 184
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return v0
.end method

.method public static isArrayEmpty([Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 178
    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static isBuiltInClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 225
    sget-object v0, Lmiuix/animation/utils/CommonUtils;->BUILT_IN:[Ljava/lang/Class;

    invoke-static {v0, p0}, Lmiuix/animation/utils/CommonUtils;->inArray([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_45

    .line 128
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_45

    .line 129
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 133
    :cond_42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_45
    const/16 p0, 0x9

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static mapsToString([Ljava/util/Map;)Ljava/lang/String;
    .registers 5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 117
    :goto_b
    array-length v2, p0

    const/16 v3, 0xa

    if-ge v1, v2, :cond_29

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    const-string v3, "    "

    invoke-static {v2, v3}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 121
    :cond_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-nez p0, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_6

    return-object p0

    .line 147
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static parseToInputStream(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static readProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 240
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 241
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_23} :catch_46
    .catchall {:try_start_1 .. :try_end_23} :catchall_41

    .line 242
    :try_start_23
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_3c
    .catchall {:try_start_23 .. :try_end_28} :catchall_37

    .line 243
    :try_start_28
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_35
    .catchall {:try_start_28 .. :try_end_2c} :catchall_33

    .line 247
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 248
    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_33
    move-exception v0

    goto :goto_5a

    :catch_35
    move-exception v0

    goto :goto_4a

    :catchall_37
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_5a

    :catch_3c
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_4a

    :catchall_41
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_5a

    :catch_46
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 245
    :goto_4a
    :try_start_4a
    const-string v2, "miuix_anim"

    const-string v3, "readProp failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_33

    .line 247
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 248
    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 250
    const-string p0, ""

    return-object p0

    .line 247
    :goto_5a
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 248
    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 249
    throw v0
.end method

.method public static runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 87
    :cond_3
    new-instance v0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;

    invoke-direct {v0, p1}, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->start(Landroid/view/View;)V

    return-void
.end method

.method public static setToString(Ljava/util/Set;)Ljava/lang/StringBuilder;
    .registers 6

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_d

    .line 101
    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :cond_d
    const/16 v1, 0x7b

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 106
    :goto_17
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v2, v3, :cond_32

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 110
    :cond_32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static varargs timeStatBegin([Ljava/lang/String;)V
    .registers 8

    if-eqz p0, :cond_22

    .line 312
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_22

    .line 315
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 316
    array-length v2, p0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_22

    aget-object v4, p0, v3

    .line 317
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 318
    sget-object v5, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_22
    :goto_22
    return-void
.end method

.method public static timeStatClear()V
    .registers 1

    .line 340
    sget-object v0, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public static timeStatEnd(Ljava/lang/String;)J
    .registers 5

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 331
    sget-object v2, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_10

    move-wide v2, v0

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    :goto_12
    sub-long/2addr v0, v2

    .line 333
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6253\u5370\u5f53\u524d\u7528\u65f6\uff1a TAG="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u7528\u65f6\u4e3a "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    return-wide v0
.end method

.method public static toFloatValue(Ljava/lang/Object;)F
    .registers 4

    .line 168
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 169
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    move-result p0

    return p0

    .line 170
    :cond_b
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 171
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 173
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toFloat failed, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIntArray([F)[I
    .registers 4

    .line 91
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 92
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_f

    .line 93
    aget v2, p0, v1

    float-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method public static toIntValue(Ljava/lang/Object;)I
    .registers 4

    .line 158
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 159
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 160
    :cond_b
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_16

    .line 161
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result p0

    return p0

    .line 163
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toFloat failed, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
