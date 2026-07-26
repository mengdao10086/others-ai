.class public final Lcom/xiaomi/taiyi/api/ner/NerResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/api/ner/NerResult$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/api/ner/NerResult$Companion;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/api/ner/NerResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/api/ner/NerResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/api/ner/NerResult;->Companion:Lcom/xiaomi/taiyi/api/ner/NerResult$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/xiaomi/taiyi/api/ner/NerResult;->b:Ljava/lang/String;

    .line 5
    const-string v0, "1.0.0-824ce58-250812-SNAPSHOT"

    iput-object v0, p0, Lcom/xiaomi/taiyi/api/ner/NerResult;->d:Ljava/lang/String;

    const/16 v0, 0x9

    .line 6
    iput v0, p0, Lcom/xiaomi/taiyi/api/ner/NerResult;->e:I

    return-void
.end method


# virtual methods
.method public final getExactType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/api/ner/NerResult;->a:I

    return v0
.end method

.method public final setExactClass(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/api/ner/NerResult;->b:Ljava/lang/String;

    return-void
.end method

.method public final setExactType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/api/ner/NerResult;->a:I

    return-void
.end method

.method public final setSdkVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/api/ner/NerResult;->d:Ljava/lang/String;

    return-void
.end method

.method public final setServiceVersion(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/api/ner/NerResult;->e:I

    return-void
.end method

.method public final setStatusCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/api/ner/NerResult;->c:I

    return-void
.end method
