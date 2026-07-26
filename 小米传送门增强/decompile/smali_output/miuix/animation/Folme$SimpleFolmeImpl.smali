.class public Lmiuix/animation/Folme$SimpleFolmeImpl;
.super Ljava/lang/Object;
.source "Folme.java"

# interfaces
.implements Lmiuix/animation/IFolme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/Folme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleFolmeImpl"
.end annotation


# instance fields
.field private mBlink:Lmiuix/animation/IBlinkStyle;

.field private mHover:Lmiuix/animation/IHoverStyle;

.field private mState:Lmiuix/animation/IStateStyle;

.field private mTarget:Lmiuix/animation/IAnimTarget;

.field private mTouch:Lmiuix/animation/ITouchStyle;

.field private mVisible:Lmiuix/animation/IVisibleStyle;


# direct methods
.method private constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .registers 2

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTarget:Lmiuix/animation/IAnimTarget;

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V
    .registers 3

    .line 391
    invoke-direct {p0, p1}, Lmiuix/animation/Folme$SimpleFolmeImpl;-><init>(Lmiuix/animation/IAnimTarget;)V

    return-void
.end method


# virtual methods
.method public varargs autoSetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 576
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->autoSetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public blink()Lmiuix/animation/IBlinkStyle;
    .registers 3

    .line 496
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    if-eqz v1, :cond_15

    .line 497
    iget-object v1, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    if-nez v1, :cond_15

    .line 498
    new-instance v1, Lmiuix/animation/controller/FolmeBlink;

    filled-new-array {v0}, [Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-direct {v1, v0}, Lmiuix/animation/controller/FolmeBlink;-><init>([Lmiuix/animation/IAnimTarget;)V

    iput-object v1, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    .line 501
    :cond_15
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    return-object v0
.end method

.method public cancel()V
    .registers 2

    .line 591
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .registers 3

    .line 601
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .registers 3

    .line 596
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public clean()V
    .registers 2

    .line 411
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    if-eqz v0, :cond_7

    .line 412
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 414
    :cond_7
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    if-eqz v0, :cond_e

    .line 415
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 417
    :cond_e
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_15

    .line 418
    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    .line 420
    :cond_15
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    if-eqz v0, :cond_1c

    .line 421
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 423
    :cond_1c
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    if-eqz v0, :cond_23

    .line 424
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 426
    :cond_23
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTarget:Lmiuix/animation/IAnimTarget;

    if-eqz v0, :cond_2a

    .line 427
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->clean()V

    :cond_2a
    return-void
.end method

.method public end()V
    .registers 4

    .line 433
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 434
    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 436
    :cond_a
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    if-eqz v0, :cond_13

    .line 437
    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 439
    :cond_13
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_1a

    .line 440
    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->end()V

    .line 442
    :cond_1a
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    if-eqz v0, :cond_23

    .line 443
    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 445
    :cond_23
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    if-eqz v0, :cond_2c

    .line 446
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .registers 3

    .line 606
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 5

    .line 546
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmiuix/animation/FolmeStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public getTarget()Lmiuix/animation/IAnimTarget;
    .registers 2

    .line 452
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTarget:Lmiuix/animation/IAnimTarget;

    return-object v0
.end method

.method public hover()Lmiuix/animation/IHoverStyle;
    .registers 3

    .line 457
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    if-nez v0, :cond_11

    .line 458
    new-instance v0, Lmiuix/animation/controller/FolmeHover;

    iget-object v1, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTarget:Lmiuix/animation/IAnimTarget;

    filled-new-array {v1}, [Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeHover;-><init>([Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    .line 460
    :cond_11
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    return-object v0
.end method

.method public varargs predictDuration([Ljava/lang/Object;)J
    .registers 4

    .line 566
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->predictDuration([Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 516
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs resetTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 521
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->resetTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 556
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public setFlags(J)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 581
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 506
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 511
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 551
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 586
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public state()Lmiuix/animation/IStateStyle;
    .registers 2

    .line 488
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    if-nez v0, :cond_10

    .line 489
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTarget:Lmiuix/animation/IAnimTarget;

    filled-new-array {v0}, [Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/controller/StateComposer;->composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    .line 491
    :cond_10
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    return-object v0
.end method

.method public varargs then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 536
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs then([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 571
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->then([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 531
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 561
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 526
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs toWithInit([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 541
    invoke-virtual {p0}, Lmiuix/animation/Folme$SimpleFolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->toWithInit([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lmiuix/animation/ITouchStyle;
    .registers 3

    .line 465
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v0, v0, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_1f

    .line 466
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    if-nez v0, :cond_1f

    .line 467
    new-instance v0, Lmiuix/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTarget:Lmiuix/animation/IAnimTarget;

    filled-new-array {v1}, [Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 468
    new-instance v1, Lmiuix/animation/controller/FolmeFont;

    invoke-direct {v1}, Lmiuix/animation/controller/FolmeFont;-><init>()V

    .line 469
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/FolmeTouch;->setFontStyle(Lmiuix/animation/controller/FolmeFont;)V

    .line 470
    iput-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    .line 473
    :cond_1f
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    return-object v0
.end method

.method public visible()Lmiuix/animation/IVisibleStyle;
    .registers 3

    .line 478
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v1, v0, Lmiuix/animation/ViewTarget;

    if-eqz v1, :cond_15

    .line 479
    iget-object v1, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    if-nez v1, :cond_15

    .line 480
    new-instance v1, Lmiuix/animation/controller/FolmeVisible;

    filled-new-array {v0}, [Lmiuix/animation/IAnimTarget;

    move-result-object v0

    invoke-direct {v1, v0}, Lmiuix/animation/controller/FolmeVisible;-><init>([Lmiuix/animation/IAnimTarget;)V

    iput-object v1, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    .line 483
    :cond_15
    iget-object v0, p0, Lmiuix/animation/Folme$SimpleFolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    return-object v0
.end method
