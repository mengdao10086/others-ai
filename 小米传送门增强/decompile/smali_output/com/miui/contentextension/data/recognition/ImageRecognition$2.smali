.class Lcom/miui/contentextension/data/recognition/ImageRecognition$2;
.super Ljava/lang/Object;
.source "ImageRecognition.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/data/recognition/ImageRecognition;->doImageRecognize(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Pair<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/ImageRecognition$2;->apply(Landroid/graphics/Bitmap;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroid/graphics/Bitmap;)Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/miui/contentextension/analy/SettingsAnaly;->trackOcrEnter()V

    .line 44
    sget-object v0, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->Companion:Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$Companion;

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils$Companion;->getINSTANCE()Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/utils/ContentExtentionOcrUtils;->getOcrResult(Landroid/graphics/Bitmap;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
