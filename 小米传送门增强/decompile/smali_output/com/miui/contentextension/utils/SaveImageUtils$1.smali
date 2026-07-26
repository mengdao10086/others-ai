.class Lcom/miui/contentextension/utils/SaveImageUtils$1;
.super Ljava/lang/Object;
.source "SaveImageUtils.java"

# interfaces
.implements Lio/reactivex/Observer;


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
        "Lio/reactivex/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field final synthetic val$bitmapHeight:I

.field final synthetic val$bitmapWidth:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;JII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$startTime:J

    iput p4, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$bitmapWidth:I

    iput p5, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$bitmapHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 98
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_7
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 12

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.SaveImageUtils"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1d

    .line 87
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 89
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$startTime:J

    sub-long v7, v0, v2

    .line 90
    iget-object p1, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$context:Landroid/content/Context;

    const v0, 0x7f100159

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/ToastUtils;->showShortToast(Landroid/content/Context;I)V

    .line 91
    iget p1, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$bitmapWidth:I

    invoke-static {p1}, Lcom/miui/contentextension/utils/SaveImageUtils;->-$$Nest$smgetBitmapWidth(I)I

    move-result v4

    iget p1, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$bitmapHeight:I

    invoke-static {p1}, Lcom/miui/contentextension/utils/SaveImageUtils;->-$$Nest$smgetBitmapHeight(I)I

    move-result v5

    const-string v6, "original"

    const/16 v9, 0x7d2

    invoke-static/range {v4 .. v9}, Lcom/miui/contentextension/analy/Analy;->trackToastExpose(IILjava/lang/String;JI)V

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .registers 12

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$startTime:J

    sub-long v7, v0, v2

    .line 76
    iget v0, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$bitmapWidth:I

    invoke-static {v0}, Lcom/miui/contentextension/utils/SaveImageUtils;->-$$Nest$smgetBitmapWidth(I)I

    move-result v4

    iget v0, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$bitmapHeight:I

    invoke-static {v0}, Lcom/miui/contentextension/utils/SaveImageUtils;->-$$Nest$smgetBitmapHeight(I)I

    move-result v5

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x7d0

    :goto_1c
    move v9, v0

    goto :goto_21

    :cond_1e
    const/16 v0, 0x7d2

    goto :goto_1c

    .line 76
    :goto_21
    const-string v6, "original"

    invoke-static/range {v4 .. v9}, Lcom/miui/contentextension/analy/Analy;->trackToastExpose(IILjava/lang/String;JI)V

    .line 79
    iget-object v0, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$context:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_32

    const p1, 0x7f10015b

    goto :goto_35

    :cond_32
    const p1, 0x7f100159

    .line 79
    :goto_35
    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/ToastUtils;->showShortToast(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 62
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/utils/SaveImageUtils$1;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 7

    .line 67
    iput-object p1, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->mDisposable:Lio/reactivex/disposables/Disposable;

    .line 68
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;

    iget-object v1, p0, Lcom/miui/contentextension/utils/SaveImageUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "save_image,original"

    const-string v3, "newimage"

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
