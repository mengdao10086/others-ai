.class public abstract Lcom/miui/contentextension/data/recognition/network/OcrObserver;
.super Ljava/lang/Object;
.source "OcrObserver.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract failure(Ljava/lang/String;)V
.end method

.method public onComplete()V
    .registers 1

    .line 0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/network/OcrObserver;->failure(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/network/OcrObserver;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 12
    invoke-static {}, Lcom/miui/contentextension/utils/DisposableHelper;->getInstance()Lcom/miui/contentextension/utils/DisposableHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/utils/DisposableHelper;->add(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method protected abstract success(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
