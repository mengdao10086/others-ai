.class public Lmiuix/animation/controller/FolmeVisible;
.super Lmiuix/animation/controller/FolmeBase;
.source "FolmeVisible.java"

# interfaces
.implements Lmiuix/animation/IVisibleStyle;


# static fields
.field private static final ALIAS_VISIBLE_HIDE:Ljava/lang/String; = "visibleHide"

.field private static final ALIAS_VISIBLE_SHOW:Ljava/lang/String; = "visibleShow"


# instance fields
.field private final mDefConfig:Lmiuix/animation/base/AnimConfig;

.field private mHasMove:Z

.field private mHasScale:Z

.field private mSetBound:Z


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .registers 6

    .line 40
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 30
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-instance v0, Lmiuix/animation/controller/FolmeVisible$1;

    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeVisible$1;-><init>(Lmiuix/animation/controller/FolmeVisible;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lmiuix/animation/listener/TransitionListener;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 41
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    new-instance v0, Lmiuix/animation/controller/AnimState;

    sget-object v2, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    const-string v3, "visibleShow"

    invoke-direct {v0, v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->addState(Lmiuix/animation/controller/AnimState;)V

    .line 42
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    new-instance v0, Lmiuix/animation/controller/AnimState;

    sget-object v2, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    const-string v3, "visibleHide"

    invoke-direct {v0, v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->addState(Lmiuix/animation/controller/AnimState;)V

    .line 43
    invoke-virtual {p0, v1}, Lmiuix/animation/controller/FolmeVisible;->useAutoAlpha(Z)Lmiuix/animation/IVisibleStyle;

    return-void
.end method

.method static synthetic access$000(Lmiuix/animation/controller/FolmeVisible;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lmiuix/animation/controller/FolmeVisible;->mSetBound:Z

    return p0
.end method

.method private varargs getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .registers 8

    .line 147
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    if-nez v0, :cond_22

    iget-boolean v1, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    if-nez v1, :cond_22

    .line 148
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    if-ne p1, v1, :cond_15

    const-wide/16 v1, 0x12c

    .line 149
    invoke-static {v1, v2}, Lmiuix/animation/FolmeEase;->sinInOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_1e

    :cond_15
    const/high16 p1, 0x3f800000    # 1.0f

    const v1, 0x3e19999a    # 0.15f

    .line 150
    invoke-static {p1, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    .line 148
    :goto_1e
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    goto :goto_72

    :cond_22
    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f400000    # 0.75f

    if-eqz v0, :cond_46

    .line 152
    iget-boolean v3, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    if-nez v3, :cond_46

    .line 153
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    if-ne p1, v3, :cond_3b

    const p1, 0x3f19999a    # 0.6f

    .line 154
    invoke-static {p1, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_42

    :cond_3b
    const p1, 0x3e4ccccd    # 0.2f

    .line 155
    invoke-static {v2, p1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    .line 153
    :goto_42
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    goto :goto_72

    :cond_46
    const/high16 v3, 0x3e800000    # 0.25f

    if-nez v0, :cond_5d

    .line 158
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    if-ne p1, v4, :cond_55

    .line 159
    invoke-static {v2, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_59

    .line 160
    :cond_55
    invoke-static {v2, v3}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    .line 158
    :goto_59
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    goto :goto_72

    .line 163
    :cond_5d
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    if-ne p1, v4, :cond_6b

    const p1, 0x3f266666    # 0.65f

    .line 164
    invoke-static {p1, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    goto :goto_6f

    .line 165
    :cond_6b
    invoke-static {v2, v3}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1

    .line 163
    :goto_6f
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 168
    :goto_72
    iget-object p1, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmiuix/animation/base/AnimConfig;

    return-object p1
.end method

.method private varargs getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;
    .registers 3

    .line 99
    array-length v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_9

    :cond_7
    sget-object p1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    :goto_9
    return-object p1
.end method


# virtual methods
.method public clean()V
    .registers 2

    .line 48
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    return-void
.end method

.method public varargs hide([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 131
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-direct {p0, v1, p1}, Lmiuix/animation/controller/FolmeVisible;->getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public varargs setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .registers 6

    .line 85
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    move-result-object p2

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p1

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setBound(IIII)Lmiuix/animation/IVisibleStyle;
    .registers 9

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mSetBound:Z

    .line 55
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    int-to-double v2, p1

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    int-to-double v1, p2

    .line 57
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    int-to-double v0, p3

    .line 58
    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    int-to-double p3, p4

    .line 59
    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setFlags(J)Lmiuix/animation/IVisibleStyle;
    .registers 4

    .line 79
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {v0, p1, p2}, Lmiuix/animation/FolmeStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method public setHide()Lmiuix/animation/IVisibleStyle;
    .registers 3

    .line 142
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method public setMove(II)Lmiuix/animation/IVisibleStyle;
    .registers 4

    .line 104
    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    filled-new-array {v0}, [Lmiuix/animation/IVisibleStyle$VisibleType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/animation/controller/FolmeVisible;->setMove(II[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setMove(II[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gtz v2, :cond_11

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lez v2, :cond_f

    goto :goto_11

    :cond_f
    move v2, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v2, v0

    :goto_12
    iput-boolean v2, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    if-eqz v2, :cond_35

    .line 111
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    move-result-object p3

    invoke-interface {v2, p3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object v2, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v3, 0x1

    new-array v5, v0, [J

    aput-wide v3, v5, v1

    .line 112
    invoke-virtual {p3, v2, p1, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p3, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    new-array v0, v0, [J

    aput-wide v3, v0, v1

    .line 113
    invoke-virtual {p1, p3, p2, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    :cond_35
    return-object p0
.end method

.method public varargs setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .registers 6

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    .line 92
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    move-result-object p2

    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p1

    .line 93
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 94
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-object p0
.end method

.method public setShow()Lmiuix/animation/IVisibleStyle;
    .registers 3

    .line 136
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method public setShowDelay(J)Lmiuix/animation/IVisibleStyle;
    .registers 5

    .line 120
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-wide p1, v0, Lmiuix/animation/base/AnimConfig;->delay:J

    return-object p0
.end method

.method public varargs show([Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 126
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-direct {p0, v1, p1}, Lmiuix/animation/controller/FolmeVisible;->getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public useAutoAlpha(Z)Lmiuix/animation/IVisibleStyle;
    .registers 9

    .line 65
    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 66
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_29

    .line 68
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {p1, v6}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v0, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 69
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {p1, v4}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    goto :goto_47

    .line 71
    :cond_29
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {p1, v6}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 72
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    invoke-interface {p1, v4}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :goto_47
    return-object p0
.end method
