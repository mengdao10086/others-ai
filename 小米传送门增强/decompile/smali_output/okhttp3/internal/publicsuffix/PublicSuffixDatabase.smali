.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [B

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 39
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 40
    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 44
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 198
    array-length v2, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_85

    add-int v5, v4, v2

    .line 201
    div-int/lit8 v5, v5, 0x2

    :goto_c
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_18

    .line 204
    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_18

    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    :cond_18
    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x1

    move v10, v9

    :goto_1c
    add-int v11, v8, v10

    .line 211
    aget-byte v12, v0, v11

    if-eq v12, v6, :cond_25

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_25
    sub-int v6, v11, v8

    move/from16 v12, p2

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2c
    if-eqz v10, :cond_32

    const/16 v10, 0x2e

    const/4 v15, 0x0

    goto :goto_3d

    .line 230
    :cond_32
    aget-object v15, v1, v12

    aget-byte v15, v15, v13

    and-int/lit16 v15, v15, 0xff

    move/from16 v17, v15

    move v15, v10

    move/from16 v10, v17

    :goto_3d
    add-int v16, v8, v14

    .line 233
    aget-byte v3, v0, v16

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v10, v3

    if-eqz v10, :cond_47

    goto :goto_57

    :cond_47
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    if-ne v14, v6, :cond_4e

    goto :goto_57

    .line 242
    :cond_4e
    aget-object v3, v1, v12

    array-length v3, v3

    if-ne v3, v13, :cond_83

    .line 245
    array-length v3, v1

    sub-int/2addr v3, v9

    if-ne v12, v3, :cond_7e

    :goto_57
    if-gez v10, :cond_5b

    :goto_59
    move v2, v5

    goto :goto_6

    :cond_5b
    if-lez v10, :cond_60

    :goto_5d
    add-int/lit8 v4, v11, 0x1

    goto :goto_6

    :cond_60
    sub-int v3, v6, v14

    .line 262
    aget-object v7, v1, v12

    array-length v7, v7

    sub-int/2addr v7, v13

    :goto_66
    add-int/lit8 v12, v12, 0x1

    .line 263
    array-length v9, v1

    if-ge v12, v9, :cond_70

    .line 264
    aget-object v9, v1, v12

    array-length v9, v9

    add-int/2addr v7, v9

    goto :goto_66

    :cond_70
    if-ge v7, v3, :cond_73

    goto :goto_59

    :cond_73
    if-le v7, v3, :cond_76

    goto :goto_5d

    .line 273
    :cond_76
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v8, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_86

    :cond_7e
    add-int/lit8 v12, v12, 0x1

    move v13, v7

    move v10, v9

    goto :goto_2c

    :cond_83
    move v10, v15

    goto :goto_2c

    :cond_85
    const/4 v1, 0x0

    :goto_86
    return-object v1
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .line 110
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 111
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    goto :goto_23

    .line 114
    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_23

    .line 116
    :catch_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 120
    :goto_23
    monitor-enter p0

    .line 121
    :try_start_24
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_bf

    .line 125
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_bd

    .line 128
    array-length v0, p1

    new-array v3, v0, [[B

    move v4, v1

    .line 129
    :goto_2d
    array-length v5, p1

    if-ge v4, v5, :cond_3d

    .line 130
    aget-object v5, p1, v4

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_3d
    move p1, v1

    :goto_3e
    const/4 v4, 0x0

    if-ge p1, v0, :cond_4d

    .line 137
    iget-object v5, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v5, v3, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    goto :goto_4e

    :cond_4a
    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    :cond_4d
    move-object v5, v4

    :goto_4e
    if-le v0, v2, :cond_6b

    .line 151
    invoke-virtual {v3}, [[B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    move v6, v1

    .line 152
    :goto_57
    array-length v7, p1

    sub-int/2addr v7, v2

    if-ge v6, v7, :cond_6b

    .line 153
    sget-object v7, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v7, p1, v6

    .line 154
    iget-object v7, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v7, p1, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_68

    goto :goto_6c

    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    :cond_6b
    move-object v7, v4

    :goto_6c
    if-eqz v7, :cond_7f

    :goto_6e
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_7f

    .line 166
    iget-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {p1, v3, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7c

    move-object v4, p1

    goto :goto_7f

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_7f
    :goto_7f
    if-eqz v4, :cond_99

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_99
    if-nez v5, :cond_a0

    if-nez v7, :cond_a0

    .line 180
    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    return-object p1

    :cond_a0
    if-eqz v5, :cond_a9

    .line 184
    const-string p1, "\\."

    invoke-virtual {v5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_ab

    .line 185
    :cond_a9
    sget-object p1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_ab
    if-eqz v7, :cond_b4

    .line 188
    const-string v0, "\\."

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 189
    :cond_b4
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 191
    :goto_b6
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_bb

    goto :goto_bc

    :cond_bb
    move-object p1, v0

    :goto_bc
    return-object p1

    :catchall_bd
    move-exception p1

    goto :goto_c7

    .line 122
    :cond_bf
    :try_start_bf
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :goto_c7
    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_bf .. :try_end_c8} :catchall_bd

    throw p1
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1

    .line 60
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 315
    :cond_b
    new-instance v1, Lokio/GzipSource;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .line 316
    :try_start_18
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 317
    new-array v1, v1, [B

    .line 318
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V

    .line 320
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 321
    new-array v2, v2, [B

    .line 322
    invoke-interface {v0, v2}, Lokio/BufferedSource;->readFully([B)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3c

    .line 323
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 325
    monitor-enter p0

    .line 326
    :try_start_2e
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 327
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 328
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_39

    .line 330
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_39
    move-exception v0

    .line 328
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :catchall_3c
    move-exception v1

    .line 315
    :try_start_3d
    throw v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v2

    if-eqz v0, :cond_49

    .line 323
    :try_start_41
    invoke-interface {v0}, Lokio/Source;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    throw v2
.end method

.method private readTheListUninterruptibly()V
    .registers 6

    const/4 v0, 0x0

    .line 291
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_4} :catch_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_10
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    if-eqz v0, :cond_d

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    :catchall_e
    move-exception v1

    goto :goto_2a

    :catch_10
    move-exception v1

    .line 297
    :try_start_11
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const-string v3, "Failed to read public suffix list"

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_e

    if-eqz v0, :cond_24

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    return-void

    .line 294
    :catch_25
    :try_start_25
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_e

    const/4 v0, 0x1

    goto :goto_1

    :goto_2a
    if-eqz v0, :cond_33

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_33
    throw v1
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p1, :cond_59

    .line 82
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 85
    array-length v3, v0

    array-length v4, v2

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-ne v3, v4, :cond_21

    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_21

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_21
    aget-object v3, v2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2d

    .line 93
    array-length v0, v0

    array-length v2, v2

    :goto_2b
    sub-int/2addr v0, v2

    goto :goto_32

    .line 96
    :cond_2d
    array-length v0, v0

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 99
    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 101
    :goto_3b
    array-length v1, p1

    if-ge v0, v1, :cond_4b

    .line 102
    aget-object v1, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 104
    :cond_4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_59
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "domain == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
