.class public Lcom/miui/contentextension/data/recognition/RecognitionParamUtil;
.super Ljava/lang/Object;
.source "RecognitionParamUtil.java"


# direct methods
.method public static addCommonParams(Lcom/miui/contentextension/data/http/HttpRequest;)V
    .registers 3

    .line 10
    const-string v0, "packageName"

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getInjectorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/contentextension/data/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
