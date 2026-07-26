.class public Lcom/miui/contentextension/utils/DisposableHelper;
.super Ljava/lang/Object;
.source "DisposableHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/utils/DisposableHelper$SingletonHolder;
    }
.end annotation


# instance fields
.field private final mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/utils/DisposableHelper;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate isDisposed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.DisposableHelper"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/utils/DisposableHelper-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/utils/DisposableHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/contentextension/utils/DisposableHelper;
    .registers 1

    .line 16
    invoke-static {}, Lcom/miui/contentextension/utils/DisposableHelper$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/miui/contentextension/utils/DisposableHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lio/reactivex/disposables/Disposable;)V
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/miui/contentextension/utils/DisposableHelper;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const-string v1, "Taplus.DisposableHelper"

    if-eqz v0, :cond_26

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add isDisposed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/contentextension/utils/DisposableHelper;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v2}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/miui/contentextension/utils/DisposableHelper;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_2b

    .line 33
    :cond_26
    const-string p1, "mCompositeDisposable is null"

    invoke-static {v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-void
.end method

.method public clear()V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/miui/contentextension/utils/DisposableHelper;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const-string v1, "Taplus.DisposableHelper"

    if-eqz v0, :cond_24

    .line 39
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear isDisposed = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/contentextension/utils/DisposableHelper;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v2}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 42
    :cond_24
    const-string v0, "mCompositeDisposable is null"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method
