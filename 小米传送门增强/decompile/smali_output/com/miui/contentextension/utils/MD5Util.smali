.class public Lcom/miui/contentextension/utils/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# static fields
.field private static final strDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 13
    const-string v14, "e"

    const-string v15, "f"

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "a"

    const-string v11, "b"

    const-string v12, "c"

    const-string v13, "d"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/utils/MD5Util;->strDigits:[Ljava/lang/String;

    return-void
.end method

.method private static byteToArrayString(B)Ljava/lang/String;
    .registers 4

    if-gez p0, :cond_4

    add-int/lit16 p0, p0, 0x100

    .line 50
    :cond_4
    div-int/lit8 v0, p0, 0x10

    .line 51
    rem-int/lit8 p0, p0, 0x10

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/miui/contentextension/utils/MD5Util;->strDigits:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static byteToString([B)Ljava/lang/String;
    .registers 5

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-byte v3, p0, v2

    .line 37
    invoke-static {v3}, Lcom/miui/contentextension/utils/MD5Util;->byteToArrayString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 39
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 22
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1c

    .line 23
    :try_start_6
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/MD5Util;->byteToString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_19

    goto :goto_34

    :catch_19
    move-exception p0

    move-object v0, v1

    goto :goto_1d

    :catch_1c
    move-exception p0

    .line 26
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encode:MD5 Encode Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taplus.ImageRecognition"

    invoke-static {v1, p0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_34
    return-object p0
.end method
