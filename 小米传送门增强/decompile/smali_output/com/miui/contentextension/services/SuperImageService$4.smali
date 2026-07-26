.class Lcom/miui/contentextension/services/SuperImageService$4;
.super Ljava/lang/Object;
.source "SuperImageService.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "Landroid/graphics/Bitmap;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/SuperImageService;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/SuperImageService;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$4;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;)Lio/reactivex/ObservableSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/miui/contentextension/services/SuperImageService$4;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {v0}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmContext(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/BitmapUtils;->saveBitmapToStorage(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p1

    .line 122
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/services/SuperImageService$4;->apply(Landroid/graphics/Bitmap;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
