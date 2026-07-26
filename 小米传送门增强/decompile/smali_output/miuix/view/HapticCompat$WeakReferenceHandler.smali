.class Lmiuix/view/HapticCompat$WeakReferenceHandler;
.super Ljava/lang/Object;
.source "HapticCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/view/HapticCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakReferenceHandler"
.end annotation


# instance fields
.field private final mFeedbackConstant:I

.field private final mViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mViewReference:Ljava/lang/ref/WeakReference;

    .line 96
    iput p2, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mFeedbackConstant:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 101
    iget-object v0, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_15

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 105
    :try_start_10
    iget v1, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mFeedbackConstant:I

    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method
