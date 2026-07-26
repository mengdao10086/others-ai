.class public Lcom/miui/contentextension/data/http/HostConfig;
.super Ljava/lang/Object;
.source "HostConfig.java"


# static fields
.field public static final IS_PREVIEW:Z

.field public static final IS_STAGING:Z

.field private static final sUrlArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 14
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, "key_dev_developer_mode_v1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1c

    .line 15
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v4, "key_dev_server_preview_v1"

    invoke-static {v0, v4, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v3

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    sput-boolean v0, Lcom/miui/contentextension/data/http/HostConfig;->IS_PREVIEW:Z

    .line 16
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 17
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    const-string v1, "key_dev_server_staging_v1"

    invoke-static {v0, v1, v2}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_36

    move v2, v3

    :cond_36
    sput-boolean v2, Lcom/miui/contentextension/data/http/HostConfig;->IS_STAGING:Z

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/contentextension/data/http/HostConfig;->sUrlArray:Landroid/util/SparseArray;

    .line 51
    const-string v1, "/api/passage/recommend"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    .line 52
    const-string v2, "/api/passage/words"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    .line 53
    const-string v2, "/api/passage/segment"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    .line 54
    const-string v2, "/api/passage/buildUrl"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x5

    .line 55
    const-string v2, "/api/passage/translate"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    .line 56
    const-string v2, "/api/image/recognize"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    .line 57
    const-string v2, "/api/passage/copy/parse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static getAiHost()Ljava/lang/String;
    .registers 1

    .line 99
    sget-boolean v0, Lcom/miui/contentextension/data/http/HostConfig;->IS_STAGING:Z

    if-eqz v0, :cond_7

    .line 100
    const-string v0, "http://api-staging.miai.srv"

    return-object v0

    .line 103
    :cond_7
    sget-boolean v0, Lcom/miui/contentextension/data/http/HostConfig;->IS_PREVIEW:Z

    if-eqz v0, :cond_e

    .line 104
    const-string v0, "https://api-preview.open.ai.xiaomi.com"

    return-object v0

    .line 107
    :cond_e
    const-string v0, "https://api.open.ai.xiaomi.com"

    return-object v0
.end method

.method public static getCmsHost()Ljava/lang/String;
    .registers 1

    .line 85
    sget-boolean v0, Lcom/miui/contentextension/data/http/HostConfig;->IS_STAGING:Z

    if-eqz v0, :cond_7

    .line 86
    const-string v0, "http://staging.api.transfer.search.miui.srv"

    return-object v0

    .line 88
    :cond_7
    const-string v0, "https://api.transfer.search.miui.com"

    return-object v0
.end method

.method public static getNewCmsHost()Ljava/lang/String;
    .registers 1

    .line 92
    sget-boolean v0, Lcom/miui/contentextension/data/http/HostConfig;->IS_STAGING:Z

    if-eqz v0, :cond_7

    .line 93
    const-string v0, "http://staging-api.transfer.sec.miui.com/"

    return-object v0

    .line 95
    :cond_7
    const-string v0, "https://api.transfer.sec.miui.com/"

    return-object v0
.end method

.method public static getUrl(I)Ljava/lang/String;
    .registers 3

    .line 61
    sget-boolean v0, Lcom/miui/contentextension/data/http/HostConfig;->IS_STAGING:Z

    if-eqz v0, :cond_1e

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://staging-api-middle.transfer.sec.miui.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/contentextension/data/http/HostConfig;->sUrlArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_1e
    sget-boolean v0, Lcom/miui/contentextension/data/http/HostConfig;->IS_PREVIEW:Z

    if-eqz v0, :cond_3c

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://preview-api-middle.transfer.sec.miui.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/contentextension/data/http/HostConfig;->sUrlArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api-middle.transfer.sec.miui.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/contentextension/data/http/HostConfig;->sUrlArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUrlHost()Ljava/lang/String;
    .registers 1

    .line 73
    sget-boolean v0, Lcom/miui/contentextension/data/http/HostConfig;->IS_STAGING:Z

    if-eqz v0, :cond_7

    .line 74
    const-string v0, "http://staging-api-middle.transfer.sec.miui.com"

    return-object v0

    .line 77
    :cond_7
    sget-boolean v0, Lcom/miui/contentextension/data/http/HostConfig;->IS_PREVIEW:Z

    if-eqz v0, :cond_e

    .line 78
    const-string v0, "http://preview-api-middle.transfer.sec.miui.com"

    return-object v0

    .line 81
    :cond_e
    const-string v0, "https://api-middle.transfer.sec.miui.com"

    return-object v0
.end method
