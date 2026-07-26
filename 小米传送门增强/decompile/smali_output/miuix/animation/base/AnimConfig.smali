.class public Lmiuix/animation/base/AnimConfig;
.super Ljava/lang/Object;
.source "AnimConfig.java"

# interfaces
.implements Lmiuix/animation/internal/DesignReview;


# static fields
.field public static final FLAG_AUTO_INIT:J = 0x8L

.field public static final FLAG_DELTA:J = 0x1L

.field public static final FLAG_INIT:J = 0x2L

.field public static final FLAG_INT:J = 0x4L

.field public static final TINT_ALPHA:I = 0x0

.field public static final TINT_AUTO:I = -0x1

.field public static final TINT_OPAQUE:I = 0x1

.field public static final TINT_REGION_USER_DEFINED:I = 0x3

.field public static final sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;


# instance fields
.field public delay:J

.field public ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public flags:J

.field public fromSpeed:F

.field public final listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lmiuix/animation/listener/TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusPropertyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mObserverLooper:Landroid/os/Looper;

.field private final mSpecialNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/base/AnimSpecialConfig;",
            ">;"
        }
    .end annotation
.end field

.field public minDuration:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startImmediately:Z

.field public tag:Ljava/lang/Object;

.field public tintMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, 0x3f733333    # 0.95f

    const v1, 0x3eb33333    # 0.35f

    .line 32
    invoke-static {v0, v1}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    sput-object v0, Lmiuix/animation/base/AnimConfig;->sDefEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lmiuix/animation/base/AnimConfig;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/base/AnimConfig;)V
    .registers 3

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lmiuix/animation/base/AnimConfig;-><init>(Z)V

    .line 93
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 50
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lmiuix/animation/base/AnimConfig;->startImmediately:Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    .line 57
    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->mObserverLooper:Landroid/os/Looper;

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    if-nez p1, :cond_24

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 84
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    goto :goto_28

    .line 86
    :cond_24
    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    .line 87
    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    :goto_28
    return-void
.end method

.method private queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 4

    .line 352
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    if-nez v0, :cond_16

    if-eqz p2, :cond_16

    .line 354
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 355
    iget-object p2, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method private queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 322
    :cond_4
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addFocusPropertyForComplete(Lmiuix/animation/base/AnimConfig;)V
    .registers 3

    .line 212
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    if-eqz v0, :cond_16

    .line 213
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    if-nez v0, :cond_f

    .line 214
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    .line 216
    :cond_f
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_16
    return-void
.end method

