.class public Lcom/miui/contentextension/data/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field protected mConnectTimeout:I

.field protected mContext:Landroid/content/Context;

.field protected mDecryptDownloadData:Z

.field protected mParamMap:Ljava/util/HashMap;
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

.field private mRequestCode:I

.field protected mRequestMethod:Ljava/lang/String;

.field protected mRequireLocId:Z

.field private mSendTime:J

.field private mStatusCode:I

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 32
    iput v0, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mReadTimeout:I

    .line 33
    iput v0, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mConnectTimeout:I

    .line 39
    iput-object p1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mContext:Landroid/content/Context;

    .line 40
    iput p3, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mRequestCode:I

    .line 41
    iput-object p2, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mUrl:Ljava/lang/String;

    .line 42
    const-string p1, "POST"

    iput-object p1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mRequestMethod:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mParamMap:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mDecryptDownloadData:Z

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mRequireLocId:Z

    return-void
.end method

.method private appendParameters(Lcom/miui/contentextension/data/http/JsonRequest;)V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mParamMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/miui/contentextension/data/http/RequestParamsUtil;->appendDeviceInfo(Ljava/util/Map;)V

    .line 121
    iget-object v0, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mParamMap:Ljava/util/HashMap;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 122
    iget-object v0, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mParamMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1}, Lcom/miui/contentextension/data/http/HttpRequest;->onAppendParameter(Lcom/miui/contentextension/data/http/JsonRequest;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_35
    return-void
.end method

.method private onAppendParameter(Lcom/miui/contentextension/data/http/JsonRequest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 132
    invoke-virtual {p1, p2, p3}, Lcom/miui/contentextension/data/http/JsonRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getStatusCode()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mStatusCode:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public requestServer()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownServiceException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/miui/contentextension/data/http/JsonRequest;

    iget-object v1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/contentextension/data/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/data/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mRequestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/data/http/JsonRequest;->setHttpMethod(Ljava/lang/String;)Lcom/miui/contentextension/data/http/JsonRequest;

    .line 91
    iget-boolean v1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mDecryptDownloadData:Z

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/data/http/JsonRequest;->setDecryptDownloadData(Z)Lcom/miui/contentextension/data/http/JsonRequest;

    .line 92
    iget v1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mConnectTimeout:I

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/data/http/JsonRequest;->setConnectTimeout(I)V

    .line 93
    iget v1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mReadTimeout:I

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/data/http/JsonRequest;->setReadTimeout(I)V

    .line 95
    invoke-direct {p0, v0}, Lcom/miui/contentextension/data/http/HttpRequest;->appendParameters(Lcom/miui/contentextension/data/http/JsonRequest;)V

    .line 97
    new-instance v1, Lcom/miui/contentextension/analy/MultipleAnaly$Builder;

    invoke-direct {v1}, Lcom/miui/contentextension/analy/MultipleAnaly$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/miui/contentextension/analy/MultipleAnaly$Builder;->setEntryType()Lcom/miui/contentextension/analy/MultipleAnaly$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/contentextension/analy/MultipleAnaly$Builder;->build()Lcom/miui/contentextension/analy/MultipleAnaly;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Lcom/miui/contentextension/data/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/contentextension/analy/MultipleAnaly;->trackApiSendEvent(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mSendTime:J

    .line 100
    invoke-virtual {v0}, Lcom/miui/contentextension/data/http/JsonRequest;->getRequestStatus()I

    move-result v1

    iput v1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mStatusCode:I

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mSendTime:J

    sub-long v6, v3, v5

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/contentextension/data/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " response status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mStatusCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Taplus.Content.HttpRequest"

    invoke-static {v3, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mStatusCode:I

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_96

    .line 105
    invoke-virtual {p0}, Lcom/miui/contentextension/data/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v6, v7}, Lcom/miui/contentextension/analy/MultipleAnaly;->trackApiReceiveSuccessEvent(Ljava/lang/String;J)V

    .line 106
    invoke-virtual {v0}, Lcom/miui/contentextension/data/http/JsonRequest;->requestData()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/contentextension/data/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " response data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 110
    :cond_96
    invoke-virtual {p0}, Lcom/miui/contentextension/data/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    iget v5, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mStatusCode:I

    invoke-virtual/range {v2 .. v7}, Lcom/miui/contentextension/analy/MultipleAnaly;->trackApiReceiveErrorEvent(Ljava/lang/String;ZIJ)V

    .line 111
    new-instance v0, Ljava/net/UnknownServiceException;

    invoke-direct {v0}, Ljava/net/UnknownServiceException;-><init>()V

    throw v0
.end method

.method public setConnectTimeout(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mConnectTimeout:I

    return-void
.end method

.method public setDecryptData(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mDecryptDownloadData:Z

    return-void
.end method

.method public setReadTimeout(I)V
    .registers 2

    .line 81
    iput p1, p0, Lcom/miui/contentextension/data/http/HttpRequest;->mReadTimeout:I

    return-void
.end method
