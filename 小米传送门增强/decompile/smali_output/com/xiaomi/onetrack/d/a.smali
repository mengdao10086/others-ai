.class public Lcom/xiaomi/onetrack/d/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "AES"

.field private static final b:Ljava/lang/String; = "AES/ECB/PKCS5Padding"

.field private static final c:Ljava/lang/String; = "AES"

.field private static d:Ljavax/crypto/KeyGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 21
    const-string v0, "AES"

    :try_start_2
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/d/a;->d:Ljavax/crypto/KeyGenerator;

    const/16 v2, 0x80

    .line 22
    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_18

    :catch_e
    move-exception v1

    .line 24
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AesUtil e"

    invoke-static {v0, v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 117
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/xiaomi/onetrack/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 119
    :goto_17
    array-length v2, p0

    if-ge v1, v2, :cond_30

    move v2, v0

    .line 120
    :goto_1b
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2d

    .line 121
    aget-char v3, p0, v1

    aget-char v4, p0, v2

    if-ge v3, v4, :cond_2a

    .line 123
    aput-char v4, p0, v1

    .line 124
    aput-char v3, p0, v2

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 128
    :cond_30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_53

    .line 130
    :catch_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encodeFromSalt "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AES"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_53
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 97
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/a;->e(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/util/m;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()[B
    .registers 1

    .line 29
    sget-object v0, Lcom/xiaomi/onetrack/d/a;->d:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method private static a([BLjava/lang/String;)[B
    .registers 5

    .line 50
    const-string v0, "AES"

    :try_start_2
    invoke-static {p1}, Lcom/xiaomi/onetrack/d/a;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 51
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 52
    const-string p1, "AES/ECB/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v2, 0x2

    .line 53
    invoke-virtual {p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 54
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 56
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "decrypt exception:"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B[B)[B
    .registers 5

    .line 34
    const-string v0, "AES"

    :try_start_2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 35
    const-string p1, "AES/ECB/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v2, 0x1

    .line 36
    invoke-virtual {p1, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 37
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 39
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "encrypt exception:"

    invoke-static {p1, v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 101
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/a;->e(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 1

    if-eqz p0, :cond_7

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([B[B)[B
    .registers 6

    .line 63
    const-string v0, "AES"

    :try_start_2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 64
    const-string v2, "AES/ECB/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    .line 65
    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception v1

    .line 68
    const-string v2, "decrypt exception:"

    invoke-static {v0, v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", passwd len="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 105
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/a;->c(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/a;->a([BLjava/lang/String;)[B

    move-result-object p0

    .line 106
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private static c(Ljava/lang/String;)[B
    .registers 7

    if-eqz p0, :cond_3c

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    goto :goto_3c

    .line 86
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 87
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3b

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 88
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v2, 0x2

    .line 89
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    int-to-byte v2, v4

    .line 91
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_3b
    return-object v0

    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xa

    .line 110
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/a;->a([BLjava/lang/String;)[B

    move-result-object p0

    .line 111
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 2

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/d/a;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method
