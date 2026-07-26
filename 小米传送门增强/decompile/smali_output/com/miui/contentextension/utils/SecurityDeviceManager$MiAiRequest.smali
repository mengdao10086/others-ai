.class public Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;
.super Ljava/lang/Object;
.source "SecurityDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/SecurityDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiAiRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest$UserAgentInterceptor;,
        Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest$Holder;
    }
.end annotation


# instance fields
.field private mApiService:Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;

.field private mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 262
    sget-boolean v1, Lcom/miui/contentextension/utils/LogUtils;->DEBUG:Z

    if-eqz v1, :cond_19

    .line 263
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 264
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 265
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 267
    :cond_19
    new-instance v1, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest$UserAgentInterceptor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest$UserAgentInterceptor;-><init>(Lcom/miui/contentextension/utils/SecurityDeviceManager-IA;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 269
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 270
    invoke-static {}, Lcom/miui/contentextension/data/http/HostConfig;->getAiHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 271
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 272
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 273
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;->mRetrofit:Lretrofit2/Retrofit;

    .line 276
    const-class v1, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;

    iput-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;->mApiService:Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/utils/SecurityDeviceManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;
    .registers 1

    .line 298
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest$Holder;->-$$Nest$sfgetsInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInterface()Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;
    .registers 2

    .line 306
    invoke-static {}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;->getInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;->mApiService:Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;

    return-object v0
.end method
