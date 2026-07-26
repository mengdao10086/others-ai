.class final Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;
.super Lcom/airbnb/lottie/parser/moshi/JsonReader;
.source "JsonUtf8Reader.java"


# static fields
.field private static final CLOSING_BLOCK_COMMENT:Lokio/ByteString;

.field private static final DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

.field private static final SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final UNQUOTED_STRING_TERMINALS:Lokio/ByteString;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-string v0, "\'\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 30
    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 31
    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 32
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 33
    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    .line 34
    const-string v0, "*/"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;)V
    .registers 3

    .line 93
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-eqz p1, :cond_15

    .line 97
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    .line 99
    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const/4 p1, 0x6

    .line 100
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    return-void

    .line 95
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 951
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->lenient:Z

    if-eqz v0, :cond_5

    return-void

    .line 952
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0
.end method

.method private doPeek()I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 213
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const/16 v5, 0x22

    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    const/4 v9, 0x3

    const/16 v10, 0x5d

    const/4 v11, 0x7

    const/16 v12, 0x3b

    const/16 v13, 0x2c

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    sub-int/2addr v2, v4

    .line 215
    aput v15, v1, v2

    goto/16 :goto_9e

    :cond_22
    if-ne v3, v15, :cond_41

    .line 218
    invoke-direct {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    .line 219
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    if-eq v1, v13, :cond_9e

    if-eq v1, v12, :cond_3d

    if-ne v1, v10, :cond_36

    .line 222
    iput v14, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v14

    .line 228
    :cond_36
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 224
    :cond_3d
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    goto :goto_9e

    :cond_41
    const/4 v15, 0x5

    if-eq v3, v9, :cond_12a

    if-ne v3, v15, :cond_48

    goto/16 :goto_12a

    :cond_48
    if-ne v3, v14, :cond_82

    sub-int/2addr v2, v4

    .line 272
    aput v15, v1, v2

    .line 274
    invoke-direct {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    .line 275
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_9e

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_7b

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 281
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v14, 0x1

    invoke-interface {v1, v14, v15}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_9e

    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_9e

    .line 282
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    goto :goto_9e

    .line 286
    :cond_7b
    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    :cond_82
    const/4 v14, 0x6

    if-ne v3, v14, :cond_89

    sub-int/2addr v2, v4

    .line 289
    aput v11, v1, v2

    goto :goto_9e

    :cond_89
    if-ne v3, v11, :cond_9c

    const/4 v1, 0x0

    .line 291
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_98

    const/16 v1, 0x12

    .line 293
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 295
    :cond_98
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    goto :goto_9e

    :cond_9c
    if-eq v3, v6, :cond_122

    .line 301
    :cond_9e
    :goto_9e
    invoke-direct {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    if-eq v1, v5, :cond_118

    const/16 v2, 0x27

    if-eq v1, v2, :cond_10d

    if-eq v1, v13, :cond_fa

    if-eq v1, v12, :cond_fa

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_f2

    if-eq v1, v10, :cond_e7

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_df

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekKeyword()I

    move-result v1

    if-eqz v1, :cond_bd

    return v1

    .line 339
    :cond_bd
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekNumber()I

    move-result v1

    if-eqz v1, :cond_c4

    return v1

    .line 344
    :cond_c4
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    const/16 v1, 0xa

    .line 349
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 345
    :cond_d8
    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 329
    :cond_df
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 330
    iput v4, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v4

    :cond_e7
    if-ne v3, v4, :cond_fa

    .line 305
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/4 v1, 0x4

    .line 306
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 326
    :cond_f2
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 327
    iput v9, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v9

    :cond_fa
    if-eq v3, v4, :cond_107

    const/4 v1, 0x2

    if-ne v3, v1, :cond_100

    goto :goto_107

    .line 316
    :cond_100
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 313
    :cond_107
    :goto_107
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 314
    iput v11, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v11

    .line 319
    :cond_10d
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 320
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 321
    iput v6, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v6

    .line 323
    :cond_118
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/16 v1, 0x9

    .line 324
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 298
    :cond_122
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12a
    :goto_12a
    sub-int/2addr v2, v4

    const/4 v6, 0x4

    .line 231
    aput v6, v1, v2

    const/16 v1, 0x7d

    if-ne v3, v15, :cond_14f

    .line 234
    invoke-direct {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v2

    .line 235
    iget-object v6, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    if-eq v2, v13, :cond_14f

    if-eq v2, v12, :cond_14c

    if-ne v2, v1, :cond_145

    const/4 v1, 0x2

    .line 238
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 244
    :cond_145
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 240
    :cond_14c
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 247
    :cond_14f
    invoke-direct {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v2

    if-eq v2, v5, :cond_18e

    const/16 v4, 0x27

    if-eq v2, v4, :cond_181

    .line 248
    const-string v4, "Expected name"

    if-eq v2, v1, :cond_171

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    int-to-char v1, v2

    .line 265
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_16c

    const/16 v1, 0xe

    .line 266
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 268
    :cond_16c
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    :cond_171
    if-eq v3, v15, :cond_17c

    .line 258
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/4 v1, 0x2

    .line 259
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 261
    :cond_17c
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 253
    :cond_181
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    const/16 v1, 0xc

    .line 255
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    .line 250
    :cond_18e
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/16 v1, 0xd

    .line 251
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1
.end method

.method private findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .registers 7

    .line 595
    iget-object v0, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1f

    .line 596
    iget-object v3, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 597
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 598
    iget-object p2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    aput-object p1, p2, v0

    return v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1f
    const/4 p1, -0x1

    return p1
.end method

.method private isLiteral(I)Z
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

    .line 492
    :cond_39
    :pswitch_39
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

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
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 897
    :goto_2
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v3, v1, 0x1

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 898
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_7e

    const/16 v4, 0x20

    if-eq v2, v4, :cond_7e

    const/16 v4, 0xd

    if-eq v2, v4, :cond_7e

    const/16 v4, 0x9

    if-ne v2, v4, :cond_25

    goto :goto_7e

    .line 903
    :cond_25
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->skip(J)V

    const/16 v1, 0x2f

    if-ne v2, v1, :cond_72

    .line 905
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v4, 0x2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->request(J)Z

    move-result v3

    if-nez v3, :cond_3a

    return v2

    .line 909
    :cond_3a
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 910
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_5a

    if-eq v3, v1, :cond_4c

    return v2

    .line 924
    :cond_4c
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 925
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 926
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    goto :goto_1

    .line 914
    :cond_5a
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 915
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 916
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfBlockComment()Z

    move-result v1

    if-eqz v1, :cond_6b

    goto :goto_1

    .line 917
    :cond_6b
    const-string p1, "Unterminated comment"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_72
    const/16 v1, 0x23

    if-ne v2, v1, :cond_7d

    .line 936
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 937
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    goto :goto_1

    :cond_7d
    return v2

    :cond_7e
    :goto_7e
    move v1, v3

    goto :goto_2

    :cond_80
    if-nez p1, :cond_84

    const/4 p1, -0x1

    return p1

    .line 944
    :cond_84
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "End of input"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 718
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_55

    .line 722
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_34

    if-nez v0, :cond_1e

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    :cond_1e
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 726
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_34
    if-nez v0, :cond_42

    .line 732
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 733
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    return-object p1

    .line 736
    :cond_42
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->readByte()B

    .line 738
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 719
    :cond_55
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object p1

    throw p1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_15

    .line 746
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_15
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method private peekKeyword()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v1, 0x74

    const/4 v2, 0x0

    if-eq v0, v1, :cond_31

    const/16 v1, 0x54

    if-ne v0, v1, :cond_12

    goto :goto_31

    :cond_12
    const/16 v1, 0x66

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1b

    goto :goto_2b

    :cond_1b
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_25

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_24

    goto :goto_25

    :cond_24
    return v2

    .line 369
    :cond_25
    :goto_25
    const-string v0, "null"

    const-string v1, "NULL"

    const/4 v3, 0x7

    goto :goto_36

    .line 365
    :cond_2b
    :goto_2b
    const-string v0, "false"

    const-string v1, "FALSE"

    const/4 v3, 0x6

    goto :goto_36

    .line 361
    :cond_31
    :goto_31
    const-string v0, "true"

    const-string v1, "TRUE"

    const/4 v3, 0x5

    .line 375
    :goto_36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_3b
    if-ge v5, v4, :cond_5f

    .line 377
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v7, v5, 0x1

    int-to-long v8, v7

    invoke-interface {v6, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-nez v6, :cond_49

    return v2

    .line 380
    :cond_49
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v6

    .line 381
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v6, v8, :cond_5d

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v6, v5, :cond_5d

    return v2

    :cond_5d
    move v5, v7

    goto :goto_3b

    .line 386
    :cond_5f
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v1, v4, 0x1

    int-to-long v5, v1

    invoke-interface {v0, v5, v6}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v5, v4

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->getByte(J)B

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_78

    return v2

    .line 391
    :cond_78
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v1, v4

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 392
    iput v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v3
.end method

.method private peekNumber()I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-wide v8, v1

    move v5, v3

    move v6, v5

    move v10, v6

    move v7, v4

    .line 405
    :goto_b
    iget-object v11, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v12, v5, 0x1

    int-to-long v13, v12

    invoke-interface {v11, v13, v14}, Lokio/BufferedSource;->request(J)Z

    move-result v11

    const/4 v15, 0x2

    if-nez v11, :cond_19

    goto/16 :goto_83

    .line 409
    :cond_19
    iget-object v11, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v13, v5

    invoke-virtual {v11, v13, v14}, Lokio/Buffer;->getByte(J)B

    move-result v11

    const/16 v13, 0x2b

    if-eq v11, v13, :cond_d3

    const/16 v13, 0x45

    if-eq v11, v13, :cond_c9

    const/16 v13, 0x65

    if-eq v11, v13, :cond_c9

    const/16 v13, 0x2d

    if-eq v11, v13, :cond_bd

    const/16 v13, 0x2e

    const/4 v14, 0x3

    if-eq v11, v13, :cond_b8

    const/16 v13, 0x30

    if-lt v11, v13, :cond_7d

    const/16 v13, 0x39

    if-le v11, v13, :cond_3e

    goto :goto_7d

    :cond_3e
    if-eq v6, v4, :cond_76

    if-nez v6, :cond_43

    goto :goto_76

    :cond_43
    if-ne v6, v15, :cond_68

    cmp-long v5, v8, v1

    if-nez v5, :cond_4a

    return v3

    :cond_4a
    const-wide/16 v13, 0xa

    mul-long/2addr v13, v8

    add-int/lit8 v11, v11, -0x30

    int-to-long v4, v11

    sub-long/2addr v13, v4

    const-wide v4, -0xcccccccccccccccL

    cmp-long v4, v8, v4

    if-gtz v4, :cond_63

    if-nez v4, :cond_61

    cmp-long v4, v13, v8

    if-gez v4, :cond_61

    goto :goto_63

    :cond_61
    move v4, v3

    goto :goto_64

    :cond_63
    :goto_63
    const/4 v4, 0x1

    :goto_64
    and-int/2addr v7, v4

    move-wide v8, v13

    goto/16 :goto_d8

    :cond_68
    if-ne v6, v14, :cond_6d

    const/4 v6, 0x4

    goto/16 :goto_d8

    :cond_6d
    const/4 v4, 0x5

    if-eq v6, v4, :cond_73

    const/4 v4, 0x6

    if-ne v6, v4, :cond_d8

    :cond_73
    const/4 v6, 0x7

    goto/16 :goto_d8

    :cond_76
    :goto_76
    add-int/lit8 v11, v11, -0x30

    neg-int v4, v11

    int-to-long v8, v4

    move v6, v15

    goto/16 :goto_d8

    .line 446
    :cond_7d
    :goto_7d
    invoke-direct {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v4

    if-nez v4, :cond_b7

    :goto_83
    if-ne v6, v15, :cond_a6

    if-eqz v7, :cond_a6

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v4, v8, v11

    if-nez v4, :cond_8f

    if-eqz v10, :cond_a6

    :cond_8f
    cmp-long v1, v8, v1

    if-nez v1, :cond_95

    if-nez v10, :cond_a6

    :cond_95
    if-eqz v10, :cond_98

    goto :goto_99

    :cond_98
    neg-long v8, v8

    .line 473
    :goto_99
    iput-wide v8, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 474
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v2, v5

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    const/16 v1, 0x10

    .line 475
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_a6
    if-eq v6, v15, :cond_b0

    const/4 v1, 0x4

    if-eq v6, v1, :cond_b0

    const/4 v1, 0x7

    if-ne v6, v1, :cond_af

    goto :goto_b0

    :cond_af
    return v3

    .line 478
    :cond_b0
    :goto_b0
    iput v5, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    const/16 v1, 0x11

    .line 479
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_b7
    return v3

    :cond_b8
    if-ne v6, v15, :cond_bc

    move v6, v14

    goto :goto_d8

    :cond_bc
    return v3

    :cond_bd
    const/4 v4, 0x6

    if-nez v6, :cond_c3

    const/4 v6, 0x1

    const/4 v10, 0x1

    goto :goto_d8

    :cond_c3
    const/4 v5, 0x5

    if-ne v6, v5, :cond_c8

    :goto_c6
    move v6, v4

    goto :goto_d8

    :cond_c8
    return v3

    :cond_c9
    const/4 v5, 0x5

    if-eq v6, v15, :cond_d1

    const/4 v4, 0x4

    if-ne v6, v4, :cond_d0

    goto :goto_d1

    :cond_d0
    return v3

    :cond_d1
    :goto_d1
    move v6, v5

    goto :goto_d8

    :cond_d3
    const/4 v4, 0x6

    const/4 v5, 0x5

    if-ne v6, v5, :cond_dc

    goto :goto_c6

    :cond_d8
    :goto_d8
    move v5, v12

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_dc
    return v3
.end method

.method private readEscapeCharacter()C
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 993
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_e0

    const/16 v2, 0x27

    if-eq v0, v2, :cond_e0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_e0

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_e0

    const/16 v2, 0x62

    if-eq v0, v2, :cond_dd

    const/16 v2, 0x66

    if-eq v0, v2, :cond_da

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_d9

    const/16 v1, 0x72

    if-eq v0, v1, :cond_d6

    const/16 v1, 0x74

    if-eq v0, v1, :cond_d3

    const/16 v1, 0x75

    if-eq v0, v1, :cond_59

    .line 1040
    iget-boolean v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->lenient:Z

    if-eqz v1, :cond_42

    int-to-char v0, v0

    return v0

    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape sequence: \\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    .line 996
    :cond_59
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v3, 0x4

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_b8

    const/4 v0, 0x0

    move v1, v0

    :goto_65
    const/4 v5, 0x4

    if-ge v0, v5, :cond_b2

    .line 1002
    iget-object v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lokio/Buffer;->getByte(J)B

    move-result v5

    shl-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    const/16 v6, 0x30

    if-lt v5, v6, :cond_7f

    const/16 v6, 0x39

    if-gt v5, v6, :cond_7f

    add-int/lit8 v5, v5, -0x30

    :goto_7c
    add-int/2addr v1, v5

    int-to-char v1, v1

    goto :goto_93

    :cond_7f
    const/16 v6, 0x61

    if-lt v5, v6, :cond_88

    if-gt v5, v2, :cond_88

    add-int/lit8 v5, v5, -0x57

    goto :goto_7c

    :cond_88
    const/16 v6, 0x41

    if-lt v5, v6, :cond_96

    const/16 v6, 0x46

    if-gt v5, v6, :cond_96

    add-int/lit8 v5, v5, -0x37

    goto :goto_7c

    :goto_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 1011
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    .line 1014
    :cond_b2
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->skip(J)V

    return v1

    .line 997
    :cond_b8
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unterminated escape sequence at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d3
    const/16 v0, 0x9

    return v0

    :cond_d6
    const/16 v0, 0xd

    return v0

    :cond_d9
    return v1

    :cond_da
    const/16 v0, 0xc

    return v0

    :cond_dd
    const/16 v0, 0x8

    return v0

    :cond_e0
    int-to-char v0, v0

    return v0

    .line 990
    :cond_e2
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0
.end method

.method private skipQuotedValue(Lokio/ByteString;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_29

    .line 754
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_22

    .line 755
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 756
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    goto :goto_0

    .line 758
    :cond_22
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void

    .line 752
    :cond_29
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    move-result-object p1

    throw p1
.end method

.method private skipToEndOfBlockComment()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 970
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOf(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 972
    :goto_11
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v2, v5

    goto :goto_20

    :cond_1c
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v2

    :goto_20
    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->skip(J)V

    return v0
.end method

.method private skipToEndOfLine()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 963
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_14

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_18
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method private skipUnquotedValue()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 766
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_15
    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method


# virtual methods
.method public beginArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 107
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 111
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 112
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    .line 114
    :cond_1a
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 137
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    .line 140
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    .line 143
    :cond_13
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

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

    .line 825
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 826
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 827
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 828
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 829
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 122
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 125
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 126
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x2

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    .line 129
    :cond_1f
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_ARRAY but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 151
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 154
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 155
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 156
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    sub-int/2addr v0, v1

    aget v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    .line 159
    :cond_23
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected END_OBJECT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 167
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    const/16 v1, 0x12

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public nextBoolean()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 652
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    .line 655
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 656
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    .line 659
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 660
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 663
    :cond_2a
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 669
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    .line 673
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 674
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 675
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-double v0, v0

    return-wide v0

    :cond_1f
    const/16 v1, 0x11

    .line 678
    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_35

    .line 679
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_5c

    :cond_35
    const/16 v1, 0x9

    if-ne v0, v1, :cond_42

    .line 681
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_5c

    :cond_42
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4f

    .line 683
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_5c

    :cond_4f
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5a

    .line 685
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_5c

    :cond_5a
    if-ne v0, v4, :cond_c9

    .line 690
    :goto_5c
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 693
    :try_start_5e
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_64} :catch_a8

    .line 698
    iget-boolean v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->lenient:Z

    if-nez v3, :cond_96

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_75

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_75

    goto :goto_96

    .line 699
    :cond_75
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_96
    :goto_96
    const/4 v3, 0x0

    .line 702
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 703
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 704
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0

    .line 695
    :catch_a8
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_c9
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextInt()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 770
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 772
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 776
    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_49

    .line 777
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v0, v0, v6

    if-nez v0, :cond_28

    .line 782
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 783
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 779
    :cond_28
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_5b

    .line 788
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_ae

    :cond_5b
    const/16 v1, 0x9

    if-eq v0, v1, :cond_8a

    const/16 v6, 0x8

    if-ne v0, v6, :cond_64

    goto :goto_8a

    :cond_64
    if-ne v0, v5, :cond_67

    goto :goto_ae

    .line 802
    :cond_67
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    :goto_8a
    if-ne v0, v1, :cond_93

    .line 791
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_99

    .line 792
    :cond_93
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    :goto_99
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 794
    :try_start_9b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 795
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 796
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_9b .. :try_end_ad} :catch_ae

    return v0

    .line 805
    :catch_ae
    :goto_ae
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 808
    :try_start_b0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_b0 .. :try_end_b6} :catch_ef

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v0, v6, v0

    if-nez v0, :cond_ce

    const/4 v0, 0x0

    .line 818
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 819
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 820
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 815
    :cond_ce
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :catch_ef
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 513
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    .line 517
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_11
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1c

    .line 519
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    .line 521
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_27
    const/16 v1, 0xf

    if-ne v0, v1, :cond_39

    .line 523
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    :goto_2d
    const/4 v1, 0x0

    .line 527
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 528
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 525
    :cond_39
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 609
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 613
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_11
    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    .line 615
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_1c
    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    .line 617
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_27
    const/16 v1, 0xb

    if-ne v0, v1, :cond_31

    .line 619
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    const/4 v1, 0x0

    .line 620
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_49

    :cond_31
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3c

    .line 622
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_3c
    const/16 v1, 0x11

    if-ne v0, v1, :cond_59

    .line 624
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_49
    const/4 v1, 0x0

    .line 628
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 629
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 626
    :cond_59
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 175
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    .line 208
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :pswitch_11
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 204
    :pswitch_14
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 191
    :pswitch_17
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 201
    :pswitch_1a
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 196
    :pswitch_1d
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 194
    :pswitch_20
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 186
    :pswitch_23
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 184
    :pswitch_26
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 182
    :pswitch_29
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    return-object v0

    .line 180
    :pswitch_2c
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

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
        :pswitch_17
        :pswitch_14
        :pswitch_14
        :pswitch_11
    .end packed-switch
.end method

.method public selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    .line 535
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_54

    const/16 v1, 0xf

    if-le v0, v1, :cond_12

    goto :goto_54

    :cond_12
    if-ne v0, v1, :cond_1b

    .line 541
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result p1

    return p1

    .line 544
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    iget-object v3, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v0, v3}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v0

    if-eq v0, v2, :cond_35

    const/4 v1, 0x0

    .line 546
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 547
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, v2

    return v0

    .line 554
    :cond_35
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 556
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 557
    invoke-direct {p0, v3, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result p1

    if-ne p1, v2, :cond_53

    .line 560
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 561
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    :cond_53
    return p1

    :cond_54
    :goto_54
    return v2
.end method

.method public skipName()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->failOnUnknown:Z

    if-nez v0, :cond_61

    .line 573
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_c

    .line 575
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_c
    const/16 v1, 0xe

    if-ne v0, v1, :cond_14

    .line 578
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    goto :goto_2c

    :cond_14
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    .line 580
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_2c

    :cond_1e
    const/16 v1, 0xc

    if-ne v0, v1, :cond_28

    .line 582
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_2c

    :cond_28
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3a

    :goto_2c
    const/4 v0, 0x0

    .line 586
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 587
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    .line 584
    :cond_3a
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_61
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot skip unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipValue()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->failOnUnknown:Z

    if-nez v0, :cond_fb

    const/4 v0, 0x0

    move v1, v0

    .line 838
    :cond_6
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v2, :cond_e

    .line 840
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    :cond_e
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_19

    .line 844
    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e4

    :cond_19
    if-ne v2, v4, :cond_1f

    .line 847
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    goto :goto_15

    :cond_1f
    const/4 v3, 0x4

    .line 849
    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v3, :cond_54

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_31

    .line 855
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    goto/16 :goto_e4

    .line 852
    :cond_31
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    const/4 v3, 0x2

    if-ne v2, v3, :cond_85

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_62

    .line 862
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    goto/16 :goto_e4

    .line 859
    :cond_62
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_85
    const/16 v3, 0xe

    if-eq v2, v3, :cond_e1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8e

    goto :goto_e1

    :cond_8e
    const/16 v3, 0x9

    if-eq v2, v3, :cond_db

    const/16 v3, 0xd

    if-ne v2, v3, :cond_97

    goto :goto_db

    :cond_97
    const/16 v3, 0x8

    if-eq v2, v3, :cond_d5

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a0

    goto :goto_d5

    :cond_a0
    const/16 v3, 0x11

    if-ne v2, v3, :cond_ad

    .line 870
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lokio/Buffer;->skip(J)V

    goto :goto_e4

    :cond_ad
    const/16 v3, 0x12

    if-eq v2, v3, :cond_b2

    goto :goto_e4

    .line 872
    :cond_b2
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_d5
    :goto_d5
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_e4

    .line 866
    :cond_db
    :goto_db
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_e4

    .line 864
    :cond_e1
    :goto_e1
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    .line 875
    :goto_e4
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v1, :cond_6

    .line 878
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 879
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    .line 834
    :cond_fb
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot skip unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonReader("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
