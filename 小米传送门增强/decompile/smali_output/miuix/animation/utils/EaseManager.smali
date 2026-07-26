.class public Lmiuix/animation/utils/EaseManager;
.super Ljava/lang/Object;
.source "EaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/EaseManager$EaseStyleDef;,
        Lmiuix/animation/utils/EaseManager$EaseStyle;,
        Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;,
        Lmiuix/animation/utils/EaseManager$DurationMotionEaseStyle;,
        Lmiuix/animation/utils/EaseManager$PhysicsMotionEaseStyle;,
        Lmiuix/animation/utils/EaseManager$StepPhysicsEaseStyle;,
        Lmiuix/animation/utils/EaseManager$SpringInterpolator;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:J = 0x12cL

.field static final sDurationMotionCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/animation/motion/Motion;",
            ">;"
        }
    .end annotation
.end field

.field static final sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/animation/TimeInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/utils/EaseManager;->sDurationMotionCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDurationMotion(I)Lmiuix/animation/motion/Motion;
    .registers 10

    const/4 v0, 0x1

    .line 566
    new-array v0, v0, [D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getEasing(I[D)Lmiuix/animation/FolmeEase;

    move-result-object p0

    .line 568
    instance-of v0, p0, Lmiuix/animation/easing/SimpleEasing;

    if-eqz v0, :cond_2a

    .line 570
    new-instance v0, Lmiuix/animation/motion/MotionConverter;

    invoke-interface {p0}, Lmiuix/animation/FolmeEase;->newMotion()Lmiuix/animation/motion/Motion;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v1, v0

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lmiuix/animation/motion/MotionConverter;-><init>(Lmiuix/animation/motion/Motion;DD)V

    .line 571
    check-cast p0, Lmiuix/animation/easing/SimpleEasing;

    invoke-interface {p0}, Lmiuix/animation/easing/SimpleEasing;->startSpeed()D

    move-result-wide v1

    mul-double/2addr v1, v7

    invoke-interface {v0, v1, v2}, Lmiuix/animation/motion/Motion;->setInitialV(D)V

    goto :goto_2e

    .line 573
    :cond_2a
    invoke-interface {p0}, Lmiuix/animation/FolmeEase;->newMotion()Lmiuix/animation/motion/Motion;

    move-result-object v0

    :goto_2e
    return-object v0
.end method

.method private static createDurationMotionNoCache(Lmiuix/animation/utils/EaseManager$DurationMotionEaseStyle;)Lmiuix/animation/motion/Motion;
    .registers 10

    .line 550
    iget-object v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 552
    aput-wide v2, v0, v1

    .line 553
    iget p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getEasing(I[D)Lmiuix/animation/FolmeEase;

    move-result-object p0

    .line 555
    instance-of v0, p0, Lmiuix/animation/easing/SimpleEasing;

    if-eqz v0, :cond_32

    .line 557
    new-instance v0, Lmiuix/animation/motion/MotionConverter;

    invoke-interface {p0}, Lmiuix/animation/FolmeEase;->newMotion()Lmiuix/animation/motion/Motion;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v1, v0

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lmiuix/animation/motion/MotionConverter;-><init>(Lmiuix/animation/motion/Motion;DD)V

    .line 558
    check-cast p0, Lmiuix/animation/easing/SimpleEasing;

    invoke-interface {p0}, Lmiuix/animation/easing/SimpleEasing;->startSpeed()D

    move-result-wide v1

    mul-double/2addr v1, v7

    invoke-interface {v0, v1, v2}, Lmiuix/animation/motion/Motion;->setInitialV(D)V

    goto :goto_36

    .line 560
    :cond_32
    invoke-interface {p0}, Lmiuix/animation/FolmeEase;->newMotion()Lmiuix/animation/motion/Motion;

    move-result-object v0

    :goto_36
    return-object v0
.end method

.method static varargs createTimeInterpolator(I[D)Landroid/animation/TimeInterpolator;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    packed-switch p0, :pswitch_data_b8

    const/4 p0, 0x0

    return-object p0

    .line 524
    :pswitch_5
    new-instance p0, Lmiuix/view/animation/BounceEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 522
    :pswitch_b
    new-instance p0, Lmiuix/view/animation/BounceEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseOutInterpolator;-><init>()V

    return-object p0

    .line 520
    :pswitch_11
    new-instance p0, Lmiuix/view/animation/BounceEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseInInterpolator;-><init>()V

    return-object p0

    .line 518
    :pswitch_17
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object p0

    .line 514
    :pswitch_1d
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object p0

    .line 516
    :pswitch_23
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p0

    .line 512
    :pswitch_29
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object p0

    .line 510
    :pswitch_2f
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 508
    :pswitch_35
    new-instance p0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-object p0

    .line 506
    :pswitch_3b
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInInterpolator;-><init>()V

    return-object p0

    .line 504
    :pswitch_41
    new-instance p0, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 502
    :pswitch_47
    new-instance p0, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    return-object p0

    .line 500
    :pswitch_4d
    new-instance p0, Lmiuix/view/animation/SineEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/SineEaseInInterpolator;-><init>()V

    return-object p0

    .line 498
    :pswitch_53
    new-instance p0, Lmiuix/view/animation/QuinticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 496
    :pswitch_59
    new-instance p0, Lmiuix/view/animation/QuinticEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseOutInterpolator;-><init>()V

    return-object p0

    .line 494
    :pswitch_5f
    new-instance p0, Lmiuix/view/animation/QuinticEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseInInterpolator;-><init>()V

    return-object p0

    .line 492
    :pswitch_65
    new-instance p0, Lmiuix/view/animation/QuarticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 490
    :pswitch_6b
    new-instance p0, Lmiuix/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseOutInterpolator;-><init>()V

    return-object p0

    .line 488
    :pswitch_71
    new-instance p0, Lmiuix/view/animation/QuarticEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseInInterpolator;-><init>()V

    return-object p0

    .line 486
    :pswitch_77
    new-instance p0, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 484
    :pswitch_7d
    new-instance p0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object p0

    .line 482
    :pswitch_83
    new-instance p0, Lmiuix/view/animation/CubicEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    return-object p0

    .line 480
    :pswitch_89
    new-instance p0, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 478
    :pswitch_8f
    new-instance p0, Lmiuix/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    return-object p0

    .line 476
    :pswitch_95
    new-instance p0, Lmiuix/view/animation/QuadraticEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseInInterpolator;-><init>()V

    return-object p0

    .line 474
    :pswitch_9b
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object p0

    .line 470
    :pswitch_a1
    new-instance p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    double-to-float v0, v0

    .line 471
    invoke-virtual {p0, v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object p0

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    double-to-float p1, v0

    .line 472
    invoke-virtual {p0, p1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_9b
        :pswitch_95
        :pswitch_8f
        :pswitch_89
        :pswitch_83
        :pswitch_7d
        :pswitch_77
        :pswitch_71
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_4d
        :pswitch_47
        :pswitch_41
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method private static ensureParamsLength([DILjava/lang/String;)V
    .registers 4

    .line 693
    array-length p0, p0

    if-ne p0, p1, :cond_4

    return-void

    .line 694
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must provide "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " param(s)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDurationMotion(Lmiuix/animation/utils/EaseManager$DurationMotionEaseStyle;)Lmiuix/animation/motion/Motion;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 534
    :cond_4
    iget v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_33

    const/16 v1, 0x14

    if-eq v0, v1, :cond_33

    const/16 v1, 0x16

    if-ne v0, v1, :cond_13

    goto :goto_33

    .line 539
    :cond_13
    sget-object v1, Lmiuix/animation/utils/EaseManager;->sDurationMotionCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/motion/Motion;

    if-nez v0, :cond_32

    .line 541
    iget v0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v0}, Lmiuix/animation/utils/EaseManager;->createDurationMotion(I)Lmiuix/animation/motion/Motion;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 543
    iget p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    return-object v0

    .line 537
    :cond_33
    :goto_33
    invoke-static {p0}, Lmiuix/animation/utils/EaseManager;->createDurationMotionNoCache(Lmiuix/animation/utils/EaseManager$DurationMotionEaseStyle;)Lmiuix/animation/motion/Motion;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getEasing(I[D)Lmiuix/animation/FolmeEase;
    .registers 20

    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_25f

    const/16 v2, 0xc8

    const/4 v5, 0x2

    if-eq v0, v2, :cond_24d

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_23b

    .line 579
    const-string v2, "quadIn"

    packed-switch v0, :pswitch_data_26c

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_2a4

    .line 688
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :pswitch_32
    const-string v0, "damping"

    invoke-static {v1, v5, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 588
    new-instance v0, Lmiuix/animation/easing/AndroidDampingEasing;

    aget-wide v4, v1, v4

    aget-wide v1, v1, v3

    invoke-direct {v0, v4, v5, v1, v2}, Lmiuix/animation/easing/AndroidDampingEasing;-><init>(DD)V

    return-object v0

    .line 584
    :pswitch_41
    const-string v0, "functionSpring"

    invoke-static {v1, v5, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 585
    new-instance v0, Lmiuix/animation/easing/AndroidSpringEasing;

    aget-wide v4, v1, v4

    aget-wide v1, v1, v3

    invoke-direct {v0, v4, v5, v1, v2}, Lmiuix/animation/easing/AndroidSpringEasing;-><init>(DD)V

    return-object v0

    .line 596
    :pswitch_50
    const-string v0, "springGravity"

    invoke-static {v1, v2, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 597
    new-instance v0, Lmiuix/animation/easing/AndroidSpringGravityEasing;

    aget-wide v7, v1, v4

    aget-wide v9, v1, v3

    aget-wide v11, v1, v5

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lmiuix/animation/easing/AndroidSpringGravityEasing;-><init>(DDD)V

    return-object v0

    :pswitch_62
    const/4 v0, 0x5

    .line 581
    const-string v6, "bezier"

    invoke-static {v1, v0, v6}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 582
    new-instance v0, Lmiuix/animation/easing/CubicBezierEasing;

    aget-wide v8, v1, v4

    aget-wide v10, v1, v3

    aget-wide v12, v1, v5

    aget-wide v14, v1, v2

    const/4 v2, 0x4

    aget-wide v16, v1, v2

    move-object v7, v0

    invoke-direct/range {v7 .. v17}, Lmiuix/animation/easing/CubicBezierEasing;-><init>(DDDDD)V

    return-object v0

    .line 685
    :pswitch_7a
    const-string v0, "bounceEaseInOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 686
    new-instance v0, Lmiuix/animation/easing/BounceInOutEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/BounceInOutEasing;-><init>(D)V

    return-object v0

    .line 682
    :pswitch_87
    const-string v0, "bounceEaseOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 683
    new-instance v0, Lmiuix/animation/easing/BounceOutEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/BounceOutEasing;-><init>(D)V

    return-object v0

    .line 679
    :pswitch_94
    const-string v0, "bounceEaseIn"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 680
    new-instance v0, Lmiuix/animation/easing/BounceInEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/BounceInEasing;-><init>(D)V

    return-object v0

    .line 676
    :pswitch_a1
    const-string v0, "bounce"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 677
    new-instance v0, Lmiuix/animation/easing/BounceEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/BounceEasing;-><init>(D)V

    return-object v0

    .line 668
    :pswitch_ae
    array-length v0, v1

    if-eqz v0, :cond_c6

    .line 671
    array-length v0, v1

    if-le v0, v3, :cond_be

    .line 672
    new-instance v0, Lmiuix/animation/easing/AccelerateEasing;

    aget-wide v2, v1, v3

    aget-wide v4, v1, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lmiuix/animation/easing/AccelerateEasing;-><init>(DD)V

    return-object v0

    .line 674
    :cond_be
    new-instance v0, Lmiuix/animation/easing/AccelerateEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/AccelerateEasing;-><init>(D)V

    return-object v0

    .line 669
    :cond_c6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accelerateInterpolator must provide more than 1 param(s)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :pswitch_ce
    const-string v0, "accelerateDecelerate"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 666
    new-instance v0, Lmiuix/animation/easing/AccelerateDecelerateEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/AccelerateDecelerateEasing;-><init>(D)V

    return-object v0

    .line 657
    :pswitch_db
    array-length v0, v1

    if-eqz v0, :cond_f3

    .line 660
    array-length v0, v1

    if-le v0, v3, :cond_eb

    .line 661
    new-instance v0, Lmiuix/animation/easing/DecelerateEasing;

    aget-wide v2, v1, v3

    aget-wide v4, v1, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lmiuix/animation/easing/DecelerateEasing;-><init>(DD)V

    return-object v0

    .line 663
    :cond_eb
    new-instance v0, Lmiuix/animation/easing/DecelerateEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/DecelerateEasing;-><init>(D)V

    return-object v0

    .line 658
    :cond_f3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decelerate must provide more than 1 param(s)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :pswitch_fb
    const-string v0, "expoInOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 655
    new-instance v0, Lmiuix/animation/easing/CubicBezierEasing;

    aget-wide v6, v1, v4

    const-wide v12, 0x3fc0a3d70a3d70a4L    # 0.13

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3febd70a3d70a3d7L    # 0.87

    const-wide/16 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lmiuix/animation/easing/CubicBezierEasing;-><init>(DDDDD)V

    return-object v0

    .line 651
    :pswitch_117
    const-string v0, "expoOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 652
    new-instance v0, Lmiuix/animation/easing/CubicBezierEasing;

    aget-wide v6, v1, v4

    const-wide v12, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fc47ae147ae147bL    # 0.16

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lmiuix/animation/easing/CubicBezierEasing;-><init>(DDDDD)V

    return-object v0

    .line 648
    :pswitch_133
    const-string v0, "expoIn"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 649
    new-instance v0, Lmiuix/animation/easing/CubicBezierEasing;

    aget-wide v6, v1, v4

    const-wide v12, 0x3feae147ae147ae1L    # 0.84

    const-wide/16 v14, 0x0

    const-wide v8, 0x3fe6666666666666L    # 0.7

    const-wide/16 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lmiuix/animation/easing/CubicBezierEasing;-><init>(DDDDD)V

    return-object v0

    .line 645
    :pswitch_14f
    const-string v0, "sineInOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 646
    new-instance v0, Lmiuix/animation/easing/SineInOutEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/SineInOutEasing;-><init>(D)V

    return-object v0

    .line 642
    :pswitch_15c
    const-string v0, "sineOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 643
    new-instance v0, Lmiuix/animation/easing/SineOutEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/SineOutEasing;-><init>(D)V

    return-object v0

    .line 639
    :pswitch_169
    const-string v0, "sineIn"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 640
    new-instance v0, Lmiuix/animation/easing/SineInEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/SineInEasing;-><init>(D)V

    return-object v0

    .line 636
    :pswitch_176
    const-string v0, "quintInOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 637
    new-instance v0, Lmiuix/animation/easing/CubicBezierEasing;

    aget-wide v6, v1, v4

    const-wide v12, 0x3fc5c28f5c28f5c3L    # 0.17

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fea8f5c28f5c28fL    # 0.83

    const-wide/16 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lmiuix/animation/easing/CubicBezierEasing;-><init>(DDDDD)V

    return-object v0

    .line 633
    :pswitch_192
    const-string v0, "quintOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 634
    new-instance v0, Lmiuix/animation/easing/CubicBezierEasing;

    aget-wide v6, v1, v4

    const-wide v12, 0x3fd70a3d70a3d70aL    # 0.36

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fcc28f5c28f5c29L    # 0.22

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lmiuix/animation/easing/CubicBezierEasing;-><init>(DDDDD)V

    return-object v0

    .line 630
    :pswitch_1ae
    const-string v0, "quintIn"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 631
    new-instance v0, Lmiuix/animation/easing/CubicBezierEasing;

    aget-wide v6, v1, v4

    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    const-wide/16 v14, 0x0

    const-wide v8, 0x3fe47ae147ae147bL    # 0.64

    const-wide/16 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lmiuix/animation/easing/CubicBezierEasing;-><init>(DDDDD)V

    return-object v0

    .line 627
    :pswitch_1ca
    const-string v0, "quartInOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 628
    new-instance v0, Lmiuix/animation/easing/QuartInOutEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/QuartInOutEasing;-><init>(D)V

    return-object v0

    .line 624
    :pswitch_1d7
    const-string v0, "quartOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 625
    new-instance v0, Lmiuix/animation/easing/QuartOutEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/QuartOutEasing;-><init>(D)V

    return-object v0

    .line 621
    :pswitch_1e4
    invoke-static {v1, v3, v2}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 622
    new-instance v0, Lmiuix/animation/easing/QuartInEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/QuartInEasing;-><init>(D)V

    return-object v0

    .line 618
    :pswitch_1ef
    const-string v0, "cubicInOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 619
    new-instance v0, Lmiuix/animation/easing/CubicInOutEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/CubicInOutEasing;-><init>(D)V

    return-object v0

    .line 615
    :pswitch_1fc
    const-string v0, "cubicOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 616
    new-instance v0, Lmiuix/animation/easing/CubicOutEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/CubicOutEasing;-><init>(D)V

    return-object v0

    .line 612
    :pswitch_209
    const-string v0, "cubicIn"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 613
    new-instance v0, Lmiuix/animation/easing/CubicInEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/CubicInEasing;-><init>(D)V

    return-object v0

    .line 609
    :pswitch_216
    const-string v0, "quadInOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 610
    new-instance v0, Lmiuix/animation/easing/QuadInOutEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/QuadInOutEasing;-><init>(D)V

    return-object v0

    .line 606
    :pswitch_223
    const-string v0, "quadOut"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 607
    new-instance v0, Lmiuix/animation/easing/QuadOutEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/QuadOutEasing;-><init>(D)V

    return-object v0

    .line 603
    :pswitch_230
    invoke-static {v1, v3, v2}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 604
    new-instance v0, Lmiuix/animation/easing/QuadInEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/QuadInEasing;-><init>(D)V

    return-object v0

    .line 590
    :cond_23b
    const-string v0, "perlin"

    invoke-static {v1, v5, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 591
    new-instance v0, Lmiuix/animation/easing/PerlinEasing;

    aget-wide v7, v1, v4

    aget-wide v9, v1, v3

    sget-object v11, Lmiuix/animation/easing/PerlinEasing;->INTERPOLATOR:Lmiuix/animation/function/Differentiable;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lmiuix/animation/easing/PerlinEasing;-><init>(DDLmiuix/animation/function/Differentiable;)V

    return-object v0

    .line 593
    :cond_24d
    const-string v0, "perlin2"

    invoke-static {v1, v5, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 594
    new-instance v0, Lmiuix/animation/easing/PerlinEasing;

    aget-wide v7, v1, v4

    aget-wide v9, v1, v3

    sget-object v11, Lmiuix/animation/easing/PerlinEasing;->INTERPOLATOR2:Lmiuix/animation/function/Differentiable;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lmiuix/animation/easing/PerlinEasing;-><init>(DDLmiuix/animation/function/Differentiable;)V

    return-object v0

    .line 600
    :cond_25f
    :pswitch_25f
    const-string v0, "linear"

    invoke-static {v1, v3, v0}, Lmiuix/animation/utils/EaseManager;->ensureParamsLength([DILjava/lang/String;)V

    .line 601
    new-instance v0, Lmiuix/animation/easing/LinearEasing;

    aget-wide v1, v1, v4

    invoke-direct {v0, v1, v2}, Lmiuix/animation/easing/LinearEasing;-><init>(D)V

    return-object v0

    :pswitch_data_26c
    .packed-switch 0x1
        :pswitch_25f
        :pswitch_230
        :pswitch_223
        :pswitch_216
        :pswitch_209
        :pswitch_1fc
        :pswitch_1ef
        :pswitch_1e4
        :pswitch_1d7
        :pswitch_1ca
        :pswitch_1ae
        :pswitch_192
        :pswitch_176
        :pswitch_169
        :pswitch_15c
        :pswitch_14f
        :pswitch_133
        :pswitch_117
        :pswitch_fb
        :pswitch_db
        :pswitch_ce
        :pswitch_ae
        :pswitch_a1
        :pswitch_94
        :pswitch_87
        :pswitch_7a
    .end packed-switch

    :pswitch_data_2a4
    .packed-switch 0x64
        :pswitch_62
        :pswitch_50
        :pswitch_41
        :pswitch_32
    .end packed-switch
.end method

.method public static varargs getInterpolator(I[D)Landroid/animation/TimeInterpolator;
    .registers 2

    .line 443
    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager;->getInterpolatorStyle(I[D)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object p0

    .line 444
    invoke-static {p0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getInterpolator(I[F)Landroid/animation/TimeInterpolator;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 436
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_f

    .line 437
    aget v2, p1, v1

    float-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 439
    :cond_f
    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(I[D)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public static getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;
    .registers 4

    if-eqz p0, :cond_26

    .line 454
    sget-object v0, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    if-nez v1, :cond_25

    .line 456
    iget v1, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    iget-object v2, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->factors:[D

    invoke-static {v1, v2}, Lmiuix/animation/utils/EaseManager;->createTimeInterpolator(I[D)Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 458
    iget p0, p0, Lmiuix/animation/utils/EaseManager$EaseStyle;->style:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-object v1

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs getInterpolatorStyle(I[D)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;
    .registers 3

    .line 448
    new-instance v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[D)V

    return-object v0
.end method

.method public static getStyle(I)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 397
    new-array v0, v0, [D

    const-wide v1, 0x4072c00000000000L    # 300.0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[D)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getStyle(I[D)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 5

    if-nez p0, :cond_1f

    .line 418
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_d

    .line 419
    array-length v0, p1

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    goto :goto_f

    :cond_d
    new-array v0, v1, [D

    .line 420
    :goto_f
    new-instance v2, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-direct {v2, p0, v0}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[D)V

    .line 421
    array-length p0, p1

    if-lez p0, :cond_1e

    .line 422
    aget-wide p0, p1, v1

    double-to-int p0, p0

    int-to-long p0, p0

    invoke-virtual {v2, p0, p1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    :cond_1e
    return-object v2

    .line 425
    :cond_1f
    invoke-static {p0}, Lmiuix/animation/utils/EaseManager;->isDurationMotionStyle(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 426
    new-instance v0, Lmiuix/animation/utils/EaseManager$DurationMotionEaseStyle;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$DurationMotionEaseStyle;-><init>(I[D)V

    return-object v0

    .line 427
    :cond_2b
    invoke-static {p0}, Lmiuix/animation/utils/EaseManager;->isPhysicsMotionStyle(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 428
    new-instance v0, Lmiuix/animation/utils/EaseManager$PhysicsMotionEaseStyle;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$PhysicsMotionEaseStyle;-><init>(I[D)V

    return-object v0

    .line 430
    :cond_37
    new-instance v0, Lmiuix/animation/utils/EaseManager$StepPhysicsEaseStyle;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$StepPhysicsEaseStyle;-><init>(I[D)V

    return-object v0
.end method

.method public static varargs getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 6

    .line 409
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 410
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_f

    .line 411
    aget v2, p1, v1

    float-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 413
    :cond_f
    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[D)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getStyle(I[Lmiuix/animation/physics/FactorOperator;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 6

    .line 401
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 402
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 403
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lmiuix/animation/physics/FactorOperator;->getFactor()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 405
    :cond_12
    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[D)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p0

    return-object p0
.end method

.method public static isDurationMotionStyle(I)Z
    .registers 2

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    if-lez p0, :cond_a

    const/16 v0, 0x64

    if-gt p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static isPhysicsMotionStyle(I)Z
    .registers 2

    .line 0
    const/16 v0, 0x64

    if-le p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isPhysicsStyle(I)Z
    .registers 2

    .line 0
    const/4 v0, -0x2

    if-gt p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method
