.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;
.source "JsonPrimitive.java"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method private static isIntegral(Lcom/google/gson/JsonPrimitive;)Z
    .registers 3

    .line 318
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 319
    check-cast p0, Ljava/lang/Number;

    .line 320
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_1d

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1d

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1d

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1d

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->deepCopy()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/google/gson/JsonPrimitive;
    .registers 1

    .line 0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_a2

    .line 286
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonPrimitive;

    if-eq v3, v2, :cond_11

    goto/16 :goto_a2

    .line 289
    :cond_11
    check-cast p1, Lcom/google/gson/JsonPrimitive;

    .line 290
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v2, :cond_1e

    .line 291
    iget-object p1, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 293
    :cond_1e
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 294
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/math/BigInteger;

    if-nez v2, :cond_4e

    iget-object v2, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/math/BigInteger;

    if-eqz v2, :cond_37

    goto :goto_4e

    .line 296
    :cond_37
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_4c

    goto :goto_5a

    :cond_4c
    move v0, v1

    goto :goto_5a

    .line 295
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_5a
    return v0

    .line 298
    :cond_5b
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_9b

    iget-object v3, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_9b

    .line 299
    instance-of v2, v2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_80

    instance-of v2, v3, Ljava/math/BigDecimal;

    if-eqz v2, :cond_80

    .line 301
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_7e

    goto :goto_7f

    :cond_7e
    move v0, v1

    :goto_7f
    return v0

    .line 304
    :cond_80
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsDouble()D

    move-result-wide v2

    .line 305
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsDouble()D

    move-result-wide v4

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_9a

    .line 308
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_99

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_99

    goto :goto_9a

    :cond_99
    move v0, v1

    :cond_9a
    :goto_9a
    return v0

    .line 310
    :cond_9b
    iget-object p1, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a2
    :goto_a2
    return v1
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    .line 184
    check-cast v0, Ljava/math/BigDecimal;

    goto :goto_11

    .line 185
    :cond_9
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/internal/NumberLimits;->parseBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_9

    .line 194
    check-cast v0, Ljava/math/BigInteger;

    goto :goto_24

    .line 195
    :cond_9
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 196
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_24

    .line 197
    :cond_1c
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/internal/NumberLimits;->parseBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_24
    return-object v0
.end method

.method public getAsBoolean()Z
    .registers 2

    .line 115
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 116
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 119
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAsByte()B
    .registers 2

    .line 240
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    :goto_17
    return v0
.end method

.method public getAsCharacter()C
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 253
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "String value is empty"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsDouble()D
    .registers 3

    .line 175
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_17
    return-wide v0
.end method

.method public getAsFloat()F
    .registers 2

    .line 205
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_17
    return v0
.end method

.method public getAsInt()I
    .registers 2

    .line 232
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_17
    return v0
.end method

.method public getAsLong()J
    .registers 3

    .line 216
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_17
    return-wide v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_9

    .line 141
    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 142
    :cond_9
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 143
    new-instance v1, Lcom/google/gson/internal/LazilyParsedNumber;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 145
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Primitive is neither a number nor a string"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsShort()S
    .registers 2

    .line 224
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    :goto_17
    return v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 161
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 162
    :cond_9
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 163
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_18
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 165
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_27
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public hashCode()I
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const/16 v0, 0x1f

    return v0

    .line 266
    :cond_7
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1c

    .line 267
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_17
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 270
    :cond_1c
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2f

    .line 271
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    goto :goto_17

    .line 274
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBoolean()Z
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public isNumber()Z
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method
