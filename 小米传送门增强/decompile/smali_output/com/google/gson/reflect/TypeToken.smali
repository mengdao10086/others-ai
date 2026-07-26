.class public Lcom/google/gson/reflect/TypeToken;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field private final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;->getTypeTokenTypeArgument()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 75
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/gson/reflect/TypeToken;->hashCode:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 83
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/google/gson/reflect/TypeToken;->hashCode:I

    return-void
.end method

.method private static varargs buildUnsupportedTypeException(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/IllegalArgumentException;"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported type, expected one of: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1c

    aget-object v3, p1, v2

    .line 318
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 320
    :cond_1c
    const-string p1, "but got: "

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", for type token: "

    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 361
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v0, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 356
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v0, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static getArray(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 450
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 386
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_c8

    .line 395
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 396
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 398
    array-length v2, v1

    .line 399
    array-length v3, p1

    if-ne v3, v2, :cond_a2

    .line 410
    array-length v3, p1

    if-nez v3, :cond_1d

    .line 411
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p0

    return-object p0

    .line 415
    :cond_1d
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->requiresOwnerType(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-nez v3, :cond_82

    const/4 v0, 0x0

    move v3, v0

    :goto_25
    if-ge v3, v2, :cond_77

    .line 423
    aget-object v4, p1, v3

    const-string v5, "Type argument must not be null"

    .line 424
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Type;

    .line 425
    invoke-static {v4}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 426
    aget-object v6, v1, v3

    .line 428
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v7

    array-length v8, v7

    move v9, v0

    :goto_3c
    if-ge v9, v8, :cond_74

    aget-object v10, v7, v9

    .line 429
    invoke-static {v10}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    .line 431
    invoke-virtual {v10, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4d

    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    .line 432
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type argument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not satisfy bounds for type variable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " declared by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 443
    :cond_77
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    const/4 v1, 0x0

    invoke-static {v1, p0, p1}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    .line 416
    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raw type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported because it requires specifying an owner type"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 401
    :cond_a2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " type arguments, but got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 393
    :cond_c8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawType must be of type Class, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getTypeTokenTypeArgument()Ljava/lang/reflect/Type;
    .registers 4

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 97
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    const-class v2, Lcom/google/gson/reflect/TypeToken;

    if-eqz v1, :cond_2b

    .line 98
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 99
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v1, v2, :cond_4a

    .line 100
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/google/gson/reflect/TypeToken;->isCapturingTypeVariablesForbidden()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 103
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->verifyNoTypeVariable(Ljava/lang/reflect/Type;)V

    :cond_2a
    return-object v0

    :cond_2b
    if-ne v0, v2, :cond_4a

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TypeToken must be created with a type argument: new TypeToken<...>() {}; When using code shrinkers (ProGuard, R8, ...) make sure that generic signatures are preserved.\nSee "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type-token-raw"

    .line 114
    invoke-static {v2}, Lcom/google/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must only create direct subclasses of TypeToken"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z
    .registers 3

    .line 223
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 224
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_30

    .line 226
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_13

    .line 227
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_24

    .line 228
    :cond_13
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_24

    .line 229
    check-cast p0, Ljava/lang/Class;

    .line 230
    :goto_19
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 231
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_19

    .line 235
    :cond_24
    :goto_24
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 251
    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    .line 256
    :cond_c
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 258
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_17

    .line 259
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    if-eqz p0, :cond_4c

    .line 264
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 265
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    move v5, v0

    .line 266
    :goto_23
    array-length v6, v3

    if-ge v5, v6, :cond_45

    .line 267
    aget-object v6, v3, v5

    .line 268
    aget-object v7, v4, v5

    .line 269
    :goto_2a
    instance-of v8, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v8, :cond_3b

    .line 270
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 271
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Type;

    goto :goto_2a

    .line 273
    :cond_3b
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 277
    :cond_45
    invoke-static {p0, p1, p2}, Lcom/google/gson/reflect/TypeToken;->typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_4c

    return v2

    .line 282
    :cond_4c
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v3, p0

    :goto_51
    if-ge v0, v3, :cond_64

    aget-object v4, p0, v0

    .line 283
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v4, p1, v5}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_61

    return v2

    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 289
    :cond_64
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p0, p1, v0}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private static isCapturingTypeVariablesForbidden()Z
    .registers 2

    .line 88
    const-string v0, "gson.allowCapturingTypeVariables"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 334
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1b

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 336
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method private static typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 299
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 300
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 301
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    move v0, v1

    .line 302
    :goto_18
    array-length v2, p0

    if-ge v0, v2, :cond_29

    .line 303
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3, p2}, Lcom/google/gson/reflect/TypeToken;->matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_29
    const/4 p0, 0x1

    return p0

    :cond_2b
    return v1
.end method

.method private static verifyNoTypeVariable(Ljava/lang/reflect/Type;)V
    .registers 6

    .line 122
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_61

    .line 131
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_12

    .line 132
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/gson/reflect/TypeToken;->verifyNoTypeVariable(Ljava/lang/reflect/Type;)V

    goto :goto_58

    .line 133
    :cond_12
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 134
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 135
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 137
    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->verifyNoTypeVariable(Ljava/lang/reflect/Type;)V

    .line 140
    :cond_22
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    :goto_27
    if-ge v1, v0, :cond_58

    aget-object v2, p0, v1

    .line 141
    invoke-static {v2}, Lcom/google/gson/reflect/TypeToken;->verifyNoTypeVariable(Ljava/lang/reflect/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 143
    :cond_31
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_56

    .line 144
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 145
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_3d
    if-ge v3, v2, :cond_47

    aget-object v4, v0, v3

    .line 146
    invoke-static {v4}, Lcom/google/gson/reflect/TypeToken;->verifyNoTypeVariable(Ljava/lang/reflect/Type;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 148
    :cond_47
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    :goto_4c
    if-ge v1, v0, :cond_58

    aget-object v2, p0, v1

    .line 149
    invoke-static {v2}, Lcom/google/gson/reflect/TypeToken;->verifyNoTypeVariable(Ljava/lang/reflect/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_56
    if-eqz p0, :cond_59

    :cond_58
    :goto_58
    return-void

    .line 155
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TypeToken captured `null` as type argument; probably a compiler / runtime bug"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_61
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TypeToken type argument must not contain a type variable; captured type variable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " declared by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\nSee "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "typetoken-type-variable"

    .line 130
    invoke-static {p0}, Lcom/google/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 346
    instance-of v0, p1, Lcom/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/google/gson/reflect/TypeToken;

    iget-object p1, p1, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0, p1}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public final getRawType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 341
    iget v0, p0, Lcom/google/gson/reflect/TypeToken;->hashCode:I

    return v0
.end method

.method public isAssignableFrom(Lcom/google/gson/reflect/TypeToken;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/reflect/TypeToken<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z

    move-result p1

    return p1
.end method

.method public isAssignableFrom(Ljava/lang/reflect/Type;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    .line 195
    :cond_e
    iget-object v1, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_1f

    .line 196
    iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    .line 197
    :cond_1f
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2f

    .line 198
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v1, v0}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result p1

    return p1

    .line 199
    :cond_2f
    instance-of v3, v1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_4b

    .line 200
    iget-object v1, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 201
    invoke-static {p1, v1}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z

    move-result p1

    if-eqz p1, :cond_4a

    move v0, v2

    :cond_4a
    return v0

    .line 203
    :cond_4b
    const-class p1, Ljava/lang/reflect/ParameterizedType;

    const-class v0, Ljava/lang/reflect/GenericArrayType;

    const-class v2, Ljava/lang/Class;

    filled-new-array {v2, p1, v0}, [Ljava/lang/Class;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/gson/reflect/TypeToken;->buildUnsupportedTypeException(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
