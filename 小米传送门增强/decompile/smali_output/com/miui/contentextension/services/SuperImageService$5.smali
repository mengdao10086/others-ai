.class Lcom/miui/contentextension/services/SuperImageService$5;
.super Ljava/lang/Object;
.source "SuperImageService.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/services/SuperImageService;->doSuperImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/SuperImageService;

.field final synthetic val$srcBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/SuperImageService;Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$5;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    iput-object p2, p0, Lcom/miui/contentextension/services/SuperImageService$5;->val$srcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/miui/contentextension/services/SuperImageService$5;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {v0}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmImageService(Lcom/miui/contentextension/services/SuperImageService;)Laidl/com/miui/mediafeature/superimage/ISuperImageService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/services/SuperImageService$5;->val$srcBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Laidl/com/miui/mediafeature/superimage/ISuperImageService;->superProcessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_20

    .line 106
    const-string v0, "Taplus.SuperImageService"

    const-string v1, "onServiceConnected: dst bitmap is null"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_31

    .line 109
    :cond_20
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 110
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_31

    .line 113
    :catch_27
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "remote service exception"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method
