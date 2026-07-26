.class public Lcom/miui/contentextension/data/http/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/data/http/OkHttpClient$Holder;
    }
.end annotation


# instance fields
.field private mInterface:Lcom/miui/contentextension/data/http/ApiInterface;

.field private mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 22
    sget-boolean v1, Lcom/miui/contentextension/utils/LogUtils;->DEBUG:Z

    if-eqz v1, :cond_19

    .line 23
    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 24
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 25
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 28
    :cond_19
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 29
    invoke-static {}, Lcom/miui/contentextension/data/http/HostConfig;->getCmsHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 30
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 31
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 32
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/data/http/OkHttpClient;->mRetrofit:Lretrofit2/Retrofit;

    .line 35
    const-class v1, Lcom/miui/contentextension/data/http/ApiInterface;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/data/http/ApiInterface;

    iput-object v0, p0, Lcom/miui/contentextension/data/http/OkHttpClient;->mInterface:Lcom/miui/contentextension/data/http/ApiInterface;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/data/http/OkHttpClient-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/data/http/OkHttpClient;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/contentextension/data/http/OkHttpClient;
    .registers 1

    .line 43
    invoke-static {}, Lcom/miui/contentextension/data/http/OkHttpClient$Holder;->-$$Nest$sfgetsInstance()Lcom/miui/contentextension/data/http/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getInterface()Lcom/miui/contentextension/data/http/ApiInterface;
    .registers 1

    .line 51
    invoke-static {}, Lcom/miui/contentextension/data/http/OkHttpClient;->getInstance()Lcom/miui/contentextension/data/http/OkHttpClient;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/contentextension/data/http/OkHttpClient;->mInterface:Lcom/miui/contentextension/data/http/ApiInterface;

    return-object v0
.end method
