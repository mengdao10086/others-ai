.class Lmiuix/animation/internal/AnimScheduler;
.super Ljava/lang/Object;
.source "AnimScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/AnimScheduler$SetToInfo;
    }
.end annotation


# static fields
.field static final MSG_CLEAN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MSG_RUN:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MSG_SET_TO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MSG_TO:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MSG_UPDATE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public handler:Landroid/os/Handler;

.field private final mAnimTaskForRun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mAnimTaskSchedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mEngine:Lmiuix/animation/internal/FolmeEngine;

.field private volatile mEngineStart:Z

.field private mFrameCount:I

.field protected mHasTaskStackRunning:Z

.field private final mOneShotTargets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/internal/AnimOperationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreDelTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPrepareTransMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAnimCount:I

.field protected final mRunningTarget:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mStart:Z

.field private final mTaskStackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskStackSplitInfo:[I

.field private final mTempSetupInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempTargetRunningInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalTNanos:J

.field private final mTransListForRun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final runnerThreadId:J

.field public final runningStackCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$0SCYbcjdY9Y9A77s-LQnkaCYVAo(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->lambda$executeTo$1(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$307cO28dnnPdJr7VAhx0rjBffZg(Lmiuix/animation/internal/AnimScheduler;JJ)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/animation/internal/AnimScheduler;->lambda$executeDoAnimOnFrame$2(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$h7OMQW_7emB09emzcK8cujo07xI(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->lambda$executeNotifyTransitionBegin$3(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iD8qrDzYnCBe_XgVvp-3lwrEI6U(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->lambda$executeTo$0(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method constructor <init>(Lmiuix/animation/internal/FolmeEngine;)V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mAnimTaskSchedMap:Ljava/util/HashMap;

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mOneShotTargets:Ljava/util/Set;

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    .line 49
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mOpMap:Ljava/util/Map;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTempSetupInfoList:Ljava/util/List;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mPreDelTargetList:Ljava/util/List;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTransListForRun:Ljava/util/List;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mAnimTaskForRun:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTempTargetRunningInfo:Ljava/util/List;

    .line 60
    iput-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->runningStackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    .line 70
    iput v0, p0, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    const/4 v0, 0x2

    .line 75
    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackSplitInfo:[I

    .line 78
    iput-object p1, p0, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/animation/internal/AnimScheduler;->runnerThreadId:J

    return-void
.end method

.method private addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmiuix/animation/utils/LinkNode;",
            ">(",
            "Lmiuix/animation/IAnimTarget;",
            "TT;",
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "TT;>;)V"
        }
    .end annotation

    .line 927
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/LinkNode;

    if-nez v0, :cond_c

    .line 931
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 936
    :cond_c
    invoke-virtual {v0, p2}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    :goto_f
    return-void
.end method

.method private assignAnimTaskToStack(Ljava/util/List;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;II)V"
        }
    .end annotation

    .line 976
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/AnimTask;

    .line 977
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 979
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object v1, v0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    if-eqz v1, :cond_4

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning!! first task of first stack has next task!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " next:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miuix_anim"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 982
    iput-object v1, v0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    goto :goto_4

    .line 986
    :cond_45
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_8c

    .line 987
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/AnimTask;

    .line 988
    invoke-static {v1}, Lmiuix/animation/internal/AnimTask;->getAnimCountOfTaskStack(Lmiuix/animation/internal/AnimTask;)I

    move-result v2

    .line 989
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++ assignAnimTaskToStack-> firstStackCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    :cond_77
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0xfa0

    if-le v2, v3, :cond_87

    .line 993
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 995
    :cond_87
    invoke-virtual {v1, v0}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    goto/16 :goto_4

    .line 998
    :cond_8c
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->getMinAnimCountOfOtherStack()Landroid/util/Pair;

    move-result-object v1

    .line 999
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 1000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++ assignAnimTaskToStack-> minAnimCountStackInfo.min "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    :cond_ae
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lmiuix/animation/internal/AnimTask;

    .line 1003
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1004
    iget-object v4, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, p3, -0x1

    if-gt v4, v2, :cond_d2

    .line 1005
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, p2, :cond_d2

    .line 1008
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1012
    :cond_d2
    invoke-virtual {v3, v0}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    goto/16 :goto_4

    :cond_d7
    return-void
.end method

.method private static changeRunningPropertyOp(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;)V
    .registers 13

    .line 878
    iget-object v0, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 879
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3c

    .line 881
    iget-object v4, p1, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    if-eqz v4, :cond_1b

    iget-object v5, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_1b

    :cond_19
    move v4, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v4, v3

    .line 882
    :goto_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " |---- before step1 changeRunningPropertyOp doOp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " update.property="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    :cond_3c
    invoke-static {v0}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    move-result v4

    if-eqz v4, :cond_10f

    iget-byte v4, p1, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    if-eqz v4, :cond_10f

    iget-object v4, p1, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    if-eqz v4, :cond_52

    iget-object v5, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 888
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10f

    :cond_52
    if-eqz v1, :cond_82

    .line 891
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " |---- step1 changeRunningPropertyOp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'s op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to opInfo.op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p1, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    :cond_82
    iget v2, p1, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    add-int/2addr v2, v3

    iput v2, p1, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 895
    iget-byte v2, p1, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    const/4 v4, 0x3

    if-ne v2, v4, :cond_ac

    .line 896
    iget v2, p2, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v2, v3

    iput v2, p2, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 897
    iget v2, p3, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v2, v3

    iput v2, p3, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 898
    invoke-virtual {p0, p4}, Lmiuix/animation/listener/UpdateInfo;->skipToTargetValue(Lmiuix/animation/IAnimTarget;)V

    .line 899
    iget-object p4, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p5, p4}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result p4

    if-eqz p4, :cond_cb

    .line 900
    iget p4, p2, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    add-int/2addr p4, v3

    iput p4, p2, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    .line 901
    iget p4, p3, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    add-int/2addr p4, v3

    iput p4, p3, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    goto :goto_cb

    :cond_ac
    const/4 p4, 0x4

    if-ne v2, p4, :cond_cb

    .line 904
    iget p4, p2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr p4, v3

    iput p4, p2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 905
    iget p4, p3, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr p4, v3

    iput p4, p3, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 906
    iget-object p4, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p5, p4}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result p4

    if-eqz p4, :cond_cb

    .line 907
    iget p4, p2, Lmiuix/animation/internal/AnimStats;->focusCount:I

    sub-int/2addr p4, v3

    iput p4, p2, Lmiuix/animation/internal/AnimStats;->focusCount:I

    .line 908
    iget p4, p3, Lmiuix/animation/internal/AnimStats;->focusCount:I

    sub-int/2addr p4, v3

    iput p4, p3, Lmiuix/animation/internal/AnimStats;->focusCount:I

    .line 911
    :cond_cb
    :goto_cb
    iget-byte p4, p1, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    invoke-virtual {p0, p4}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    .line 912
    invoke-static {p2, p3, p0, v0}, Lmiuix/animation/internal/TransitionInfo;->decreasePrepareCountForDelayAnim(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V

    if-eqz v1, :cond_10f

    .line 917
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "----- changeRunningPropertyOp finish update.animInfo.op="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "opInfo="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "task-stats="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10f
    return-void
.end method

.method private doOperationForTarget(Lmiuix/animation/internal/AnimOperationInfo;)V
    .registers 20

    .line 119
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p1

    .line 121
    iget-object v3, v2, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 122
    iget-object v4, v3, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v4, v1}, Lmiuix/animation/internal/AnimManager;->addToTransitionInfoList(Ljava/util/List;)V

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_151

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/internal/TransitionInfo;

    const/4 v5, 0x0

    if-eqz v0, :cond_3b

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- doOperationForTarget -> update transInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    const/4 v6, 0x0

    if-eqz v2, :cond_47

    .line 129
    iget-wide v7, v4, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    iget-wide v9, v2, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_47

    move-object v2, v6

    .line 132
    :cond_47
    invoke-virtual {v4}, Lmiuix/animation/internal/TransitionInfo;->getInfoAnimStats()Lmiuix/animation/internal/AnimStats;

    move-result-object v7

    .line 133
    invoke-virtual {v7}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 134
    iget-object v8, v4, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    move-object/from16 v9, p0

    invoke-direct {v9, v4, v2, v7, v8}, Lmiuix/animation/internal/AnimScheduler;->doOperationForUpdateInfoList(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;Ljava/util/List;)V

    goto :goto_5b

    :cond_59
    move-object/from16 v9, p0

    .line 136
    :goto_5b
    invoke-virtual {v7}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v8

    if-nez v8, :cond_ac

    const/4 v8, 0x3

    if-eqz v2, :cond_6a

    .line 137
    iget-byte v10, v2, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    const/4 v11, 0x4

    if-ne v10, v11, :cond_6a

    goto :goto_6b

    :cond_6a
    move v11, v8

    .line 138
    :goto_6b
    iget v10, v7, Lmiuix/animation/internal/AnimStats;->focusCount:I

    if-lez v10, :cond_74

    iget v12, v7, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    if-ne v10, v12, :cond_74

    move v11, v8

    :cond_74
    if-eqz v0, :cond_94

    .line 142
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--- notifyTransitionEndOrCancel from doOperationForTarget msg="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v10, v12}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_94
    if-ne v11, v8, :cond_a6

    if-eqz v0, :cond_9f

    .line 146
    const-string v8, "--- notifyTransitionUpdate before notifyTransitionEnd from doOperationForTarget"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_9f
    iget-object v5, v3, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v8, v4, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-virtual {v5, v4, v8}, Lmiuix/animation/internal/AnimManager;->notifyTransitionUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V

    .line 151
    :cond_a6
    iget-object v5, v3, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    const/4 v8, 0x2

    invoke-virtual {v5, v4, v8, v11}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEndOrCancel(Lmiuix/animation/internal/TransitionInfo;II)V

    :cond_ac
    if-eqz v0, :cond_16

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-- doOperationForTarget , id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "key="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "targetOpInfo="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "info.startTime="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v4, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "targetOpInfo.time="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_10a

    .line 158
    iget-wide v14, v2, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :cond_10a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statsFromInfo.isRunning="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v7}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statsFromInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v4

    .line 154
    invoke-static {v5, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_151
    move-object/from16 v9, p0

    return-void
.end method

.method private doOperationForUpdateInfoList(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;Ljava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/internal/TransitionInfo;",
            "Lmiuix/animation/internal/AnimOperationInfo;",
            "Lmiuix/animation/internal/AnimStats;",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 169
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v1

    .line 170
    iget-byte v2, v0, Lmiuix/animation/internal/TransitionInfo;->state:B

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    move v2, v4

    .line 171
    :goto_f
    iget-object v3, v0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/animation/internal/AnimTask;

    .line 172
    iget v6, v5, Lmiuix/animation/internal/AnimTask;->startPos:I

    invoke-virtual {v5}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v7

    add-int/2addr v7, v6

    :goto_28
    if-ge v6, v7, :cond_8a

    move-object/from16 v8, p4

    .line 173
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lmiuix/animation/listener/UpdateInfo;

    if-eqz v10, :cond_87

    .line 175
    iget-object v9, v5, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    move-object/from16 v15, p3

    invoke-static {v10, v9, v15}, Lmiuix/animation/internal/AnimScheduler;->handleSetToPropertyOnUpdate(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;)Z

    move-result v9

    if-eqz v1, :cond_59

    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doSetTo "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11, v10}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, " |---- step0"

    invoke-static {v12, v11}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_59
    if-eqz p2, :cond_87

    if-eqz v2, :cond_87

    if-nez v9, :cond_87

    .line 182
    iget-object v12, v5, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget-object v14, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v9, v0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object v15, v9

    invoke-static/range {v10 .. v15}, Lmiuix/animation/internal/AnimScheduler;->changeRunningPropertyOp(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;)V

    if-eqz v1, :cond_87

    .line 184
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " |---- step2 changeRunningPropertyOp finish taskInfo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_8a
    move-object/from16 v8, p4

    goto :goto_15

    :cond_8d
    return-void
.end method

.method private endEngine()V
    .registers 8

    .line 619
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- endEngine Scheduler@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    :cond_21
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    if-eqz v0, :cond_2f

    .line 625
    const-string v2, "-- endEngine after mRunningTarget.clear()"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    :cond_2f
    iget-boolean v2, p0, Lmiuix/animation/internal/AnimScheduler;->mStart:Z

    if-eqz v2, :cond_8c

    if-eqz v0, :cond_7d

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frames="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total_time_ms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduler@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 629
    const-string v2, "-- endEngine"

    invoke-static {v2, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    :cond_7d
    iput-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mStart:Z

    .line 636
    iput-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mEngineStart:Z

    const-wide/16 v2, 0x0

    .line 637
    iput-wide v2, p0, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    .line 638
    iput v1, p0, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    .line 639
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    invoke-virtual {v0}, Lmiuix/animation/internal/FolmeEngine;->end()V

    :cond_8c
    return-void
.end method

.method private getMinAnimCountOfOtherStack()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lmiuix/animation/internal/AnimTask;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1025
    :goto_5
    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 1026
    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/AnimTask;

    .line 1027
    invoke-static {v3}, Lmiuix/animation/internal/AnimTask;->getAnimCountOfTaskStack(Lmiuix/animation/internal/AnimTask;)I

    move-result v4

    if-ge v4, v0, :cond_1d

    move-object v1, v3

    move v0, v4

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1033
    :cond_20
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static handleSetToPropertyOnUpdate(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;)Z
    .registers 11

    .line 841
    invoke-static {p0}, Lmiuix/animation/internal/AnimValueUtils;->handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 847
    :cond_8
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    .line 848
    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-static {v1}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_da

    .line 849
    const-string v1, "op="

    const-string v3, "id="

    if-eqz v0, :cond_5d

    .line 850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----- setToPropertyOnUpdate start updateInfo p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v7, v7, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6, p0}, [Ljava/lang/Object;

    move-result-object v5

    .line 850
    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    :cond_5d
    iget v4, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr v4, v2

    iput v4, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 856
    iget v4, p2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr v4, v2

    iput v4, p2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    const/4 v4, 0x4

    .line 857
    invoke-virtual {p0, v4}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    .line 858
    iget-object v4, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v4, v4, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-static {p1, p2, p0, v4}, Lmiuix/animation/internal/TransitionInfo;->decreasePrepareCountForDelayAnim(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V

    if-eqz v0, :cond_da

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----- setToPropertyOnUpdate finish updateInfo p="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task-stats.cancelCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info-stats.cancelCount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v3, v1, p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 862
    invoke-static {v0, p0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_da
    return v2
.end method

.method private synthetic lambda$executeDoAnimOnFrame$2(JJ)V
    .registers 5

    .line 276
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/animation/internal/AnimScheduler;->doAnimationFrame(JJ)V

    return-void
.end method

.method private synthetic lambda$executeNotifyTransitionBegin$3(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 2

    .line 295
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method private synthetic lambda$executeTo$0(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 2

    .line 250
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->to(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method private synthetic lambda$executeTo$1(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 2

    .line 260
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->to(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method private prepareWaitTransAfterUpdated(Lmiuix/animation/IAnimTarget;)Z
    .registers 7

    .line 946
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- update->prepareWaitTransAfterUpdated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    :cond_1d
    iget-object v2, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v2, v2, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    if-eqz v2, :cond_52

    .line 952
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lmiuix/animation/internal/AnimManager;->prepareAnim(Lmiuix/animation/internal/TransitionInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 953
    iget-object p1, v2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v4, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    invoke-direct {p0, p1, v2, v4}, Lmiuix/animation/internal/AnimScheduler;->addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V

    if-eqz v0, :cond_51

    .line 955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--- update->prepareWaitTransAfterUpdated return true "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_51
    return v3

    :cond_52
    if-eqz v0, :cond_6a

    .line 961
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "--- update->prepareWaitTransAfterUpdated return false "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6a
    return v1
.end method

.method private releaseIdleOneShotTargetAfterRun()V
    .registers 7

    .line 644
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 646
    const-string v2, "--- releaseIdleOneShotTargetAfterRun"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    :cond_e
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    invoke-virtual {v2}, Lmiuix/animation/internal/FolmeEngine;->getOneShotTargets()Ljava/util/Set;

    move-result-object v2

    .line 650
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    return-void

    .line 653
    :cond_1b
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/IAnimTarget;

    .line 654
    invoke-virtual {v4}, Lmiuix/animation/IAnimTarget;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_20

    if-nez v3, :cond_39

    .line 656
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 658
    :cond_39
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3d
    if-eqz v3, :cond_7a

    .line 662
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/IAnimTarget;

    if-eqz v0, :cond_67

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " |--- clean idle oneshot target "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_67
    const-wide/16 v4, 0x1

    .line 666
    invoke-virtual {v3, v4, v5}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 667
    invoke-virtual {p0, v3}, Lmiuix/animation/internal/AnimScheduler;->removeFromOneShot(Lmiuix/animation/IAnimTarget;)V

    .line 669
    :cond_72
    filled-new-array {v3}, [Lmiuix/animation/IAnimTarget;

    move-result-object v3

    invoke-static {v3}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_43

    :cond_7a
    return-void
.end method

.method private setup()V
    .registers 6

    .line 383
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- setup prepareTrans.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    .line 385
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " runningTarget.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    .line 386
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Scheduler@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 384
    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :cond_3d
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    .line 395
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- setupAllInfoToTarget-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    :cond_6f
    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    iget-object v4, v2, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mTempSetupInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 401
    :cond_7c
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 405
    :goto_81
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mTempSetupInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_97

    .line 406
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mTempSetupInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    invoke-static {v0}, Lmiuix/animation/internal/TransitionInfo;->setupAllInfoToTarget(Lmiuix/animation/internal/TransitionInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 408
    :cond_97
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mTempSetupInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private startEngine()V
    .registers 3

    .line 414
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- startEngine mEngineStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mEngineStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Scheduler@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :cond_2b
    iget-boolean v0, p0, Lmiuix/animation/internal/AnimScheduler;->mEngineStart:Z

    if-nez v0, :cond_37

    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lmiuix/animation/internal/AnimScheduler;->mEngineStart:Z

    .line 419
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    invoke-virtual {v0}, Lmiuix/animation/internal/FolmeEngine;->start()V

    :cond_37
    return-void
.end method

.method private updateTarget(Lmiuix/animation/IAnimTarget;Ljava/util/List;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/IAnimTarget;",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 684
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v2

    .line 685
    iget-object v3, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Lmiuix/animation/internal/AnimManager;->addToTransitionInfoList(Ljava/util/List;)V

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- update->updateTarget start transList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    :cond_34
    iget-object v5, v0, Lmiuix/animation/internal/AnimScheduler;->mOpMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiuix/animation/internal/AnimOperationInfo;

    .line 692
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v3

    move v8, v7

    :cond_42
    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_209

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiuix/animation/internal/TransitionInfo;

    if-eqz v2, :cond_66

    .line 694
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--- update->updateTarget-> update transInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    :cond_66
    iget-byte v10, v9, Lmiuix/animation/internal/TransitionInfo;->state:B

    if-nez v10, :cond_85

    add-int/lit8 v8, v8, 0x1

    if-eqz v2, :cond_42

    .line 699
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "---- update->updateTarget-> this info isInfoOnPrepare runCount "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    :cond_85
    const/4 v10, 0x0

    if-eqz v5, :cond_93

    .line 706
    iget-wide v11, v9, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    iget-wide v13, v5, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    cmp-long v11, v11, v13

    if-lez v11, :cond_93

    add-int/lit8 v7, v7, 0x1

    move-object v5, v10

    .line 710
    :cond_93
    invoke-virtual {v9}, Lmiuix/animation/internal/TransitionInfo;->getInfoAnimStats()Lmiuix/animation/internal/AnimStats;

    move-result-object v11

    .line 711
    invoke-virtual {v11}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    move-result v12

    if-eqz v12, :cond_a0

    .line 712
    invoke-direct {v0, v9, v5, v11}, Lmiuix/animation/internal/AnimScheduler;->updateTransInfo(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;)V

    :cond_a0
    if-eqz v2, :cond_b8

    .line 717
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "---- update->updateTarget after updateTransInfo "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    :cond_b8
    invoke-virtual {v11}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v12

    if-nez v12, :cond_13d

    .line 720
    iget v12, v11, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    iget v13, v11, Lmiuix/animation/internal/AnimStats;->endCount:I

    const/4 v14, 0x3

    if-le v12, v13, :cond_c7

    const/4 v12, 0x4

    goto :goto_c8

    :cond_c7
    move v12, v14

    .line 721
    :goto_c8
    iget v13, v11, Lmiuix/animation/internal/AnimStats;->focusCount:I

    if-lez v13, :cond_107

    iget v15, v11, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    if-ne v13, v15, :cond_107

    if-eqz v2, :cond_ea

    .line 724
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- transitionComplete by focus end all info.id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ea
    move v12, v3

    .line 726
    :goto_eb
    iget-object v13, v9, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_108

    .line 727
    iget-object v13, v9, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmiuix/animation/listener/UpdateInfo;

    if-eqz v13, :cond_104

    .line 728
    iget-boolean v15, v13, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    if-nez v15, :cond_104

    .line 729
    invoke-virtual {v13, v1}, Lmiuix/animation/listener/UpdateInfo;->skipToTargetValue(Lmiuix/animation/IAnimTarget;)V

    :cond_104
    add-int/lit8 v12, v12, 0x1

    goto :goto_eb

    :cond_107
    move v14, v12

    :cond_108
    if-eqz v2, :cond_12f

    .line 734
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- notifyTransitionEndOrCancel from updateTarget msg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    const-string v12, "--- notifyTransitionUpdate before notifyTransitionEndOrCancel from updateTarget"

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    :cond_12f
    iget-object v12, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v13, v9, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-virtual {v12, v9, v13}, Lmiuix/animation/internal/AnimManager;->notifyTransitionUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V

    .line 739
    iget-object v12, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v9, v13, v14}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEndOrCancel(Lmiuix/animation/internal/TransitionInfo;II)V

    goto :goto_13f

    :cond_13d
    add-int/lit8 v8, v8, 0x1

    :goto_13f
    if-eqz v2, :cond_204

    .line 744
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- update->after handleUpdate , id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "runCount="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "animStartAfterCancel="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "targetOpInfo="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "info.startTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v9, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetOpInfo.time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1bf

    .line 750
    iget-wide v9, v5, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :cond_1bf
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statsFromInfo.isRunning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v11}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statsFromInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    filled-new-array/range {v15 .. v23}, [Ljava/lang/Object;

    move-result-object v3

    .line 744
    invoke-static {v12, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_204
    move-object/from16 v4, p2

    const/4 v3, 0x0

    goto/16 :goto_42

    :cond_209
    if-eqz v5, :cond_21c

    .line 757
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v7, v3, :cond_217

    invoke-virtual {v5}, Lmiuix/animation/internal/AnimOperationInfo;->isUsed()Z

    move-result v3

    if-eqz v3, :cond_21c

    .line 758
    :cond_217
    iget-object v3, v0, Lmiuix/animation/internal/AnimScheduler;->mOpMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_21c
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_239

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- update->updateTarget finish runCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23a

    :cond_239
    const/4 v2, 0x0

    :goto_23a
    if-lez v8, :cond_23e

    const/4 v3, 0x1

    goto :goto_23f

    :cond_23e
    move v3, v2

    :goto_23f
    return v3
.end method

.method private updateTransInfo(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;)V
    .registers 9

    if-nez p3, :cond_6

    .line 773
    invoke-virtual {p1}, Lmiuix/animation/internal/TransitionInfo;->getInfoAnimStats()Lmiuix/animation/internal/AnimStats;

    move-result-object p3

    .line 775
    :cond_6
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---- updateTransInfo start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " opInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    :cond_2b
    iget-byte v2, p1, Lmiuix/animation/internal/TransitionInfo;->state:B

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_33

    move v2, v4

    goto :goto_34

    :cond_33
    move v2, v1

    .line 780
    :goto_34
    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3, v3}, Lmiuix/animation/internal/AnimScheduler;->doOperationForUpdateInfoList(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;Ljava/util/List;)V

    .line 781
    invoke-virtual {p3}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_156

    iget p2, p3, Lmiuix/animation/internal/AnimStats;->updateCount:I

    if-lez p2, :cond_156

    if-eqz v0, :cond_5b

    .line 783
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---- updateTransInfo finish "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5b
    if-eqz v2, :cond_134

    .line 785
    iget-boolean p2, p1, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z

    if-nez p2, :cond_67

    iget-boolean p2, p1, Lmiuix/animation/internal/TransitionInfo;->hasOnStart:Z

    if-nez p2, :cond_67

    goto/16 :goto_134

    :cond_67
    if-eqz v0, :cond_7f

    .line 795
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---- notifyTransitionUpdate from updateTransInfo:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    :cond_7f
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    if-eqz p2, :cond_11b

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_11b

    .line 798
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    .line 799
    iget-object p3, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p3}, Lmiuix/animation/IAnimTarget;->shouldCheckValue()Z

    move-result p3

    if-eqz p3, :cond_10e

    .line 800
    iget-object p3, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 801
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 803
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9c
    :goto_9c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/listener/UpdateInfo;

    .line 805
    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    if-le v2, v4, :cond_9c

    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v2, v2, Lmiuix/animation/internal/AnimInfo;->op:B

    const/4 v3, 0x6

    if-ge v2, v3, :cond_9c

    iget-object v2, v1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, v2, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 807
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 808
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 811
    :cond_c3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_113

    if-eqz v0, :cond_113

    .line 813
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "---- notifyTransitionUpdate withCheckValue info.id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info.key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateList.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 813
    invoke-static {p3, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_113

    .line 820
    :cond_10e
    iget-object p3, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 822
    :cond_113
    :goto_113
    iget-object p3, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p3, p3, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p3, p1, p2}, Lmiuix/animation/internal/AnimManager;->notifyTransitionUpdate(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;)V

    goto :goto_165

    :cond_11b
    if-eqz v0, :cond_165

    .line 825
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---- notifyTransitionUpdate fail updateList is empty "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_165

    :cond_134
    :goto_134
    if-eqz v0, :cond_14c

    .line 790
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---- notifyTransitionBegin from updateTransInfo: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    :cond_14c
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p2, p2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object p3, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-virtual {p2, p1, p3, v4}, Lmiuix/animation/internal/AnimManager;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;Z)V

    goto :goto_165

    .line 830
    :cond_156
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_165

    .line 831
    iget-object p2, p1, Lmiuix/animation/internal/TransitionInfo;->updateListForNotify:Ljava/util/List;

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_165
    :goto_165
    return-void
.end method


# virtual methods
.method public addToOneShot(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mOneShotTargets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .registers 1

    .line 0
    return-void
.end method

.method protected final doAnimationFrame(JJ)V
    .registers 15

    .line 434
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    .line 435
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    .line 436
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "++ doAnimationFrame: deltaTNanos=%d Scheduler@%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_26
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->setup()V

    if-eqz v0, :cond_44

    .line 440
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "++ doAnimationFrame: |-> after setup: mRunningTarget.size=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_44
    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_84

    .line 443
    invoke-static {}, Lmiuix/animation/internal/AndroidEngine;->getInst()Lmiuix/animation/internal/AndroidEngine;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/animation/internal/FolmeEngine;->getAverageDeltaNanos()J

    move-result-wide v8

    if-eqz v0, :cond_71

    .line 445
    iget-boolean v0, p0, Lmiuix/animation/internal/AnimScheduler;->mStart:Z

    .line 447
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 446
    const-string v1, "++ doAnimationFrame: |--> hasRunningTarget mStart=%s mHasTaskStackRunning=%s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 445
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    :cond_71
    iget-boolean v0, p0, Lmiuix/animation/internal/AnimScheduler;->mStart:Z

    if-nez v0, :cond_7e

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lmiuix/animation/internal/AnimScheduler;->mStart:Z

    const-wide/16 v0, 0x0

    .line 451
    iput-wide v0, p0, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    .line 452
    iput v2, p0, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    :cond_7e
    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 454
    invoke-virtual/range {v3 .. v9}, Lmiuix/animation/internal/AnimScheduler;->runAnimTaskOnFrame(JJJ)V

    .line 456
    :cond_84
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->releaseIdleOneShotTargetAfterRun()V

    return-void
.end method

.method final execute(Ljava/lang/Runnable;)V
    .registers 4

    .line 197
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 198
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 201
    :cond_12
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 202
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_39

    .line 204
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute warning!! this scheduler has no handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 206
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v1, "miuix_anim"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_39
    return-void
.end method

.method executeDoAnimOnFrame(JJ)V
    .registers 13

    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 272
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/animation/internal/AnimScheduler;->doAnimationFrame(JJ)V

    return-void

    .line 275
    :cond_12
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    .line 276
    new-instance v7, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda1;-><init>(Lmiuix/animation/internal/AnimScheduler;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    .line 278
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeOnFrame warning!! this scheduler has no handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 280
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "miuix_anim"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/animation/internal/AnimScheduler;->doAnimationFrame(JJ)V

    :goto_42
    return-void
.end method

.method executeNotifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 4

    .line 286
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 287
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "----- TaskStackRunner before update : notifyTransitionBegin "

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 291
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V

    return-void

    .line 294
    :cond_20
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2d

    .line 295
    new-instance v1, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda0;-><init>(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c

    .line 297
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeNotifyTransitionBegin warning!! this scheduler has no handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 299
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v1, "miuix_anim"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V

    :goto_4c
    return-void
.end method

.method executePendingSetTo(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    new-instance v0, Lmiuix/animation/internal/AnimScheduler$SetToInfo;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimScheduler$SetToInfo;-><init>()V

    .line 214
    iput-object p1, v0, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 215
    iget-boolean p1, p2, Lmiuix/animation/controller/AnimState;->needDuplicate:Z

    if-eqz p1, :cond_16

    .line 216
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object p1, v0, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 217
    invoke-virtual {p1, p2}, Lmiuix/animation/controller/AnimState;->set(Lmiuix/animation/controller/AnimState;)V

    goto :goto_18

    .line 219
    :cond_16
    iput-object p2, v0, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 221
    :goto_18
    iget-object p1, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-nez p1, :cond_38

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeSetTo warning!! this scheduler has no handler, so direct run executePendingSetTo(info)"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 225
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 223
    const-string v1, "miuix_anim"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result p2

    if-nez p2, :cond_52

    if-nez p1, :cond_49

    goto :goto_52

    .line 230
    :cond_49
    new-instance p2, Lmiuix/animation/internal/AnimScheduler$1;

    invoke-direct {p2, p0, v0}, Lmiuix/animation/internal/AnimScheduler$1;-><init>(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/AnimScheduler$SetToInfo;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_55

    .line 228
    :cond_52
    :goto_52
    invoke-virtual {p0, v0}, Lmiuix/animation/internal/AnimScheduler;->pendingSetTo(Lmiuix/animation/internal/AnimScheduler$SetToInfo;)V

    :goto_55
    return-void
.end method

.method executeTo(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 8

    .line 240
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 241
    const-string v0, "++ executeTo"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :cond_e
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-wide v2, v0, Lmiuix/animation/base/AnimConfig;->delay:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_53

    .line 244
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_52

    .line 245
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- to with delay Scheduler@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_44
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    new-instance v1, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda3;-><init>(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V

    iget-object p1, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-wide v2, p1, Lmiuix/animation/base/AnimConfig;->delay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_52
    return-void

    .line 255
    :cond_53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 256
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->to(Lmiuix/animation/internal/TransitionInfo;)V

    return-void

    .line 259
    :cond_65
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_72

    .line 260
    new-instance v1, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda4;-><init>(Lmiuix/animation/internal/AnimScheduler;Lmiuix/animation/internal/TransitionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_91

    .line 262
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeTo warning!! this scheduler has no handler, so direct run to(info)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 264
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    const-string v1, "miuix_anim"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->to(Lmiuix/animation/internal/TransitionInfo;)V

    :goto_91
    return-void
.end method

.method executeUpdate()V
    .registers 3

    .line 305
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 306
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "-- executeUpdate"

    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/internal/AnimScheduler;->isInMainThread(J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 310
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimScheduler;->update()V

    return-void

    .line 313
    :cond_20
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2d

    .line 314
    new-instance v1, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda2;-><init>(Lmiuix/animation/internal/AnimScheduler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c

    .line 316
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeUpdate warning!! this scheduler has no handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    .line 318
    invoke-static {v1}, Lmiuix/animation/utils/LogUtils;->getStackTrace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    const-string v1, "miuix_anim"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimScheduler;->update()V

    :goto_4c
    return-void
.end method

.method public getOneShotTargets()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mOneShotTargets:Ljava/util/Set;

    return-object v0
.end method

.method getTotalRunningTransitionCount()I
    .registers 4

    .line 1038
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1039
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 1040
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v2}, Lmiuix/animation/internal/AnimManager;->getRunningTransitionCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_c

    :cond_20
    return v1
.end method

.method protected final isInMainThread(J)Z
    .registers 5

    .line 193
    iget-wide v0, p0, Lmiuix/animation/internal/AnimScheduler;->runnerThreadId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method protected final notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 5

    .line 548
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/internal/AnimManager;->notifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;Ljava/util/List;Z)V

    return-void
.end method

.method protected final pendingSetTo(Lmiuix/animation/internal/AnimScheduler$SetToInfo;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    .line 327
    iget-object v1, p1, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 328
    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- setTo Scheduler@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_31
    iget-object v4, p1, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 332
    iget-object p1, p1, Lmiuix/animation/internal/AnimScheduler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lmiuix/animation/internal/AnimManager;->setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)Z

    .line 333
    invoke-virtual {v4}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 334
    invoke-virtual {v4, v1, v5}, Lmiuix/animation/controller/AnimState;->getProperty(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v5

    .line 335
    iget-object v6, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v6, v6, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/animation/listener/UpdateInfo;

    if-nez v6, :cond_5e

    goto :goto_43

    .line 339
    :cond_5e
    invoke-virtual {v4, v1, v5}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v7

    if-eqz v0, :cond_88

    .line 341
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-- setTo setToValue="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " toState "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :cond_88
    iget-object v9, v6, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-wide v7, v9, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 344
    iput-wide v7, v9, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 346
    iget-boolean v7, v6, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    if-eqz v7, :cond_a0

    instance-of v8, v5, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v8, :cond_a0

    .line 347
    check-cast v5, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {v6}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lmiuix/animation/IAnimTarget;->doSetIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_43

    :cond_a0
    if-eqz v7, :cond_b8

    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-- setTo Warning!! the property is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    :cond_b8
    invoke-virtual {v6}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v6

    invoke-virtual {v1, v5, v6}, Lmiuix/animation/IAnimTarget;->doSetValue(Lmiuix/animation/property/FloatProperty;F)V

    goto :goto_43

    :cond_c0
    if-eqz v0, :cond_d8

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-- setTo done "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d8
    return-void
.end method

.method public removeFromOneShot(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    .line 95
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mOneShotTargets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected runAnimTaskOnFrame(JJJ)V
    .registers 27

    move-object/from16 v9, p0

    move-wide/from16 v10, p3

    move-wide/from16 v0, p5

    .line 463
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v9, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 464
    iget-wide v3, v9, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    add-long/2addr v3, v10

    iput-wide v3, v9, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    const/4 v4, 0x1

    if-lez v3, :cond_1e

    .line 466
    iget v3, v9, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    add-int/2addr v3, v4

    iput v3, v9, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    .line 469
    :cond_1e
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v12

    .line 470
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v3

    const/4 v13, 0x0

    if-eqz v3, :cond_67

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++ runAnimTaskOnFrame start frameCount="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v9, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " nowNanos="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " deltaTNanos="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " averageDelta="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " Scheduler@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v13, [Ljava/lang/Object;

    .line 471
    invoke-static {v3, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    :cond_67
    iput v13, v9, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    .line 491
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/IAnimTarget;

    .line 492
    iget-object v3, v3, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v5, v9, Lmiuix/animation/internal/AnimScheduler;->mTransListForRun:Ljava/util/List;

    invoke-virtual {v3, v5}, Lmiuix/animation/internal/AnimManager;->addToTransitionInfoList(Ljava/util/List;)V

    goto :goto_6d

    .line 494
    :cond_81
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTransListForRun:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/TransitionInfo;

    .line 495
    iget v5, v9, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    invoke-virtual {v3}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v9, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    .line 496
    invoke-static {v3, v0, v1}, Lmiuix/animation/internal/TransitionInfo;->tickOnFrame(Lmiuix/animation/internal/TransitionInfo;J)V

    .line 497
    iget-object v5, v9, Lmiuix/animation/internal/AnimScheduler;->mAnimTaskForRun:Ljava/util/List;

    iget-object v3, v3, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_87

    .line 499
    :cond_a7
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTransListForRun:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    .line 500
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTransListForRun:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 501
    iget v2, v9, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    add-int/lit16 v2, v2, -0xfa0

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackSplitInfo:[I

    invoke-static {v2, v3}, Lmiuix/animation/internal/ThreadPoolUtil;->getSplitCount(I[I)V

    .line 502
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackSplitInfo:[I

    aget v3, v2, v13

    .line 503
    aget v2, v2, v4

    .line 504
    iget-object v5, v9, Lmiuix/animation/internal/AnimScheduler;->mAnimTaskForRun:Ljava/util/List;

    invoke-direct {v9, v5, v2, v3}, Lmiuix/animation/internal/AnimScheduler;->assignAnimTaskToStack(Ljava/util/List;II)V

    .line 505
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mAnimTaskForRun:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 506
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    iput-boolean v2, v9, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    .line 507
    iget-object v2, v9, Lmiuix/animation/internal/AnimScheduler;->runningStackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    if-eqz v12, :cond_101

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++ runAnimTaskOnFrame mTaskStackList.size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_101
    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double v15, v0, v2

    .line 518
    iget-boolean v0, v9, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    if-eqz v0, :cond_156

    .line 519
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lmiuix/animation/internal/AnimTask;

    .line 520
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v18, 0x1

    if-le v0, v4, :cond_143

    move v7, v4

    .line 521
    :goto_122
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_143

    .line 523
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/AnimTask;

    iget-wide v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    move-object/from16 v1, p0

    move-wide/from16 v4, p3

    move/from16 v6, v18

    move/from16 v19, v7

    move-wide v7, v15

    invoke-static/range {v0 .. v8}, Lmiuix/animation/internal/AnimTask;->asyncStart(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimScheduler;JJID)V

    add-int/lit8 v7, v19, 0x1

    goto :goto_122

    .line 527
    :cond_143
    iget-wide v2, v9, Lmiuix/animation/internal/AnimScheduler;->mTotalTNanos:J

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-wide/from16 v4, p3

    move/from16 v6, v18

    move-wide v7, v15

    invoke-static/range {v0 .. v8}, Lmiuix/animation/internal/AnimTask;->start(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimScheduler;JJID)V

    .line 528
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mTaskStackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_156
    if-eqz v12, :cond_171

    .line 532
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, v9, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 531
    const-string v1, "--- runAnimTaskOnFrame finish isAllTransFinish:%s mHasTaskStackRunning:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    :cond_171
    iget-boolean v0, v9, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    if-eqz v0, :cond_17d

    .line 535
    iput-boolean v13, v9, Lmiuix/animation/internal/AnimScheduler;->mEngineStart:Z

    .line 536
    iget-object v0, v9, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    invoke-virtual {v0}, Lmiuix/animation/internal/FolmeEngine;->waitForAllTaskFinish()V

    return-void

    :cond_17d
    if-eqz v14, :cond_18b

    if-eqz v12, :cond_188

    .line 541
    const-string v0, "--- runAnimTaskOnFrame->endEngine: no transList then endEngine"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    :cond_188
    invoke-direct/range {p0 .. p0}, Lmiuix/animation/internal/AnimScheduler;->endEngine()V

    :cond_18b
    return-void
.end method

.method public setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V
    .registers 5

    .line 99
    iget-object v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 100
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    .line 101
    iget-boolean v0, p0, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    const-string v1, "miuix_anim"

    if-nez v0, :cond_26

    .line 103
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 104
    const-string v0, "++ setOperation: mHasTaskStackRunning is false, execute setOperation immediately"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_22
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimScheduler;->doOperationForTarget(Lmiuix/animation/internal/AnimOperationInfo;)V

    goto :goto_38

    .line 109
    :cond_26
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler;->mOpMap:Ljava/util/Map;

    iget-object v2, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 111
    const-string p1, "++ setOperation: mHasTaskStackRunning is true, pending setOperation"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    return-void
.end method

.method protected final to(Lmiuix/animation/internal/TransitionInfo;)V
    .registers 6

    .line 363
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- to Scheduler@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    if-eqz p1, :cond_42

    .line 369
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    invoke-direct {p0, v2, p1, v3}, Lmiuix/animation/internal/AnimScheduler;->addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V

    .line 370
    iget-boolean p1, p0, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    if-nez p1, :cond_42

    if-eqz v0, :cond_3f

    .line 372
    const-string p1, "-- to->startEngine"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    :cond_3f
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->startEngine()V

    :cond_42
    return-void
.end method

.method protected final update()V
    .registers 9

    .line 556
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMoreEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- update from runningStackCount == 0 frameCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/animation/internal/AnimScheduler;->mFrameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Scheduler@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    :cond_2b
    iput v1, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    .line 562
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 563
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_39
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/IAnimTarget;

    .line 564
    iget-object v6, p0, Lmiuix/animation/internal/AnimScheduler;->mTempTargetRunningInfo:Ljava/util/List;

    invoke-direct {p0, v4, v6}, Lmiuix/animation/internal/AnimScheduler;->updateTarget(Lmiuix/animation/IAnimTarget;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 565
    invoke-direct {p0, v4}, Lmiuix/animation/internal/AnimScheduler;->prepareWaitTransAfterUpdated(Lmiuix/animation/IAnimTarget;)Z

    move-result v6

    if-eqz v6, :cond_55

    goto :goto_5b

    .line 568
    :cond_55
    iget-object v5, p0, Lmiuix/animation/internal/AnimScheduler;->mPreDelTargetList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_5b
    :goto_5b
    move v3, v5

    .line 570
    :goto_5c
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 571
    iget v5, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    iget-object v4, v4, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v4}, Lmiuix/animation/internal/AnimManager;->getTotalAnimCount()I

    move-result v4

    add-int/2addr v5, v4

    iput v5, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    goto :goto_39

    .line 577
    :cond_6e
    iput-boolean v1, p0, Lmiuix/animation/internal/AnimScheduler;->mHasTaskStackRunning:Z

    .line 578
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mPreDelTargetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_84

    .line 579
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    iget-object v4, p0, Lmiuix/animation/internal/AnimScheduler;->mPreDelTargetList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 580
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mPreDelTargetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 582
    :cond_84
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRunningAnimCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningAnimCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPrepareTransMap.size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    .line 585
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mRunningTarget.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    .line 586
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2, v4, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 583
    const-string v4, "-- update after traversal all target"

    invoke-static {v4, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    :cond_d4
    iget-object v2, p0, Lmiuix/animation/internal/AnimScheduler;->mPrepareTransMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/lit8 v4, v2, 0x1

    .line 599
    iget-object v6, p0, Lmiuix/animation/internal/AnimScheduler;->mRunningTarget:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    xor-int/lit8 v7, v6, 0x1

    if-eqz v2, :cond_e8

    if-nez v6, :cond_10c

    :cond_e8
    if-eqz v0, :cond_108

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- update finish->startEngine hasPrepareTrans:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " hasRunningTarget:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    :cond_108
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->startEngine()V

    move v3, v5

    :cond_10c
    if-nez v3, :cond_11a

    if-eqz v0, :cond_117

    .line 609
    const-string v0, "-- update->endEngine when isRunning is false"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    :cond_117
    invoke-direct {p0}, Lmiuix/animation/internal/AnimScheduler;->endEngine()V

    :cond_11a
    return-void
.end method
