.class Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$1;
.super Lcom/miui/contentextension/data/recognition/network/OcrObserver;
.source "BlacklistUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->getBlacklistIfNeed(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/contentextension/data/recognition/network/OcrObserver<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/contentextension/data/recognition/network/OcrObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected failure(Ljava/lang/String;)V
    .registers 4

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get blacklist failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.BlacklistUtils"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic success(Ljava/lang/Object;)V
    .registers 2

    .line 136
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$1;->success(Ljava/util/List;)V

    return-void
.end method

.method protected success(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get blacklist success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.BlacklistUtils"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 141
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$1;->val$context:Landroid/content/Context;

    const-string v1, "blacklistFromCloud"

    invoke-static {v0, p1, v1}, Lcom/miui/contentextension/utils/FileUtils;->writeListToFile(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    :cond_27
    return-void
.end method
