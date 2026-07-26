.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final BUFFER_SIZE:I = 0x400

.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I

.field private strictness:Lcom/google/gson/Strictness;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1796
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    sget-object v0, Lcom/google/gson/Strictness;->LEGACY_STRICT:Lcom/google/gson/Strictness;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    const/16 v0, 0x400

    .line 261
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 264
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 266
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 267
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 269
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v1, 0x20

    .line 292
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/4 v3, 0x1

    .line 296
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x6

    aput v3, v2, v0

    .line 307
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 308
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 312
    const-string v0, "in == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    return-void
.end method

.method static synthetic access$000(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    return-object p0
.end method

.method private checkLenient()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/stream/MalformedJsonException;
        }
    .end annotation

    .line 1549
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    sget-object v1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    if-ne v0, v1, :cond_7

    return-void

    .line 1550
    :cond_7
    const-string v0, "Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1774
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 1775
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x4

    .line 1777
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x5

    if-le v0, v1, :cond_18

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 1781
    :cond_18
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1782
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1783
    aget-char v3, v1, v0

    const/16 v4, 0x29

    if-ne v3, v4, :cond_46

    add-int/lit8 v3, v0, 0x1

    aget-char v3, v1, v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_46

    add-int/lit8 v3, v0, 0x2

    aget-char v3, v1, v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_46

    add-int/lit8 v3, v0, 0x3

    aget-char v3, v1, v3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_46

    add-int/lit8 v3, v0, 0x4

    aget-char v1, v1, v3

    const/16 v3, 0xa

    if-eq v1, v3, :cond_43

    goto :goto_46

    :cond_43
    add-int/2addr v0, v2

    .line 1792
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :cond_46
    :goto_46
    return-void
.end method

