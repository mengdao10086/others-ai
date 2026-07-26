.class public Lcom/miui/contentextension/data/http/JsonRequest;
.super Ljava/lang/Object;
.source "JsonRequest.java"


# instance fields
.field protected mConnectTimeout:I

.field protected mContext:Landroid/content/Context;

.field private mData:Ljava/lang/String;

.field protected mDecryptDownloadData:Z

.field private mDescription:Ljava/lang/String;

.field private mEtag:Ljava/lang/String;

.field private mHeadersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadTimeout:I

.field protected mRequestMethod:Ljava/lang/String;

.field protected mRequestUrl:Ljava/lang/String;

.field private mStatus:I

.field private mVer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mStatus:I

    .line 71
    iput-object p1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mContext:Landroid/content/Context;

    .line 72
    const-string p1, "GET"

    iput-object p1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mRequestMethod:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mRequestUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mDecryptDownloadData:Z

    return-void
.end method

.method private addHeaders(Ljava/net/HttpURLConnection;)V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mHeadersMap:Ljava/util/Map;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_31

    .line 136
    :cond_b
    iget-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mHeadersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 137
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_31
    :goto_31
    return-void
.end method

.method public static decryptData(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 213
    const-string v0, "d101b17c77ff93cs"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/CoderUtils;->base64AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptData(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 209
    const-string v0, "d101b17c77ff93cs"

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/CoderUtils;->base64AesEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getEncryptedParam(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_29

    .line 196
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    const-string v2, ""

    goto :goto_4c

    :cond_46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_4c
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 203
    :cond_54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEncryptedParam params:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Taplus.JsonRequest"

    invoke-static {v2, p0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/contentextension/data/http/JsonRequest;->encryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_encparam"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mParamsMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mParamsMap:Ljava/util/HashMap;

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 187
    iget-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method protected getConn()Ljava/net/HttpURLConnection;
    .registers 5

    .line 95
    invoke-virtual {p0}, Lcom/miui/contentextension/data/http/JsonRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The connection url is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.JsonRequest"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    return-object v3

    .line 103
    :cond_22
    :try_start_22
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2d
    .catch Ljava/net/MalformedURLException; {:try_start_22 .. :try_end_2d} :catch_7a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2d} :catch_78

    .line 106
    :try_start_2d
    iget v1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mReadTimeout:I

    const/16 v3, 0x2710

    if-lez v1, :cond_3d

    .line 107
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    goto :goto_4e

    :catch_37
    move-exception v1

    move-object v3, v0

    goto :goto_7c

    :catch_3a
    move-exception v1

    move-object v3, v0

    goto :goto_83

    .line 108
    :cond_3d
    iget-object v1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/contentextension/utils/Network;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 109
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    goto :goto_4e

    :cond_49
    const/16 v1, 0x7530

    .line 111
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 114
    :goto_4e
    iget v1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mConnectTimeout:I

    if-lez v1, :cond_53

    move v3, v1

    :cond_53
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 116
    iget-object v1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mRequestMethod:Ljava/lang/String;

    const-string v3, "POST"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_74

    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 121
    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_74
    invoke-direct {p0, v0}, Lcom/miui/contentextension/data/http/JsonRequest;->addHeaders(Ljava/net/HttpURLConnection;)V
    :try_end_77
    .catch Ljava/net/MalformedURLException; {:try_start_2d .. :try_end_77} :catch_3a
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_77} :catch_37

    goto :goto_89

    :catch_78
    move-exception v1

    goto :goto_7c

    :catch_7a
    move-exception v1

    goto :goto_83

    .line 127
    :goto_7c
    const-string v0, " IOException: "

    invoke-static {v2, v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_81
    move-object v0, v3

    goto :goto_89

    .line 125
    :goto_83
    const-string v0, " MalformedURLException: "

    invoke-static {v2, v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_81

    :goto_89
    return-object v0
.end method

.method protected getEncryptedParams()Ljava/lang/String;
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mParamsMap:Ljava/util/HashMap;

    if-nez v0, :cond_9

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    :cond_9
    invoke-static {v0}, Lcom/miui/contentextension/data/http/JsonRequest;->getEncryptedParam(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_2e

    .line 161
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_encparam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_encparam"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0
.end method

.method public getRequestStatus()I
    .registers 12

    .line 217
    const-string v0, "code"

    const-string v1, " Exception: "

    const-string v2, "Exception: "

    const-string v3, " IOException: "

    iget-object v4, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "Taplus.JsonRequest"

    if-nez v4, :cond_1a

    .line 218
    const-string v0, "The network is not connected"

    invoke-static {v5, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    return v0

    :cond_1a
    const/4 v4, 0x0

    .line 229
    :try_start_1b
    invoke-virtual {p0}, Lcom/miui/contentextension/data/http/JsonRequest;->getConn()Ljava/net/HttpURLConnection;

    move-result-object v6
    :try_end_1f
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b .. :try_end_1f} :catch_18a
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1f} :catch_15a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_12c
    .catchall {:try_start_1b .. :try_end_1f} :catchall_127

    .line 230
    :try_start_1f
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 233
    iget-object v7, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mRequestMethod:Ljava/lang/String;

    const-string v8, "POST"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 234
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_35
    .catch Ljava/net/SocketTimeoutException; {:try_start_1f .. :try_end_35} :catch_5e
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_35} :catch_5a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_35} :catch_56
    .catchall {:try_start_1f .. :try_end_35} :catchall_52

    .line 235
    :try_start_35
    invoke-virtual {p0}, Lcom/miui/contentextension/data/http/JsonRequest;->getEncryptedParams()Ljava/lang/String;

    move-result-object v8

    .line 236
    const-string v9, "utf-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 237
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_63

    :catchall_46
    move-exception v0

    goto/16 :goto_1ce

    :catch_49
    move-exception v0

    goto/16 :goto_12f

    :catch_4c
    move-exception v0

    goto/16 :goto_15d

    :catch_4f
    move-exception v0

    goto/16 :goto_18d

    :catchall_52
    move-exception v0

    move-object v7, v4

    goto/16 :goto_1ce

    :catch_56
    move-exception v0

    move-object v7, v4

    goto/16 :goto_12f

    :catch_5a
    move-exception v0

    move-object v7, v4

    goto/16 :goto_15d

    :catch_5e
    move-exception v0

    move-object v7, v4

    goto/16 :goto_18d

    :cond_62
    move-object v7, v4

    .line 241
    :goto_63
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 242
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStatus:The response code is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_101

    .line 245
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    .line 246
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8d
    .catch Ljava/net/SocketTimeoutException; {:try_start_35 .. :try_end_8d} :catch_4f
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_8d} :catch_4c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_8d} :catch_49
    .catchall {:try_start_35 .. :try_end_8d} :catchall_46

    .line 247
    :try_start_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    :goto_92
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ac

    .line 250
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_92

    :catchall_9c
    move-exception v0

    move-object v4, v8

    goto/16 :goto_1ce

    :catch_a0
    move-exception v0

    move-object v4, v8

    goto/16 :goto_12f

    :catch_a4
    move-exception v0

    move-object v4, v8

    goto/16 :goto_15d

    :catch_a8
    move-exception v0

    move-object v4, v8

    goto/16 :goto_18d

    .line 253
    :cond_ac
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v4, "description"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mDescription:Ljava/lang/String;

    .line 256
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 257
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_fb

    .line 259
    const-string v0, "data"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v4, "ver"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mVer:Ljava/lang/String;

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ef

    iget-boolean v4, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mDecryptDownloadData:Z

    if-eqz v4, :cond_ef

    .line 262
    invoke-static {v0}, Lcom/miui/contentextension/data/http/JsonRequest;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mData:Ljava/lang/String;

    goto :goto_f1

    .line 264
    :cond_ef
    iput-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mData:Ljava/lang/String;

    .line 267
    :goto_f1
    const-string v0, "ETag"

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mEtag:Ljava/lang/String;
    :try_end_f9
    .catch Ljava/net/SocketTimeoutException; {:try_start_8d .. :try_end_f9} :catch_a8
    .catch Lorg/json/JSONException; {:try_start_8d .. :try_end_f9} :catch_a4
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_f9} :catch_a0
    .catchall {:try_start_8d .. :try_end_f9} :catchall_9c

    const/16 v0, 0x3e8

    :cond_fb
    :goto_fb
    move-object v4, v8

    move v8, v0

    goto :goto_101

    :cond_fe
    const/16 v0, 0x3ea

    goto :goto_fb

    :cond_101
    :goto_101
    if-eqz v4, :cond_10b

    .line 285
    :try_start_103
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_107

    goto :goto_10b

    :catch_107
    move-exception v0

    .line 287
    invoke-static {v5, v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :cond_10b
    :goto_10b
    :try_start_10b
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_112} :catch_113

    goto :goto_117

    :catch_113
    move-exception v0

    .line 294
    invoke-static {v5, v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    :goto_117
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v7, :cond_1b9

    .line 303
    :try_start_11c
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_121

    goto/16 :goto_1b9

    :catch_121
    move-exception v0

    .line 305
    invoke-static {v5, v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b9

    :catchall_127
    move-exception v0

    move-object v6, v4

    move-object v7, v6

    goto/16 :goto_1ce

    :catch_12c
    move-exception v0

    move-object v6, v4

    move-object v7, v6

    .line 281
    :goto_12f
    :try_start_12f
    invoke-static {v5, v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_132
    .catchall {:try_start_12f .. :try_end_132} :catchall_46

    if-eqz v4, :cond_13c

    .line 285
    :try_start_134
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_137} :catch_138

    goto :goto_13c

    :catch_138
    move-exception v0

    .line 287
    invoke-static {v5, v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :cond_13c
    :goto_13c
    :try_start_13c
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_143} :catch_144

    goto :goto_148

    :catch_144
    move-exception v0

    .line 294
    invoke-static {v5, v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_148
    if-eqz v6, :cond_14d

    .line 298
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14d
    if-eqz v7, :cond_157

    .line 303
    :try_start_14f
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_153

    goto :goto_157

    :catch_153
    move-exception v0

    .line 305
    invoke-static {v5, v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_157
    :goto_157
    const/16 v8, 0x3eb

    goto :goto_1b9

    :catch_15a
    move-exception v0

    move-object v6, v4

    move-object v7, v6

    .line 278
    :goto_15d
    :try_start_15d
    const-string v8, " JSONException: "

    invoke-static {v5, v8, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_162
    .catchall {:try_start_15d .. :try_end_162} :catchall_46

    if-eqz v4, :cond_16c

    .line 285
    :try_start_164
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_167} :catch_168

    goto :goto_16c

    :catch_168
    move-exception v0

    .line 287
    invoke-static {v5, v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :cond_16c
    :goto_16c
    :try_start_16c
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_173} :catch_174

    goto :goto_178

    :catch_174
    move-exception v0

    .line 294
    invoke-static {v5, v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_178
    if-eqz v6, :cond_17d

    .line 298
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_17d
    if-eqz v7, :cond_187

    .line 303
    :try_start_17f
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_183

    goto :goto_187

    :catch_183
    move-exception v0

    .line 305
    invoke-static {v5, v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_187
    :goto_187
    const/16 v8, 0x3ec

    goto :goto_1b9

    :catch_18a
    move-exception v0

    move-object v6, v4

    move-object v7, v6

    .line 275
    :goto_18d
    :try_start_18d
    const-string v8, " SocketTimeoutException: "

    invoke-static {v5, v8, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_192
    .catchall {:try_start_18d .. :try_end_192} :catchall_46

    if-eqz v4, :cond_19c

    .line 285
    :try_start_194
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_197} :catch_198

    goto :goto_19c

    :catch_198
    move-exception v0

    .line 287
    invoke-static {v5, v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :cond_19c
    :goto_19c
    :try_start_19c
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1a3} :catch_1a4

    goto :goto_1a8

    :catch_1a4
    move-exception v0

    .line 294
    invoke-static {v5, v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a8
    if-eqz v6, :cond_1ad

    .line 298
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1ad
    if-eqz v7, :cond_1b7

    .line 303
    :try_start_1af
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1b2
    .catch Ljava/io/IOException; {:try_start_1af .. :try_end_1b2} :catch_1b3

    goto :goto_1b7

    :catch_1b3
    move-exception v0

    .line 305
    invoke-static {v5, v3, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b7
    :goto_1b7
    const/16 v8, 0x3ed

    .line 310
    :cond_1b9
    :goto_1b9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStatus:The status code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :goto_1ce
    if-eqz v4, :cond_1d8

    .line 285
    :try_start_1d0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1d3} :catch_1d4

    goto :goto_1d8

    :catch_1d4
    move-exception v4

    .line 287
    invoke-static {v5, v2, v4}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :cond_1d8
    :goto_1d8
    :try_start_1d8
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1df} :catch_1e0

    goto :goto_1e4

    :catch_1e0
    move-exception v2

    .line 294
    invoke-static {v5, v1, v2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e4
    if-eqz v6, :cond_1e9

    .line 298
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1e9
    if-eqz v7, :cond_1f3

    .line 303
    :try_start_1eb
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1ee
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_1ee} :catch_1ef

    goto :goto_1f3

    :catch_1ef
    move-exception v1

    .line 305
    invoke-static {v5, v3, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    :cond_1f3
    :goto_1f3
    throw v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mRequestMethod:Ljava/lang/String;

    const-string v1, "POST"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 146
    iget-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mRequestUrl:Ljava/lang/String;

    return-object v0

    .line 148
    :cond_d
    invoke-virtual {p0}, Lcom/miui/contentextension/data/http/JsonRequest;->getEncryptedParams()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mRequestUrl:Ljava/lang/String;

    goto :goto_26

    :cond_1a
    iget-object v1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mRequestUrl:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s?%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_26
    return-object v0
.end method

.method public requestData()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mConnectTimeout:I

    return-void
.end method

.method public setDecryptDownloadData(Z)Lcom/miui/contentextension/data/http/JsonRequest;
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mDecryptDownloadData:Z

    return-object p0
.end method

.method public setHttpMethod(Ljava/lang/String;)Lcom/miui/contentextension/data/http/JsonRequest;
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mRequestMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setReadTimeout(I)V
    .registers 2

    .line 83
    iput p1, p0, Lcom/miui/contentextension/data/http/JsonRequest;->mReadTimeout:I

    return-void
.end method
