.class public final Lcom/xiaomi/taiyi/api/ocr/OcrText;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final box:[F

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[F)V
    .registers 4

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "box"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/taiyi/api/ocr/OcrText;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/taiyi/api/ocr/OcrText;->box:[F

    return-void
.end method


# virtual methods
.method public final getBox()[F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/api/ocr/OcrText;->box:[F

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/api/ocr/OcrText;->text:Ljava/lang/String;

    return-object v0
.end method
