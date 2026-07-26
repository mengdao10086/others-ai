.class public Lcom/miui/contentextension/utils/CoderUtils;
.super Ljava/lang/Object;
.source "CoderUtils.java"


# direct methods
.method public static base64AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_41

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_41

    .line 74
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-eqz p1, :cond_41

    .line 75
    array-length v1, p1

    if-nez v1, :cond_14

    goto :goto_41

    .line 78
    :cond_14
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 80
    :try_start_1b
    const-string p1, "AES/CBC/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 81
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "0102030405060708"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    .line 82
    invoke-virtual {p1, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 83
    invoke-static {p0}, Lcom/miui/contentextension/utils/CoderUtils;->decodeBase64Bytes(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_37

    return-object v0

    .line 87
    :cond_37
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 88
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_40} :catch_41
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1b .. :try_end_40} :catch_41
    .catch Ljava/security/InvalidKeyException; {:try_start_1b .. :try_end_40} :catch_41
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1b .. :try_end_40} :catch_41
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1b .. :try_end_40} :catch_41
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1b .. :try_end_40} :catch_41

    return-object p1

    :catch_41
    :cond_41
    :goto_41
    return-object v0
.end method

.method public static base64AesEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_42

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_42

    .line 37
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    if-eqz p1, :cond_42

    .line 41
    array-length v1, p1

    if-nez v1, :cond_14

    goto :goto_42

    .line 44
    :cond_14
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 47
    :try_start_1b
    const-string p1, "AES/CBC/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 48
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "0102030405060708"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    .line 49
    invoke-virtual {p1, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 50
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/utils/CoderUtils;->encodeBase64([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_41
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_41} :catch_42
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1b .. :try_end_41} :catch_42
    .catch Ljava/security/InvalidKeyException; {:try_start_1b .. :try_end_41} :catch_42
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1b .. :try_end_41} :catch_42
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1b .. :try_end_41} :catch_42
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1b .. :try_end_41} :catch_42

    return-object v1

    :catch_42
    :cond_42
    :goto_42
    return-object v0
.end method

.method public static decodeBase64Bytes(Ljava/lang/String;)[B
    .registers 2

    const/4 v0, 0x1

    .line 125
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeBase64([B)[B
    .registers 2

    const/4 v0, 0x1

    .line 110
    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    return-object p0
.end method
