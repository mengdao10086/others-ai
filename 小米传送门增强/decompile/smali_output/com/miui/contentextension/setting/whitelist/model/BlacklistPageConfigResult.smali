.class public final Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageConfigResult;
.super Ljava/lang/Object;
.source "BlacklistPageConfigResult.kt"


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;

.field private final result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageConfigResult;->code:I

    .line 5
    iput-object p2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageConfigResult;->message:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageConfigResult;->result:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCode()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageConfigResult;->code:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageConfigResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getResult()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageModel;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistPageConfigResult;->result:Ljava/util/List;

    return-object v0
.end method
