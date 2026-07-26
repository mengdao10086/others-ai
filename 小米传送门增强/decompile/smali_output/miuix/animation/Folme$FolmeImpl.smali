.class public Lmiuix/animation/Folme$FolmeImpl;
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
    name = "FolmeImpl"
.end annotation


# instance fields
.field private mBlink:Lmiuix/animation/IBlinkStyle;

.field private mHover:Lmiuix/animation/IHoverStyle;

.field private mState:Lmiuix/animation/IStateStyle;

.field private mTargets:[Lmiuix/animation/IAnimTarget;

.field private mTouch:Lmiuix/animation/ITouchStyle;

.field private mVisible:Lmiuix/animation/IVisibleStyle;


# direct methods
.method private varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .registers 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    const/4 p1, 0x0

    .line 189
    # invokes: Lmiuix/animation/Folme;->sendToTargetMessage(Z)V
    invoke-static {p1}, Lmiuix/animation/Folme;->access$000(Z)V

    .line 190
    # invokes: Lmiuix/animation/Folme;->performTargetCleanForTooMuchInvalid()V
    invoke-static {}, Lmiuix/animation/Folme;->access$100()V

    return-void
.end method

.method synthetic constructor <init>([Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V
    .registers 3

    .line 173
    invoke-direct {p0, p1}, Lmiuix/animation/Folme$FolmeImpl;-><init>([Lmiuix/animation/IAnimTarget;)V

    return-void
.end method


# virtual methods
.method public varargs autoSetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 354
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->autoSetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public blink()Lmiuix/animation/IBlinkStyle;
    .registers 3

    .line 276
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    if-nez v0, :cond_d

    .line 277
    new-instance v0, Lmiuix/animation/controller/FolmeBlink;

    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeBlink;-><init>([Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    .line 279
    :cond_d
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    return-object v0
.end method

.method public cancel()V
    .registers 2

    .line 369
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .registers 3

    .line 379
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .registers 3

    .line 374
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public clean()V
    .registers 5

    .line 195
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    if-eqz v0, :cond_7

    .line 196
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 198
    :cond_7
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    if-eqz v0, :cond_e

    .line 199
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 201
    :cond_e
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_15

    .line 202
    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    .line 204
    :cond_15
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    if-eqz v0, :cond_1c

    .line 205
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 207
    :cond_1c
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    if-eqz v0, :cond_23

    .line 208
    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 210
    :cond_23
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_31

    aget-object v3, v0, v2

    .line 211
    invoke-static {v3}, Lmiuix/animation/FolmeFactory;->clean(Lmiuix/animation/IAnimTarget;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_31
    return-void
.end method

.method public end()V
    .registers 4

    .line 217
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 218
    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 220
    :cond_a
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    if-eqz v0, :cond_13

    .line 221
    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 223
    :cond_13
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_1a

    .line 224
    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->end()V

    .line 226
    :cond_1a
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    if-eqz v0, :cond_23

    .line 227
    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 229
    :cond_23
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mBlink:Lmiuix/animation/IBlinkStyle;

    if-eqz v0, :cond_2c

    .line 230
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .registers 3

    .line 384
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 5

    .line 324
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lmiuix/animation/FolmeStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public getTarget()Lmiuix/animation/IAnimTarget;
    .registers 3

    .line 236
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hover()Lmiuix/animation/IHoverStyle;
    .registers 3

    .line 241
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    if-nez v0, :cond_d

    .line 242
    new-instance v0, Lmiuix/animation/controller/FolmeHover;

    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeHover;-><init>([Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    .line 244
    :cond_d
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mHover:Lmiuix/animation/IHoverStyle;

    return-object v0
.end method

.method public varargs predictDuration([Ljava/lang/Object;)J
    .registers 4

    .line 344
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->predictDuration([Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 294
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs resetTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 299
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->resetTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 334
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public setFlags(J)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 359
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 284
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 289
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 329
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 364
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public state()Lmiuix/animation/IStateStyle;
    .registers 2

    .line 268
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    if-nez v0, :cond_c

    .line 269
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    invoke-static {v0}, Lmiuix/animation/controller/StateComposer;->composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    .line 271
    :cond_c
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mState:Lmiuix/animation/IStateStyle;

    return-object v0
.end method

.method public varargs then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 314
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs then([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 349
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->then([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 4

    .line 309
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 339
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 304
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs toWithInit([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .registers 3

    .line 319
    invoke-virtual {p0}, Lmiuix/animation/Folme$FolmeImpl;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/FolmeStyle;->toWithInit([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lmiuix/animation/ITouchStyle;
    .registers 3

    .line 249
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    if-nez v0, :cond_15

    .line 250
    new-instance v0, Lmiuix/animation/controller/FolmeTouch;

    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeTouch;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 251
    new-instance v1, Lmiuix/animation/controller/FolmeFont;

    invoke-direct {v1}, Lmiuix/animation/controller/FolmeFont;-><init>()V

    .line 252
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/FolmeTouch;->setFontStyle(Lmiuix/animation/controller/FolmeFont;)V

    .line 253
    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    .line 255
    :cond_15
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mTouch:Lmiuix/animation/ITouchStyle;

    return-object v0
.end method

.method public visible()Lmiuix/animation/IVisibleStyle;
    .registers 3

    .line 260
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    if-nez v0, :cond_d

    .line 261
    new-instance v0, Lmiuix/animation/controller/FolmeVisible;

    iget-object v1, p0, Lmiuix/animation/Folme$FolmeImpl;->mTargets:[Lmiuix/animation/IAnimTarget;

    invoke-direct {v0, v1}, Lmiuix/animation/controller/FolmeVisible;-><init>([Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    .line 263
    :cond_d
    iget-object v0, p0, Lmiuix/animation/Folme$FolmeImpl;->mVisible:Lmiuix/animation/IVisibleStyle;

    return-object v0
.end method
