.class Lmiuix/popupwidget/widget/PopupAnimHelper$7;
.super Lmiuix/animation/listener/TransitionListener;
.source "PopupAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/PopupAnimHelper;->dismissWithAnim(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

.field final synthetic val$taskOnComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/widget/PopupAnimHelper;Ljava/lang/Runnable;)V
    .registers 3

    .line 207
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$7;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    iput-object p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$7;->val$taskOnComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 210
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$7;->val$taskOnComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 211
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 213
    :cond_7
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$7;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mAnimConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$700(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    return-void
.end method
