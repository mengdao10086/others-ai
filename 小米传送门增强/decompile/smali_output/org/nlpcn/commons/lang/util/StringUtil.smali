.class public Lorg/nlpcn/commons/lang/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static filter:[I

.field private static filterEnd:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x80

    .line 15
    new-array v1, v0, [I

    sput-object v1, Lorg/nlpcn/commons/lang/util/StringUtil;->filter:[I

    .line 16
    new-array v0, v0, [I

    sput-object v0, Lorg/nlpcn/commons/lang/util/StringUtil;->filterEnd:[I

    const v2, 0x3fffffff    # 1.9999999f

    const/16 v3, 0x3c

    .line 21
    aput v2, v1, v3

    const/16 v2, 0x3e

    .line 22
    aput v2, v0, v3

    const/16 v2, 0x26

    const/16 v3, 0xa

    .line 24
    aput v3, v1, v2

    const/16 v4, 0x3b

    .line 25
    aput v4, v0, v2

    const/4 v0, -0x1

    .line 27
    aput v0, v1, v4

    .line 28
    aput v0, v1, v3

    const/16 v2, 0xd

    .line 30
    aput v0, v1, v2

    const/16 v2, 0x9

    .line 31
    aput v0, v1, v2

    const/16 v0, 0x20

    const/4 v2, 0x1

    .line 32
    aput v2, v1, v0

    const/16 v0, 0x2a

    .line 33
    aput v2, v1, v0

    const/16 v0, 0x2d

    .line 34
    aput v2, v1, v0

    const/16 v0, 0x2e

    .line 35
    aput v2, v1, v0

    const/16 v0, 0x23

    .line 36
    aput v2, v1, v0

    return-void
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_1c

    .line 110
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1c

    :cond_a
    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_1c

    .line 114
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_19

    return v2

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1c
    :goto_1c
    return v0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .registers 1

    .line 128
    invoke-static {p0}, Lorg/nlpcn/commons/lang/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static joiner(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 236
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 238
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 239
    const-string p0, ""

    return-object p0

    .line 242
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/nlpcn/commons/lang/util/StringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 249
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sortCharArray(Ljava/lang/String;)[C
    .registers 1

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 158
    invoke-static {p0}, Ljava/util/Arrays;->sort([C)V

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    .line 228
    const-string p0, "null"

    return-object p0

    .line 230
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_3

    return-object p0

    .line 293
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    const/16 v2, 0x3000

    const/16 v3, 0xa0

    if-ge v1, v0, :cond_30

    .line 297
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xfeff

    if-eq v4, v5, :cond_2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_30

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_30
    :goto_30
    if-ge v1, v0, :cond_4d

    add-int/lit8 v4, v0, -0x1

    .line 300
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_4a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_4d

    :cond_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    :cond_4d
    if-gtz v1, :cond_55

    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_59

    :cond_55
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_59
    return-object p0
.end method
