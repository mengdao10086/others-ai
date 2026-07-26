.class Lcom/miui/contentextension/utils/SaveImageUtils$2;
.super Ljava/lang/Object;
.source "SaveImageUtils.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/SaveImageUtils;->saveNormalImage(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/miui/contentextension/utils/SaveImageUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/contentextension/utils/SaveImageUtils$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/miui/contentextension/utils/SaveImageUtils$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/contentextension/utils/SaveImageUtils$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/BitmapUtils;->saveBitmapToStorage(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save succeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.SaveImageUtils"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 55
    invoke-static {v1}, Lcom/miui/contentextension/services/TextContentExtensionService;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 57
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method
