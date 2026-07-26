.class Lcom/miui/contentextension/view/SourceIcon$1;
.super Ljava/lang/Object;
.source "SourceIcon.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/view/SourceIcon;->setImageDrawableAsync(Landroid/graphics/drawable/Drawable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/view/SourceIcon;

.field final synthetic val$isPlaceHolder:Z


# direct methods
.method constructor <init>(Lcom/miui/contentextension/view/SourceIcon;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/miui/contentextension/view/SourceIcon$1;->this$0:Lcom/miui/contentextension/view/SourceIcon;

    iput-boolean p2, p0, Lcom/miui/contentextension/view/SourceIcon$1;->val$isPlaceHolder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .line 0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 197
    const-string v0, "Taplus.SourceIcon"

    const-string v1, "setImageDrawableSafely onError "

    invoke-static {v0, v1, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    iget-object p1, p0, Lcom/miui/contentextension/view/SourceIcon$1;->this$0:Lcom/miui/contentextension/view/SourceIcon;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f08009f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon$1;->this$0:Lcom/miui/contentextension/view/SourceIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/contentextension/view/SourceIcon;->setImageDrawableAsync(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public onNext(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 185
    iget-boolean v0, p0, Lcom/miui/contentextension/view/SourceIcon$1;->val$isPlaceHolder:Z

    if-eqz v0, :cond_12

    .line 186
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon$1;->this$0:Lcom/miui/contentextension/view/SourceIcon;

    invoke-static {v0}, Lcom/miui/contentextension/view/SourceIcon;->-$$Nest$fgetmIsRefreshIcon(Lcom/miui/contentextension/view/SourceIcon;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 187
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon$1;->this$0:Lcom/miui/contentextension/view/SourceIcon;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 190
    :cond_12
    iget-object v0, p0, Lcom/miui/contentextension/view/SourceIcon$1;->this$0:Lcom/miui/contentextension/view/SourceIcon;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object p1, p0, Lcom/miui/contentextension/view/SourceIcon$1;->this$0:Lcom/miui/contentextension/view/SourceIcon;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/contentextension/view/SourceIcon;->-$$Nest$fputmIsRefreshIcon(Lcom/miui/contentextension/view/SourceIcon;Z)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 176
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/view/SourceIcon$1;->onNext(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 4

    .line 179
    const-string v0, "Taplus.SourceIcon"

    const-string v1, "start setImageDrawableSafely"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/miui/contentextension/utils/DisposableHelper;->getInstance()Lcom/miui/contentextension/utils/DisposableHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/utils/DisposableHelper;->add(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
