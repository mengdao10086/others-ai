.class public abstract Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$MassState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final ROTATION_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCALE_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final SCROLL_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final TRANSLATION_Z:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

.field public static final Z:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTimeNanos:J

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;

.field mRunning:Z

.field private mStartDelay:J

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$1;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 69
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$2;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 84
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$3;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 99
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$4;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 114
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$5;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 129
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$6;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 144
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$7;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 159
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$8;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 174
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$9;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 189
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$10;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 204
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$11;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->Z:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 219
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$12;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->ALPHA:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 235
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$13;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 250
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$14;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->SCROLL_Y:Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    return-void
.end method

.method constructor <init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 293
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    .line 297
    iput-boolean v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 306
    iput-boolean v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 309
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    .line 310
    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    .line 313
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTimeNanos:J

    .line 318
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartDelay:J

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 339
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$15;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 350
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    return-void
.end method

.method private endAnimationInternal(Z)V
    .registers 6

    const/4 v0, 0x0

    .line 712
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 713
    invoke-static {}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->removeCallback(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V

    const-wide/16 v1, 0x0

    .line 714
    iput-wide v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTimeNanos:J

    .line 715
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 716
    :goto_10
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 717
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 718
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    iget v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;ZFF)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 721
    :cond_32
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getPropertyValue()F
    .registers 3

    .line 748
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 577
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 567
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 568
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method private startAnimationInternal(Z)V
    .registers 4

    .line 639
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_33

    const/4 v0, 0x1

    .line 640
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 641
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_11

    .line 642
    invoke-direct {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 645
    :cond_11
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_2b

    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2b

    if-nez p1, :cond_33

    .line 650
    invoke-static {}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object p1

    iget-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartDelay:J

    invoke-virtual {p1, p0, v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->addAnimationFrameCallback(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_33

    .line 646
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;",
            ")TT;"
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    .line 498
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 499
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object p0

    .line 495
    :cond_14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Error: Update listeners must be added beforethe miuix.animation."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .registers 3

    .line 616
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 620
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 621
    invoke-direct {p0, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_12
    return-void

    .line 617
    :cond_13
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled from the same thread as the animation handler"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doAnimationFrame(J)Z
    .registers 12

    .line 666
    invoke-static {}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getFrameDeltaNanos()J

    move-result-wide v0

    .line 668
    invoke-static {}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getFromFramePeriodNsecs()Z

    move-result v2

    .line 669
    iget-wide v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTimeNanos:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const/4 v8, 0x0

    if-nez v7, :cond_21

    .line 671
    iput-wide p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTimeNanos:J

    .line 672
    iget p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    return v8

    :cond_21
    cmp-long v5, v0, v5

    if-nez v5, :cond_27

    sub-long v0, p1, v3

    :cond_27
    if-eqz v2, :cond_34

    if-nez v5, :cond_2c

    goto :goto_34

    :cond_2c
    const-wide/32 v2, 0x3b9aca00

    .line 680
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_3b

    :cond_34
    :goto_34
    const-wide/32 v2, 0xfe502a

    .line 678
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 684
    :goto_3b
    iput-wide p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mLastFrameTimeNanos:J

    .line 685
    invoke-virtual {p0, v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result p1

    .line 687
    iget p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 688
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 690
    invoke-virtual {p0, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setPropertyValue(F)V

    if-eqz p1, :cond_5b

    .line 693
    invoke-direct {p0, v8}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_5b
    return p1
.end method

.method public getAnimationHandler()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;
    .registers 2

    .line 752
    invoke-static {}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method

.method getValueThreshold()F
    .registers 3

    .line 741
    iget v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 631
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    return v0
.end method

.method public removeUpdateListener(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .registers 3

    .line 511
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 424
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    return-object p0
.end method

.method public setMinValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 437
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    return-object p0
.end method

.method public setMinimumVisibleChange(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_e

    .line 546
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    .line 547
    invoke-virtual {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->setValueThreshold(F)V

    return-object p0

    .line 544
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Minimum visible change must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setPropertyValue(F)V
    .registers 5

    .line 728
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mProperty:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    .line 729
    :goto_8
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    .line 730
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 731
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    iget v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    iget v2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    invoke-interface {v0, p0, v1, v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;FF)V

    :cond_27
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 734
    :cond_2a
    iget-object p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStartValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 383
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mValue:F

    const/4 p1, 0x1

    .line 384
    iput-boolean p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    return-object p0
.end method

.method public setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 407
    iput p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    return-object p0
.end method

.method abstract setValueThreshold(F)V
.end method

.method public start(Z)V
    .registers 3

    .line 600
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 603
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_11

    .line 604
    invoke-direct {p0, p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;->startAnimationInternal(Z)V

    :cond_11
    return-void

    .line 601
    :cond_12
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract updateValueAndVelocity(J)Z
.end method
