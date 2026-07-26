.class public Lcom/miui/contentextension/data/http/TaplusNetworkClient;
.super Ljava/lang/Object;
.source "TaplusNetworkClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/data/http/TaplusNetworkClient$SingletonHolder;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ZNo8Bk7hvx8A60RTjLU9cvAPvTw(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/miui/contentextension/data/http/TaplusNetworkClient;->lambda$create$0(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/data/http/TaplusNetworkClient-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/data/http/TaplusNetworkClient;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/contentextension/data/http/TaplusNetworkClient;
    .registers 1

    .line 25
    invoke-static {}, Lcom/miui/contentextension/data/http/TaplusNetworkClient$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/miui/contentextension/data/http/TaplusNetworkClient;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$create$0(Ljava/lang/String;)V
    .registers 2

    .line 29
    const-string v0, "Taplus.BlacklistClient"

    invoke-static {v0, p0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 29
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v1, Lcom/miui/contentextension/data/http/TaplusNetworkClient$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/miui/contentextension/data/http/TaplusNetworkClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 30
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 31
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    .line 32
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 38
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 41
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 42
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
