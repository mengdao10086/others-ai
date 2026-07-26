.class public final Lcom/xiaomi/taiyi/sdk/base/data/AIPlugin;
.super Lcom/xiaomi/taiyi/sdk/base/data/AIRes;
.source "SourceFile"


# instance fields
.field private entry:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIPlugin;->entry:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEntry()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIPlugin;->entry:Ljava/lang/String;

    return-object v0
.end method

.method public final setEntry(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AIPlugin;->entry:Ljava/lang/String;

    return-void
.end method
