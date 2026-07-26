.class public Lcom/xiaomi/onetrack/d/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "DigestUtil"

.field private static final b:[C

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    .line 18
    new-array v1, v0, [C

    fill-array-data v1, :array_12

    sput-object v1, Lcom/xiaomi/onetrack/d/d;->b:[C

    .line 19
    new-array v0, v0, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/xiaomi/onetrack/d/d;->c:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_26
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BZ)Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/String;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/xiaomi/onetrack/d/d;->b:[C

    goto :goto_9

    :cond_7
    sget-object p1, Lcom/xiaomi/onetrack/d/d;->c:[C

    :goto_9
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/d;->a([B[C)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static a()Ljava/security/MessageDigest;
    .registers 1

    .line 30
    const-string v0, "MD5"

    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 2

    .line 23
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 101
    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    return-object v0
.end method

.method public static a([B)[B
    .registers 2

    .line 34
    invoke-static {}, Lcom/xiaomi/onetrack/d/d;->a()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([B[C)[C
    .registers 9

    .line 86
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    .line 87
    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_20

    add-int/lit8 v4, v3, 0x1

    .line 90
    aget-byte v5, p0, v2

    and-int/lit16 v6, v5, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, p1, v6

    aput-char v6, v1, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v5, v5, 0xf

    .line 91
    aget-char v5, p1, v5

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_20
    return-object v1
.end method

.method public static b([B)Ljava/lang/String;
    .registers 2

    .line 42
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->a([B)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b()Ljava/security/MessageDigest;
    .registers 1

    .line 50
    const-string v0, "SHA-256"

    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 2

    .line 38
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 46
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->b(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c()Ljava/security/MessageDigest;
    .registers 1

    .line 54
    const-string v0, "SHA1"

    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static c([B)[B
    .registers 2

    .line 70
    invoke-static {}, Lcom/xiaomi/onetrack/d/d;->b()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 58
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->g(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Ljava/lang/String;
    .registers 2

    .line 78
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c([B)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 62
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->f(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e([B)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_37

    .line 111
    :try_start_2
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 114
    const-string v0, "%1$032X"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_39

    :catch_20
    move-exception p0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMD5 exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DigestUtil"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_37
    const-string p0, ""

    :goto_39
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)[B
    .registers 2

    .line 66
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)[B
    .registers 3

    .line 74
    invoke-static {}, Lcom/xiaomi/onetrack/d/d;->c()Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/d/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    const-string p0, ""

    return-object p0

    .line 126
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->e([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
