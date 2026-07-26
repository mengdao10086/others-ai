.class public Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider33;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;,
        Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;
    }
.end annotation


# static fields
.field private static final SUPPORT_MI_MOTION:Z

.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackDispatcher:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

.field private mCurrentFrameTime:J

.field private final mDelayedCallbackStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mListDirty:Z

.field private mProvider:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    const-string v0, "ro.display.mimotion"

    const-string v1, "false"

    invoke-static {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/LiteSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->SUPPORT_MI_MOTION:Z

    .line 82
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;)V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    const-wide/16 v0, 0x0

    .line 95
    iput-wide v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCurrentFrameTime:J

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    return-void
.end method

.method static synthetic access$000(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;J)V
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->doAnimationFrame(J)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;)Ljava/util/ArrayList;
    .registers 1

    .line 46
    iget-object p0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 46
    sget-boolean v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->SUPPORT_MI_MOTION:Z

    return v0
.end method

.method private cleanUpList()V
    .registers 3

    .line 227
    iget-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    if-eqz v0, :cond_21

    .line 228
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1e

    .line 229
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 230
    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_21
    return-void
.end method

.method private doAnimationFrame(J)V
    .registers 8

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 196
    :goto_5
    iget-object v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 197
    iget-object v3, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v3, :cond_18

    goto :goto_21

    .line 201
    :cond_18
    invoke-direct {p0, v3, v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->isCallbackDue(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 202
    invoke-interface {v3, p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 205
    :cond_24
    invoke-direct {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->cleanUpList()V

    return-void
.end method

.method public static getInstance()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;
    .registers 2

    .line 99
    sget-object v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    .line 100
    new-instance v1, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    invoke-direct {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 102
    :cond_10
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;

    return-object v0
.end method

.method private isCallbackDue(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .registers 8

    .line 215
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 219
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1a

    .line 220
    iget-object p2, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addAnimationFrameCallback(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;J)V
    .registers 7

    .line 156
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 157
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 159
    :cond_f
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 160
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_30

    .line 164
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-void
.end method

.method public getFrameDeltaNanos()J
    .registers 3

    .line 238
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameDeltaNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFromFramePeriodNsecs()Z
    .registers 2

    .line 242
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFromFramePeriodNsecs()Z

    move-result v0

    return v0
.end method

.method public getProvider()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .registers 3

    .line 136
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_1d

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_14

    .line 138
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider33;

    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider33;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_1d

    .line 140
    :cond_14
    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;

    iget-object v1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mCallbackDispatcher:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;

    invoke-direct {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;)V

    iput-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 145
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mProvider:Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    return-object v0
.end method

.method isCurrentThread()Z
    .registers 2

    .line 191
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->isCurrentThread()Z

    move-result v0

    return v0
.end method

.method public postVsyncCallback()V
    .registers 2

    .line 149
    invoke-virtual {p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->getProvider()Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->postVsyncCallback()V

    return-void
.end method

.method public removeCallback(Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;)V
    .registers 4

    .line 172
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_16

    .line 175
    iget-object v0, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lmiuix/overscroller/internal/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    :cond_16
    return-void
.end method
