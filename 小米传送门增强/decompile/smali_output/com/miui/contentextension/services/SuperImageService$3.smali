.class Lcom/miui/contentextension/services/SuperImageService$3;
.super Ljava/lang/Object;
.source "SuperImageService.java"

# interfaces
.implements Lio/reactivex/Observer;


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
        "Lio/reactivex/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/SuperImageService;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/SuperImageService;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .line 157
    const-string v0, "Taplus.SuperImageService"

    const-string v1, "onComplete: "

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {v0}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmContext(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {v1}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmConnection(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 12

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.SuperImageService"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {p1}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmContext(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100159

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/ToastUtils;->showShortToast(Landroid/content/Context;I)V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {p1}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmStartTime(Lcom/miui/contentextension/services/SuperImageService;)J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 149
    iget-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {p1}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmBitmapWidth(Lcom/miui/contentextension/services/SuperImageService;)I

    move-result v4

    iget-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {p1}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmBitmapHeight(Lcom/miui/contentextension/services/SuperImageService;)I

    move-result v5

    const-string v6, "image_SR"

    const/16 v9, 0x7d1

    invoke-static/range {v4 .. v9}, Lcom/miui/contentextension/analy/Analy;->trackToastExpose(IILjava/lang/String;JI)V

    .line 152
    iget-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {p1}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmContext(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {v0}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmConnection(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .registers 12

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNext: save bitmap succeed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.SuperImageService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {v2}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmStartTime(Lcom/miui/contentextension/services/SuperImageService;)J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 137
    iget-object v0, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {v0}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmBitmapWidth(Lcom/miui/contentextension/services/SuperImageService;)I

    move-result v4

    iget-object v0, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {v0}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmBitmapHeight(Lcom/miui/contentextension/services/SuperImageService;)I

    move-result v5

    .line 139
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x7d0

    :goto_36
    move v9, v0

    goto :goto_3b

    :cond_38
    const/16 v0, 0x7d2

    goto :goto_36

    .line 137
    :goto_3b
    const-string v6, "image_SR"

    invoke-static/range {v4 .. v9}, Lcom/miui/contentextension/analy/Analy;->trackToastExpose(IILjava/lang/String;JI)V

    .line 140
    iget-object v0, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {v0}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmContext(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/Context;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_50

    const p1, 0x7f10015b

    goto :goto_53

    :cond_50
    const p1, 0x7f100159

    .line 140
    :goto_53
    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/ToastUtils;->showShortToast(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 126
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/services/SuperImageService$3;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSubscribe: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.SuperImageService"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$3;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {p1}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fgetmContext(Lcom/miui/contentextension/services/SuperImageService;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10015a

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/ToastUtils;->showLongToast(Landroid/content/Context;I)V

    return-void
.end method
