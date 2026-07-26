.class Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "TabletFloatingActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingAnimTransitionListener"
.end annotation


# instance fields
.field private mAllActivityFinished:Z

.field private mDismiss:Z

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslationY:I

.field private mType:I


# direct methods
.method private constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZII)V
    .registers 6

    .line 722
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    const/4 v0, 0x0

    .line 720
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mAllActivityFinished:Z

    .line 723
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    .line 724
    iput p4, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mType:I

    .line 725
    iput-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mDismiss:Z

    .line 726
    iput p3, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mTranslationY:I

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZIILmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;)V
    .registers 6

    .line 714
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;-><init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZII)V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .registers 3

    .line 753
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 754
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    :goto_f
    if-eqz v0, :cond_14

    .line 756
    # invokes: Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->onEnd(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$1300(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 3

    .line 744
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 745
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    :goto_f
    if-eqz v0, :cond_14

    .line 747
    # invokes: Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->onEnd(Ljava/lang/Object;)V
    invoke-static {v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$1300(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 731
    sget-object p1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    .line 732
    iget-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mDismiss:Z

    if-eqz p2, :cond_30

    if-nez p1, :cond_d

    goto :goto_30

    .line 735
    :cond_d
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    .line 736
    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mAllActivityFinished:Z

    if-nez v0, :cond_30

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mTranslationY:I

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_30

    if-eqz p2, :cond_30

    const/4 p1, 0x1

    .line 737
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FloatingAnimTransitionListener;->mAllActivityFinished:Z

    .line 738
    invoke-virtual {p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->finishAllPage()V

    :cond_30
    :goto_30
    return-void
.end method
