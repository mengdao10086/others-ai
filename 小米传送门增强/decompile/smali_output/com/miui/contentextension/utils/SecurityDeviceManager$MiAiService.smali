.class interface abstract Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiService;
.super Ljava/lang/Object;
.source "SecurityDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/SecurityDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MiAiService"
.end annotation


# virtual methods
.method public abstract getNonce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orgId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/auth/v1/hardwareNonce"
    .end annotation
.end method

.method public abstract getToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "fid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orgId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "nonce"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "nonceCert"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "sign"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/auth/v1/hardwareAuthToken"
    .end annotation
.end method