.method public varargs addFocusPropertyForComplete([Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_19

    .line 188
    array-length v0, p1

    if-lez v0, :cond_19

    .line 189
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    .line 192
    :cond_10
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_19
    return-void
.end method

.method public varargs addFocusPropertyForComplete([Lmiuix/animation/property/FloatProperty;)V
    .registers 5

    if-eqz p1, :cond_22

    .line 197
    array-length v0, p1

    if-lez v0, :cond_22

    .line 198
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    :cond_10
    const/4 v0, 0x0

    .line 201
    :goto_11
    array-length v1, p1

    if-ge v0, v1, :cond_22

    .line 202
    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    return-void
.end method

.method public varargs addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 178
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSpecialConfigs(Lmiuix/animation/base/AnimConfig;)V
    .registers 3

    .line 221
    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    if-eqz p1, :cond_9

    .line 222
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method public clear()V
    .registers 5

    const-wide/16 v0, 0x0

    .line 116
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    const/4 v2, 0x0

    .line 117
    iput-object v2, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 118
    iget-object v3, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 119
    iput-object v2, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 120
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 121
    iput v3, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    const/4 v3, 0x1

    .line 122
    iput-boolean v3, p0, Lmiuix/animation/base/AnimConfig;->startImmediately:Z

    .line 123
    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    const/4 v0, -0x1

    .line 124
    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 125
    iput-object v2, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    .line 126
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    if-eqz v0, :cond_26

    .line 127
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_26
    return-void
.end method

.method public clearFocusPropertyForComplete()V
    .registers 2

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    return-void
.end method

.method public copy(Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    if-eqz p1, :cond_3c

    if-eq p1, p0, :cond_3c

    .line 98
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 99
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 100
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    iget-object v1, p1, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v0, p1, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    .line 102
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->flags:J

    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 103
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    iput v0, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    .line 104
    iget-boolean v0, p1, Lmiuix/animation/base/AnimConfig;->startImmediately:Z

    iput-boolean v0, p0, Lmiuix/animation/base/AnimConfig;->startImmediately:Z

    .line 105
    iget-wide v0, p1, Lmiuix/animation/base/AnimConfig;->minDuration:J

    iput-wide v0, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    .line 106
    iget v0, p1, Lmiuix/animation/base/AnimConfig;->tintMode:I

    iput v0, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    .line 107
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->addFocusPropertyForComplete(Lmiuix/animation/base/AnimConfig;)V

    .line 108
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    if-eqz v0, :cond_3c

    .line 109
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    iget-object p1, p1, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3c
    return-void
.end method

.method public enableStartImmediately(Z)Lmiuix/animation/base/AnimConfig;
    .registers 2

    .line 173
    iput-boolean p1, p0, Lmiuix/animation/base/AnimConfig;->startImmediately:Z

    return-object p0
.end method

.method public getDesignInfo()Ljava/lang/String;
    .registers 11

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ease"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    const/4 v5, 0x0

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Lmiuix/animation/utils/EaseManager$EaseStyle;->getDesignInfo()Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    :cond_23
    move-object v4, v5

    :goto_24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget-wide v6, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    const-string v6, ", "

    if-lez v4, :cond_44

    .line 384
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "delay"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 387
    :cond_44
    iget-object v4, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9c

    .line 388
    iget-object v4, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_56
    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v5, :cond_6f

    .line 390
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    :cond_6f
    iget-object v8, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiuix/animation/base/AnimSpecialConfig;

    if-eqz v8, :cond_56

    .line 393
    iget-object v9, v8, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v9, :cond_56

    .line 394
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\":"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lmiuix/animation/base/AnimSpecialConfig;->getDesignInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 398
    :cond_9c
    const-string v4, "}"

    if-eqz v5, :cond_d9

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d9

    .line 399
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "special"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 402
    :goto_b8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d6

    .line 403
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_d0

    goto :goto_d6

    .line 407
    :cond_d0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    .line 409
    :cond_d6
    :goto_d6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_d9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusPropertyCount()I
    .registers 2

    .line 300
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 303
    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getObserverLooper()Landroid/os/Looper;
    .registers 2

    .line 231
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mObserverLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 3

    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method

.method public getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 3

    const/4 v0, 0x0

    .line 307
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method

.method public getSpecialSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z
    .registers 3

    .line 293
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 296
    :cond_6
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public queryAndCreateSpecial(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 3

    const/4 v0, 0x1

    .line 315
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method

.method public queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;
    .registers 3

    const/4 v0, 0x1

    .line 311
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 235
    array-length v0, p1

    if-nez v0, :cond_9

    .line 236
    iget-object p1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    goto :goto_12

    .line 238
    :cond_9
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    :goto_12
    return-object p0
.end method

.method public setDelay(J)Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 163
    iput-wide p1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    return-object p0
.end method

.method public varargs setEase(I[F)Lmiuix/animation/base/AnimConfig;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    invoke-static {p1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 152
    instance-of v1, v0, Lmiuix/animation/utils/EaseManager$DurationMotionEaseStyle;

    if-eqz v1, :cond_48

    if-eqz p2, :cond_f

    array-length p2, p2

    if-nez p2, :cond_48

    :cond_f
    const/4 p2, 0x1

    .line 154
    new-array p2, p2, [D

    const-wide v1, 0x4072c00000000000L    # 300.0

    const/4 v3, 0x0

    aput-wide v1, p2, v3

    invoke-virtual {v0, p2}, Lmiuix/animation/utils/EaseManager$EaseStyle;->setFactors([D)V

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Folme use warning!! You can\'t setEase "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {p1}, Lmiuix/animation/FolmeEase;->getStyleName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " by style without factors, trace:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 157
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    const-string p2, "miuix_anim"

    invoke-static {p2, p1}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    return-object p0
.end method

.method public setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;
    .registers 2

    .line 141
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    return-object p0
.end method

.method public setFromSpeed(F)Lmiuix/animation/base/AnimConfig;
    .registers 2

    .line 168
    iput p1, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    return-object p0
.end method

.method public setMinDuration(J)Lmiuix/animation/base/AnimConfig;
    .registers 3

    .line 249
    iput-wide p1, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    return-object p0
.end method

.method public setObserverLooper(Landroid/os/Looper;)V
    .registers 2

    .line 227
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->mObserverLooper:Landroid/os/Looper;

    return-void
.end method

.method public varargs setSpecial(Ljava/lang/String;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 254
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;
    .registers 4

    if-eqz p2, :cond_8

    .line 340
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 342
    :cond_8
    iget-object p2, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-object p0
.end method

.method public varargs setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 13

    const/4 v0, 0x1

    .line 262
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Ljava/lang/String;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 263
    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;
    .registers 10

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 258
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 268
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;
    .registers 4

    if-eqz p2, :cond_c

    .line 331
    iget-object v0, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 333
    :cond_c
    iget-object p2, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;
    .registers 13

    const/4 v0, 0x1

    .line 277
    invoke-direct {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->queryAndCreateSpecial(Lmiuix/animation/property/FloatProperty;Z)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 278
    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V

    return-object p0
.end method

.method public varargs setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;
    .registers 10

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 272
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method varargs setSpecial(Lmiuix/animation/base/AnimSpecialConfig;Lmiuix/animation/utils/EaseManager$EaseStyle;J[F)V
    .registers 8

    if-eqz p2, :cond_5

    .line 284
    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_e

    .line 287
    invoke-virtual {p1, p3, p4}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 289
    :cond_e
    array-length p2, p5

    if-lez p2, :cond_17

    const/4 p2, 0x0

    aget p2, p5, p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    :cond_17
    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lmiuix/animation/base/AnimConfig;
    .registers 2

    .line 244
    iput-object p1, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setTintMode(I)Lmiuix/animation/base/AnimConfig;
    .registers 2

    .line 183
    iput p1, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimConfig@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "{\n\t\tdelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->delay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", minDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->minDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\t\tfromSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/base/AnimConfig;->fromSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startImmediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/animation/base/AnimConfig;->startImmediately:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tintMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/animation/base/AnimConfig;->tintMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\t\tflags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", focusP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->mFocusPropertyNames:Ljava/util/Set;

    .line 372
    invoke-static {v1}, Lmiuix/animation/utils/CommonUtils;->setToString(Ljava/util/Set;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\t\tspecialNameMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/base/AnimConfig;->mSpecialNameMap:Ljava/util/Map;

    const-string v2, "    "

    .line 373
    invoke-static {v1, v2}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