.method private fillBuffer(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1427
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1428
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_15

    sub-int/2addr v1, v2

    .line 1429
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1430
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17

    .line 1432
    :cond_15
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1435
    :goto_17
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1437
    :cond_19
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4b

    .line 1438
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 1441
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    const/4 v4, 0x1

    if-nez v1, :cond_48

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v1, :cond_48

    if-lez v2, :cond_48

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_48

    .line 1442
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    .line 1443
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 p1, p1, 0x1

    :cond_48
    if-lt v2, p1, :cond_19

    return v4

    :cond_4b
    return v3
.end method

.method private getPath(Z)Ljava/lang/String;
    .registers 6

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1607
    :goto_b
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ge v1, v2, :cond_5a

    .line 1608
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_60

    .line 1632
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown scope value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_2d
    const/16 v2, 0x2e

    .line 1622
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1623
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_57

    .line 1624
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    .line 1612
    :pswitch_3c
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v3, v3, v1

    if-eqz p1, :cond_4a

    if-lez v3, :cond_4a

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4a

    add-int/lit8 v3, v3, -0x1

    :cond_4a
    const/16 v2, 0x5b

    .line 1617
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_57
    :goto_57
    :pswitch_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1635
    :cond_5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3c
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_57
        :pswitch_57
        :pswitch_57
    .end packed-switch
.end method

.method private isLiteral(C)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x23

    if-eq p1, v0, :cond_39

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_39

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_39

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_39

    packed-switch p1, :pswitch_data_3e

    const/4 p1, 0x1

    return p1

    .line 847
    :cond_39
    :pswitch_39
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :cond_3c
    :pswitch_3c
    const/4 p1, 0x0

    return p1

    :pswitch_data_3e
    .packed-switch 0x5b
        :pswitch_3c
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method

.method private nextNonWhitespace(Z)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1468
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1469
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1470
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_6
    const/4 v3, 0x1

    if-ne v1, v2, :cond_34

    .line 1473
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1474
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_30

    if-nez p1, :cond_15

    const/4 p1, -0x1

    return p1

    .line 1542
    :cond_15
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1477
    :cond_30
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1478
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :cond_34
    add-int/lit8 v4, v1, 0x1

    .line 1481
    aget-char v5, v0, v1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_45

    .line 1483
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1484
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto/16 :goto_b2

    :cond_45
    const/16 v6, 0x20

    if-eq v5, v6, :cond_b2

    const/16 v6, 0xd

    if-eq v5, v6, :cond_b2

    const/16 v6, 0x9

    if-ne v5, v6, :cond_52

    goto :goto_b2

    :cond_52
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_9d

    .line 1491
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x2

    if-ne v4, v2, :cond_69

    .line 1493
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1494
    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    .line 1495
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-nez v1, :cond_69

    return v5

    .line 1501
    :cond_69
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1502
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v0, v1

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_83

    if-eq v2, v6, :cond_77

    return v5

    :cond_77
    add-int/lit8 v1, v1, 0x1

    .line 1516
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1517
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1518
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1519
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_6

    :cond_83
    add-int/lit8 v1, v1, 0x1

    .line 1506
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1507
    const-string v1, "*/"

    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 1510
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v7

    .line 1511
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_6

    .line 1508
    :cond_96
    const-string p1, "Unterminated comment"

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object p1

    throw p1

    :cond_9d
    const/16 v1, 0x23

    if-ne v5, v1, :cond_af

    .line 1526
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1532
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1533
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 1534
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1535
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto/16 :goto_6

    .line 1537
    :cond_af
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return v5

    :cond_b2
    :goto_b2
    move v1, v4

    goto/16 :goto_6
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    const/4 v1, 0x0

    .line 1074
    :goto_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1075
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_7
    move v4, v3

    move v3, v2

    :goto_9
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v4, :cond_6c

    add-int/lit8 v7, v2, 0x1

    .line 1079
    aget-char v2, v0, v2

    .line 1083
    iget-object v8, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    sget-object v9, Lcom/google/gson/Strictness;->STRICT:Lcom/google/gson/Strictness;

    if-ne v8, v9, :cond_24

    const/16 v8, 0x20

    if-lt v2, v8, :cond_1d

    goto :goto_24

    .line 1084
    :cond_1d
    const-string p1, "Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode"

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object p1

    throw p1

    :cond_24
    :goto_24
    if-ne v2, p1, :cond_3a

    .line 1087
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v7, v3

    sub-int/2addr v7, v6

    if-nez v1, :cond_32

    .line 1090
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1092
    :cond_32
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1093
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3a
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_5f

    .line 1096
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v7, v3

    add-int/lit8 v2, v7, -0x1

    if-nez v1, :cond_50

    mul-int/lit8 v7, v7, 0x2

    .line 1100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1102
    :cond_50
    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1103
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1104
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1105
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_7

    :cond_5f
    const/16 v5, 0xa

    if-ne v2, v5, :cond_6a

    .line 1108
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1109
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_6a
    move v2, v7

    goto :goto_9

    :cond_6c
    if-nez v1, :cond_7c

    sub-int v1, v2, v3

    mul-int/lit8 v1, v1, 0x2

    .line 1115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    :cond_7c
    sub-int v4, v2, v3

    .line 1117
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1118
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1119
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_8b

    goto/16 :goto_3

    .line 1120
    :cond_8b
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object p1

    throw p1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    move v2, v1

    .line 1133
    :goto_3
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v4, v3, v2

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v4, v5, :cond_4e

    .line 1134
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_5c

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5c

    const/16 v4, 0xc

    if-eq v3, v4, :cond_5c

    const/16 v4, 0xd

    if-eq v3, v4, :cond_5c

    const/16 v4, 0x20

    if-eq v3, v4, :cond_5c

    const/16 v4, 0x23

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_5c

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_5c

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_5c

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_5c

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_4a

    packed-switch v3, :pswitch_data_9c

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1140
    :cond_4a
    :pswitch_4a
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_5c

    .line 1159
    :cond_4e
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v2, v3, :cond_5e

    add-int/lit8 v3, v2, 0x1

    .line 1160
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_3

    :cond_5c
    :goto_5c
    :pswitch_5c
    move v1, v2

    goto :goto_7e

    :cond_5e
    if-nez v0, :cond_6b

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1171
    :cond_6b
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1172
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v2, 0x1

    .line 1174
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_7e
    if-nez v0, :cond_8a

    .line 1180
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_95

    :cond_8a
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    :goto_95
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-object v0

    nop

    :pswitch_data_9c
    .packed-switch 0x5b
        :pswitch_5c
        :pswitch_4a
        :pswitch_5c
    .end packed-switch
.end method

.method private peekKeyword()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x54

    if-ne v0, v1, :cond_10

    goto :goto_2f

    :cond_10
    const/16 v1, 0x66

    if-eq v0, v1, :cond_29

    const/16 v1, 0x46

    if-ne v0, v1, :cond_19

    goto :goto_29

    :cond_19
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_23

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_22

    goto :goto_23

    :cond_22
    return v2

    .line 699
    :cond_23
    :goto_23
    const-string v0, "null"

    const-string v1, "NULL"

    const/4 v3, 0x7

    goto :goto_34

    .line 695
    :cond_29
    :goto_29
    const-string v0, "false"

    const-string v1, "FALSE"

    const/4 v3, 0x6

    goto :goto_34

    .line 691
    :cond_2f
    :goto_2f
    const-string v0, "true"

    const-string v1, "TRUE"

    const/4 v3, 0x5

    .line 705
    :goto_34
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    sget-object v5, Lcom/google/gson/Strictness;->STRICT:Lcom/google/gson/Strictness;

    if-eq v4, v5, :cond_3c

    const/4 v4, 0x1

    goto :goto_3d

    :cond_3c
    move v4, v2

    .line 708
    :goto_3d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v2

    :goto_42
    if-ge v6, v5, :cond_6e

    .line 710
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v7, v8, :cond_54

    add-int/lit8 v7, v6, 0x1

    invoke-direct {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v7

    if-nez v7, :cond_54

    return v2

    .line 713
    :cond_54
    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v8, v6

    aget-char v7, v7, v8

    .line 714
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_6b

    if-eqz v4, :cond_6a

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_6a

    goto :goto_6b

    :cond_6a
    return v2

    :cond_6b
    :goto_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 720
    :cond_6e
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v5

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_7d

    add-int/lit8 v0, v5, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    :cond_7d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_8b

    return v2

    .line 725
    :cond_8b
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 726
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v3
.end method

.method private peekNumber()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 731
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 732
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 733
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v8, v6

    move v9, v8

    move v13, v9

    move v10, v7

    const-wide/16 v11, 0x0

    :goto_10
    add-int v14, v2, v8

    const/4 v15, 0x2

    if-ne v14, v3, :cond_27

    .line 745
    array-length v2, v1

    if-ne v8, v2, :cond_19

    return v6

    :cond_19
    add-int/lit8 v2, v8, 0x1

    .line 750
    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_93

    .line 753
    :cond_23
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 754
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    :cond_27
    add-int v14, v2, v8

    .line 757
    aget-char v14, v1, v14

    const/16 v6, 0x2b

    const/4 v5, 0x5

    if-eq v14, v6, :cond_ec

    const/16 v6, 0x45

    if-eq v14, v6, :cond_e0

    const/16 v6, 0x65

    if-eq v14, v6, :cond_e0

    const/16 v6, 0x2d

    if-eq v14, v6, :cond_d3

    const/16 v6, 0x2e

    const/4 v4, 0x3

    if-eq v14, v6, :cond_cb

    const/16 v6, 0x30

    if-lt v14, v6, :cond_8d

    const/16 v6, 0x39

    if-le v14, v6, :cond_4a

    goto :goto_8d

    :cond_4a
    if-eq v9, v7, :cond_87

    if-nez v9, :cond_4f

    goto :goto_87

    :cond_4f
    if-ne v9, v15, :cond_7a

    const-wide/16 v16, 0x0

    cmp-long v4, v11, v16

    if-nez v4, :cond_59

    const/4 v4, 0x0

    return v4

    :cond_59
    const-wide/16 v4, 0xa

    mul-long/2addr v4, v11

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    sub-long/2addr v4, v14

    const-wide v14, -0xcccccccccccccccL

    cmp-long v6, v11, v14

    if-gtz v6, :cond_72

    if-nez v6, :cond_70

    cmp-long v6, v4, v11

    if-gez v6, :cond_70

    goto :goto_72

    :cond_70
    const/4 v6, 0x0

    goto :goto_73

    :cond_72
    :goto_72
    move v6, v7

    :goto_73
    and-int/2addr v10, v6

    move-wide v11, v4

    :cond_75
    :goto_75
    const/4 v6, 0x0

    :goto_76
    const-wide/16 v16, 0x0

    goto/16 :goto_f3

    :cond_7a
    if-ne v9, v4, :cond_7f

    const/4 v6, 0x0

    const/4 v9, 0x4

    goto :goto_76

    :cond_7f
    if-eq v9, v5, :cond_84

    const/4 v4, 0x6

    if-ne v9, v4, :cond_75

    :cond_84
    const/4 v6, 0x0

    const/4 v9, 0x7

    goto :goto_76

    :cond_87
    :goto_87
    add-int/lit8 v14, v14, -0x30

    neg-int v4, v14

    int-to-long v11, v4

    move v9, v15

    goto :goto_75

    .line 794
    :cond_8d
    :goto_8d
    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-nez v1, :cond_c9

    :goto_93
    if-ne v9, v15, :cond_b7

    if-eqz v10, :cond_b7

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v11, v1

    if-nez v1, :cond_9f

    if-eqz v13, :cond_b7

    :cond_9f
    const-wide/16 v16, 0x0

    cmp-long v1, v11, v16

    if-nez v1, :cond_a7

    if-nez v13, :cond_b7

    :cond_a7
    if-eqz v13, :cond_aa

    goto :goto_ab

    :cond_aa
    neg-long v11, v11

    .line 826
    :goto_ab
    iput-wide v11, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 827
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/16 v1, 0xf

    .line 828
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    :cond_b7
    if-eq v9, v15, :cond_c2

    const/4 v1, 0x4

    if-eq v9, v1, :cond_c2

    const/4 v1, 0x7

    if-ne v9, v1, :cond_c0

    goto :goto_c2

    :cond_c0
    const/4 v6, 0x0

    return v6

    .line 832
    :cond_c2
    :goto_c2
    iput v8, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    const/16 v1, 0x10

    .line 833
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v1

    :cond_c9
    const/4 v6, 0x0

    return v6

    :cond_cb
    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v15, :cond_d2

    :goto_d0
    move v9, v4

    goto :goto_f3

    :cond_d2
    return v6

    :cond_d3
    const/4 v4, 0x6

    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    if-nez v9, :cond_dc

    move v9, v7

    move v13, v9

    goto :goto_f3

    :cond_dc
    if-ne v9, v5, :cond_df

    goto :goto_d0

    :cond_df
    return v6

    :cond_e0
    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    if-eq v9, v15, :cond_ea

    const/4 v4, 0x4

    if-ne v9, v4, :cond_e9

    goto :goto_ea

    :cond_e9
    return v6

    :cond_ea
    :goto_ea
    move v9, v5

    goto :goto_f3

    :cond_ec
    const/4 v4, 0x6

    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v5, :cond_f7

    goto :goto_d0

    :goto_f3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_10

    :cond_f7
    return v6
.end method

.method private push(I)V
    .registers 5

    .line 1412
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_21

    mul-int/lit8 v0, v0, 0x2

    .line 1414
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 1415
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 1416
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1418
    :cond_21
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    return-void
.end method

.method private readEscapeCharacter()C
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1683
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_15

    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_15

    .line 1684
    :cond_10
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    .line 1687
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_c8

    const/16 v3, 0x22

    if-eq v0, v3, :cond_db

    const/16 v3, 0x27

    if-eq v0, v3, :cond_d5

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_db

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_db

    const/16 v3, 0x62

    if-eq v0, v3, :cond_c5

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c2

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_c1

    const/16 v4, 0x72

    if-eq v0, v4, :cond_be

    const/16 v4, 0x74

    if-eq v0, v4, :cond_bb

    const/16 v4, 0x75

    if-ne v0, v4, :cond_b4

    add-int/lit8 v1, v1, 0x5

    .line 1690
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v4, 0x4

    if-le v1, v0, :cond_5e

    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_5e

    .line 1691
    :cond_59
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    .line 1695
    :cond_5e
    :goto_5e
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    :goto_63
    if-ge v0, v1, :cond_ad

    .line 1696
    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v5, v5, v0

    shl-int/lit8 v2, v2, 0x4

    const/16 v6, 0x30

    if-lt v5, v6, :cond_77

    const/16 v6, 0x39

    if-gt v5, v6, :cond_77

    add-int/lit8 v5, v5, -0x30

    :goto_75
    add-int/2addr v2, v5

    goto :goto_8b

    :cond_77
    const/16 v6, 0x61

    if-lt v5, v6, :cond_80

    if-gt v5, v3, :cond_80

    add-int/lit8 v5, v5, -0x57

    goto :goto_75

    :cond_80
    const/16 v6, 0x41

    if-lt v5, v6, :cond_8e

    const/16 v6, 0x46

    if-gt v5, v6, :cond_8e

    add-int/lit8 v5, v5, -0x37

    goto :goto_75

    :goto_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 1705
    :cond_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed Unicode escape \\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    .line 1708
    :cond_ad
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    int-to-char v0, v2

    return v0

    .line 1744
    :cond_b4
    const-string v0, "Invalid escape sequence"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    :cond_bb
    const/16 v0, 0x9

    return v0

    :cond_be
    const/16 v0, 0xd

    return v0

    :cond_c1
    return v5

    :cond_c2
    const/16 v0, 0xc

    return v0

    :cond_c5
    const/16 v0, 0x8

    return v0

    .line 1727
    :cond_c8
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    sget-object v2, Lcom/google/gson/Strictness;->STRICT:Lcom/google/gson/Strictness;

    if-eq v1, v2, :cond_e3

    .line 1730
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1731
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 1735
    :cond_d5
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    sget-object v2, Lcom/google/gson/Strictness;->STRICT:Lcom/google/gson/Strictness;

    if-eq v1, v2, :cond_dc

    :cond_db
    return v0

    .line 1736
    :cond_dc
    const-string v0, "Invalid escaped character \"\'\" in strict mode"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    .line 1728
    :cond_e3
    const-string v0, "Cannot escape a newline character in strict mode"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0
.end method

.method private skipQuotedValue(C)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 1189
    :goto_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1190
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_6
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2d

    add-int/lit8 v4, v1, 0x1

    .line 1193
    aget-char v1, v0, v1

    if-ne v1, p1, :cond_12

    .line 1195
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void

    :cond_12
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_20

    .line 1198
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1199
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 1200
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1201
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    goto :goto_6

    :cond_20
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2b

    .line 1203
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1204
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_2b
    move v1, v4

    goto :goto_6

    .line 1207
    :cond_2d
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 1208
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_2

    .line 1209
    :cond_36
    const-string p1, "Unterminated string"

    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object p1

    throw p1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1576
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1578
    :goto_4
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_14

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_14

    :cond_13
    return v3

    .line 1579
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v1, v2

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_29

    .line 1580
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    .line 1581
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_38

    :cond_29
    :goto_29
    if-ge v3, v0, :cond_41

    .line 1585
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v3

    aget-char v1, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3e

    .line 1578
    :goto_38
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_4

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_41
    return v5
.end method

.method private skipToEndOfLine()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1560
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_d

    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1561
    :cond_d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_23

    .line 1563
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 1564
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_27

    :cond_23
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_27
    :goto_27
    return-void
.end method

.method private skipUnquotedValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    .line 1216
    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_51

    .line 1217
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4b

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4b

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4b

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x23

    if-eq v1, v2, :cond_48

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_48

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_48

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_4b

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_48

    packed-switch v1, :pswitch_data_5c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1223
    :cond_48
    :pswitch_48
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 1235
    :cond_4b
    :pswitch_4b
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void

    :cond_51
    add-int/2addr v1, v0

    .line 1241
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v0, 0x1

    .line 1242
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_data_5c
    .packed-switch 0x5b
        :pswitch_4b
        :pswitch_48
        :pswitch_4b
    .end packed-switch
.end method

.method private syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/stream/MalformedJsonException;
        }
    .end annotation

    .line 1753
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nSee "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "malformed-json"

    invoke-static {p1}, Lcom/google/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1758
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 1760
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_b

    const-string v0, "adapter-not-null-safe"

    goto :goto_d

    :cond_b
    const-string v0, "unexpected-json-structure"

    .line 1761
    :goto_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nSee "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    invoke-static {v0}, Lcom/google/gson/internal/TroubleshootingGuide;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public beginArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 423
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    .line 426
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 427
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 428
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    .line 430
    :cond_1a
    const-string v0, "BEGIN_ARRAY"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public beginObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 463
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    .line 466
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    const/4 v0, 0x0

    .line 467
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    .line 469
    :cond_13
    const-string v0, "BEGIN_OBJECT"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1312
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1313
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 1314
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 1315
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method doPeek()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    const/16 v3, 0x27

    const/16 v4, 0x22

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/16 v7, 0x5d

    const/4 v8, 0x7

    const/16 v9, 0x3b

    const/16 v10, 0x2c

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_20

    sub-int/2addr v1, v13

    .line 547
    aput v12, v0, v1

    goto/16 :goto_a5

    :cond_20
    if-ne v2, v12, :cond_3b

    .line 550
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    if-eq v0, v10, :cond_a5

    if-eq v0, v9, :cond_36

    if-ne v0, v7, :cond_2f

    .line 553
    iput v11, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v11

    .line 559
    :cond_2f
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    .line 555
    :cond_36
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto/16 :goto_a5

    :cond_3b
    const/4 v14, 0x5

    if-eq v2, v6, :cond_11e

    if-ne v2, v14, :cond_42

    goto/16 :goto_11e

    :cond_42
    if-ne v2, v11, :cond_77

    sub-int/2addr v1, v13

    .line 600
    aput v14, v0, v1

    .line 602
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_a5

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_70

    .line 607
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 608
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_62

    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_62
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v14, 0x3e

    if-ne v0, v14, :cond_a5

    add-int/2addr v1, v13

    .line 609
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_a5

    .line 613
    :cond_70
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    :cond_77
    const/4 v0, 0x6

    if-ne v2, v0, :cond_8b

    .line 616
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    sget-object v1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    if-ne v0, v1, :cond_83

    .line 617
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 619
    :cond_83
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v13

    aput v8, v0, v1

    goto :goto_a5

    :cond_8b
    if-ne v2, v8, :cond_a3

    const/4 v0, 0x0

    .line 621
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9a

    const/16 v0, 0x11

    .line 623
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0

    .line 625
    :cond_9a
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 626
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_a5

    :cond_a3
    if-eq v2, v5, :cond_116

    .line 632
    :cond_a5
    :goto_a5
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    if-eq v0, v4, :cond_111

    if-eq v0, v3, :cond_10b

    if-eq v0, v10, :cond_f4

    if-eq v0, v9, :cond_f4

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_f1

    if-eq v0, v7, :cond_ec

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_e9

    .line 659
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 662
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    move-result v0

    if-eqz v0, :cond_c7

    return v0

    .line 667
    :cond_c7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    move-result v0

    if-eqz v0, :cond_ce

    return v0

    .line 672
    :cond_ce
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 676
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v0, 0xa

    .line 677
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0

    .line 673
    :cond_e2
    const-string v0, "Expected value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    .line 657
    :cond_e9
    iput v13, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v13

    :cond_ec
    if-ne v2, v13, :cond_f4

    .line 636
    iput v11, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v11

    .line 655
    :cond_f1
    iput v6, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v6

    :cond_f4
    if-eq v2, v13, :cond_100

    if-ne v2, v12, :cond_f9

    goto :goto_100

    .line 647
    :cond_f9
    const-string v0, "Unexpected value"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    .line 643
    :cond_100
    :goto_100
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 644
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 645
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v8

    .line 650
    :cond_10b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 651
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    :cond_111
    const/16 v0, 0x9

    .line 653
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0

    .line 629
    :cond_116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11e
    :goto_11e
    sub-int/2addr v1, v13

    .line 562
    aput v11, v0, v1

    const/16 v0, 0x7d

    if-ne v2, v14, :cond_13c

    .line 565
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    if-eq v1, v10, :cond_13c

    if-eq v1, v9, :cond_139

    if-ne v1, v0, :cond_132

    .line 568
    iput v12, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v12

    .line 574
    :cond_132
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    .line 570
    :cond_139
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 577
    :cond_13c
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    if-eq v1, v4, :cond_173

    if-eq v1, v3, :cond_16b

    .line 578
    const-string v3, "Expected name"

    if-eq v1, v0, :cond_161

    .line 591
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 592
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v13

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    int-to-char v0, v1

    .line 593
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_15c

    const/16 v0, 0xe

    .line 594
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0

    .line 596
    :cond_15c
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    :cond_161
    if-eq v2, v14, :cond_166

    .line 586
    iput v12, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v12

    .line 588
    :cond_166
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    .line 582
    :cond_16b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v0, 0xc

    .line 583
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0

    :cond_173
    const/16 v0, 0xd

    .line 580
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v0
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 443
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 446
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 447
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x2

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 448
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    .line 450
    :cond_1f
    const-string v0, "END_ARRAY"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public endObject()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 482
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 485
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 486
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 487
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    sub-int/2addr v0, v1

    aget v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    const/4 v0, 0x0

    .line 488
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    .line 490
    :cond_23
    const-string v0, "END_OBJECT"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1653
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->getPath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousPath()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 1671
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->getPath(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStrictness()Lcom/google/gson/Strictness;
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 498
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    const/16 v1, 0x11

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public final isLenient()Z
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    sget-object v1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method locationString()Ljava/lang/String;
    .registers 5

    .line 1600
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    .line 1601
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBoolean()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 932
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    .line 935
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 936
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    .line 939
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 940
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 943
    :cond_2a
    const-string v0, "a boolean"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public nextDouble()D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 975
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 977
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    .line 981
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 982
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 983
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v0, v0

    return-wide v0

    :cond_1f
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_3a

    .line 987
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 988
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_65

    :cond_3a
    const/16 v1, 0x8

    if-eq v0, v1, :cond_58

    const/16 v4, 0x9

    if-ne v0, v4, :cond_43

    goto :goto_58

    :cond_43
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4e

    .line 992
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_65

    :cond_4e
    if-ne v0, v3, :cond_51

    goto :goto_65

    .line 994
    :cond_51
    const-string v0, "a double"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_58
    :goto_58
    if-ne v0, v1, :cond_5d

    const/16 v0, 0x27

    goto :goto_5f

    :cond_5d
    const/16 v0, 0x22

    .line 990
    :goto_5f
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 997
    :goto_65
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 998
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 999
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    sget-object v4, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    if-eq v3, v4, :cond_96

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_80

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_80

    goto :goto_96

    .line 1000
    :cond_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/google/gson/stream/MalformedJsonException;

    move-result-object v0

    throw v0

    :cond_96
    :goto_96
    const/4 v3, 0x0

    .line 1002
    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1003
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1004
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0
.end method

.method public nextInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1255
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 1257
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xf

    .line 1261
    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_44

    .line 1262
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v0, v0, v5

    if-nez v0, :cond_26

    .line 1266
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1267
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    .line 1264
    :cond_26
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5d

    .line 1272
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1273
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_9c

    :cond_5d
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_71

    const/16 v5, 0x9

    if-eq v0, v5, :cond_71

    if-ne v0, v1, :cond_6a

    goto :goto_71

    .line 1289
    :cond_6a
    const-string v0, "an int"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_71
    :goto_71
    if-ne v0, v1, :cond_7a

    .line 1276
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_87

    :cond_7a
    if-ne v0, v4, :cond_7f

    const/16 v0, 0x27

    goto :goto_81

    :cond_7f
    const/16 v0, 0x22

    .line 1278
    :goto_81
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1281
    :goto_87
    :try_start_87
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1282
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1283
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_9b} :catch_9c

    return v0

    :catch_9c
    :goto_9c
    const/16 v0, 0xb

    .line 1292
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1293
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_be

    const/4 v0, 0x0

    .line 1298
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1299
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1300
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    .line 1296
    :cond_be
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1018
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 1020
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1e

    .line 1024
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1025
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 1026
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    return-wide v0

    :cond_1e
    const/16 v1, 0x10

    if-ne v0, v1, :cond_37

    .line 1030
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1031
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_76

    :cond_37
    const/16 v1, 0xa

    const/16 v3, 0x8

    if-eq v0, v3, :cond_4b

    const/16 v4, 0x9

    if-eq v0, v4, :cond_4b

    if-ne v0, v1, :cond_44

    goto :goto_4b

    .line 1047
    :cond_44
    const-string v0, "a long"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_4b
    :goto_4b
    if-ne v0, v1, :cond_54

    .line 1034
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_61

    :cond_54
    if-ne v0, v3, :cond_59

    const/16 v0, 0x27

    goto :goto_5b

    :cond_59
    const/16 v0, 0x22

    .line 1036
    :goto_5b
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1039
    :goto_61
    :try_start_61
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1040
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1041
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_75} :catch_76

    return-wide v0

    :catch_76
    :goto_76
    const/16 v0, 0xb

    .line 1050
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1051
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v3, v0

    long-to-double v5, v3

    cmpl-double v0, v5, v0

    if-nez v0, :cond_98

    const/4 v0, 0x0

    .line 1056
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1057
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1058
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-wide v3

    .line 1054
    :cond_98
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 873
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    .line 877
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_11
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x27

    .line 879
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_1c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_32

    const/16 v0, 0x22

    .line 881
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    :goto_26
    const/4 v1, 0x0

    .line 885
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 886
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 883
    :cond_32
    const-string v0, "a name"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 952
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 954
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    .line 957
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 958
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    .line 960
    :cond_1b
    const-string v0, "null"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 897
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 899
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 903
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_11
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1c

    const/16 v0, 0x27

    .line 905
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_1c
    const/16 v1, 0x9

    if-ne v0, v1, :cond_27

    const/16 v0, 0x22

    .line 907
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_27
    const/16 v1, 0xb

    if-ne v0, v1, :cond_31

    .line 909
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    const/4 v1, 0x0

    .line 910
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_52

    :cond_31
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3c

    .line 912
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_3c
    const/16 v1, 0x10

    if-ne v0, v1, :cond_62

    .line 914
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 915
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_52
    const/4 v1, 0x0

    .line 919
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 920
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 917
    :cond_62
    const-string v0, "a string"

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->unexpectedTokenError(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_8

    .line 507
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    .line 539
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 537
    :pswitch_11
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 535
    :pswitch_14
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 522
    :pswitch_17
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 532
    :pswitch_1a
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 527
    :pswitch_1d
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 525
    :pswitch_20
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 518
    :pswitch_23
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 516
    :pswitch_26
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 514
    :pswitch_29
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 512
    :pswitch_2c
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_14
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_5

    .line 333
    sget-object p1, Lcom/google/gson/Strictness;->LENIENT:Lcom/google/gson/Strictness;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/google/gson/Strictness;->LEGACY_STRICT:Lcom/google/gson/Strictness;

    :goto_7
    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonReader;->setStrictness(Lcom/google/gson/Strictness;)V

    return-void
.end method

.method public final setStrictness(Lcom/google/gson/Strictness;)V
    .registers 2

    .line 400
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->strictness:Lcom/google/gson/Strictness;

    return-void
.end method

.method public skipValue()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1337
    :cond_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v2, :cond_a

    .line 1339
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    :cond_a
    const/16 v3, 0x27

    const/16 v4, 0x22

    .line 1342
    const-string v5, "<skipped>"

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_84

    :pswitch_14
    goto :goto_74

    :pswitch_15
    return-void

    .line 1396
    :pswitch_16
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_74

    .line 1375
    :pswitch_1e
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    if-nez v1, :cond_74

    .line 1378
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_74

    .line 1389
    :pswitch_2b
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    if-nez v1, :cond_74

    .line 1392
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_74

    .line 1382
    :pswitch_38
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    if-nez v1, :cond_74

    .line 1385
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_74

    .line 1366
    :pswitch_45
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_74

    .line 1372
    :pswitch_49
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_74

    .line 1369
    :pswitch_4d
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_74

    .line 1352
    :pswitch_51
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    :goto_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_74

    .line 1344
    :pswitch_59
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->push(I)V

    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :pswitch_5f
    if-nez v1, :cond_69

    .line 1360
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v6

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1362
    :cond_69
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    goto :goto_56

    :pswitch_6f
    const/4 v2, 0x3

    .line 1348
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->push(I)V

    goto :goto_5c

    .line 1405
    :cond_74
    :goto_74
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-gtz v1, :cond_2

    .line 1408
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v6

    aget v2, v0, v1

    add-int/2addr v2, v6

    aput v2, v0, v1

    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_5f
        :pswitch_59
        :pswitch_51
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_14
        :pswitch_38
        :pswitch_2b
        :pswitch_1e
        :pswitch_14
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
