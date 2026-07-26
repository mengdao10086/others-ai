.class Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/CommonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnPreDrawTask"
.end annotation


# instance fields
.field mTask:Ljava/lang/Runnable;

.field mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 3

    .line 71
    iget-object v0, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_18

    .line 73
    iget-object v1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_11

    .line 74
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 76
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_18
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mTask:Ljava/lang/Runnable;

    const/4 v0, 0x1

    return v0
.end method

.method public start(Landroid/view/View;)V
    .registers 4

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->mView:Ljava/lang/ref/WeakReference;

    .line 66
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
