.class Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;
.super Ljava/lang/Object;
.source "TabletFloatingActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishFloatingActivityDelegate"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 4

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->mRefs:Ljava/lang/ref/WeakReference;

    .line 674
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$800(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;Z)V
    .registers 2

    .line 668
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->delegatePadPhoneFinishFloatingActivity(Z)V

    return-void
.end method

.method private activityExitActuator(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZIZ)V
    .registers 7

    .line 690
    # invokes: Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->isFirstPageExitAnimExecuteEnable()Z
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$1000(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p1, :cond_12

    .line 693
    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    .line 694
    invoke-direct {p0, p1, p2, p5}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Z)V

    goto :goto_12

    .line 698
    :cond_f
    # invokes: Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->singleFloatingSlipExit(ZI)V
    invoke-static {p2, p3, p4}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$1100(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V

    :cond_12
    :goto_12
    return-void
.end method

.method private delegatePadPhoneFinishFloatingActivity(Z)V
    .registers 9

    .line 679
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->mRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    const/4 v5, 0x3

    if-eqz v3, :cond_f

    .line 681
    # invokes: Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->updateFloatingActivityFinishingFlag(I)V
    invoke-static {v3, v5}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$900(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;I)V

    .line 683
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v3, :cond_20

    const/4 v4, 0x1

    move-object v1, p0

    move v6, p1

    .line 685
    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->activityExitActuator(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZIZ)V

    :cond_20
    return-void
.end method

.method private preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;Z)V
    .registers 4

    if-eqz p3, :cond_9

    .line 704
    # getter for: Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mIsFloatingWindow:Z
    invoke-static {p2}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$1200(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z

    move-result p2

    invoke-static {p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    :cond_9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const/4 v0, 0x0

    .line 710
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$FinishFloatingActivityDelegate;->delegatePadPhoneFinishFloatingActivity(Z)V

    return-void
.end method
