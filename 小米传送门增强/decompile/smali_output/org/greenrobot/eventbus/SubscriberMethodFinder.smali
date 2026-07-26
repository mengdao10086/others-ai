.class Lorg/greenrobot/eventbus/SubscriberMethodFinder;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;
    }
.end annotation


# static fields
.field private static final FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

.field private static final METHOD_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final ignoreGeneratedIndex:Z

.field private final strictMethodVerification:Z

.field private subscriberInfoIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    const/4 v0, 0x4

    .line 46
    new-array v0, v0, [Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    sput-object v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    return-void
.end method

.method constructor <init>(Ljava/util/List;ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;",
            ">;ZZ)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->subscriberInfoIndexes:Ljava/util/List;

    .line 51
    iput-boolean p2, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->strictMethodVerification:Z

    .line 52
    iput-boolean p3, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->ignoreGeneratedIndex:Z

    return-void
.end method

.method private findUsingInfo(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->prepareFindState()Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->initForSubscriber(Ljava/lang/Class;)V

    .line 78
    :goto_7
    iget-object p1, v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    if-eqz p1, :cond_15

    .line 79
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->getSubscriberInfo(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    .line 88
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findUsingReflectionInSingleClass(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)V

    .line 90
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->moveToSuperclass()V

    goto :goto_7

    .line 92
    :cond_15
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->getMethodsAndRelease(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private findUsingReflection(Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->prepareFindState()Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->initForSubscriber(Ljava/lang/Class;)V

    .line 143
    :goto_7
    iget-object p1, v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    if-eqz p1, :cond_12

    .line 144
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findUsingReflectionInSingleClass(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)V

    .line 145
    invoke-virtual {v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->moveToSuperclass()V

    goto :goto_7

    .line 147
    :cond_12
    invoke-direct {p0, v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->getMethodsAndRelease(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private findUsingReflectionInSingleClass(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)V
    .registers 16

    const/4 v0, 0x1

    .line 154
    :try_start_1
    iget-object v1, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_10

    .line 158
    :catchall_8
    :try_start_8
    iget-object v1, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_e} :catch_ea

    .line 168
    iput-boolean v0, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->skipSuperClasses:Z

    .line 170
    :goto_10
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_e9

    aget-object v6, v1, v4

    .line 171
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v7, v5, 0x1

    .line 172
    const-string v8, "."

    const-class v9, Lorg/greenrobot/eventbus/Subscribe;

    if-eqz v7, :cond_a5

    and-int/lit16 v5, v5, 0x1448

    if-nez v5, :cond_a5

    .line 173
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 174
    array-length v7, v5

    if-ne v7, v0, :cond_5b

    .line 175
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lorg/greenrobot/eventbus/Subscribe;

    if-eqz v7, :cond_e5

    .line 177
    aget-object v8, v5, v3

    .line 178
    invoke-virtual {p1, v6, v8}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->checkAdd(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 179
    invoke-interface {v7}, Lorg/greenrobot/eventbus/Subscribe;->threadMode()Lorg/greenrobot/eventbus/ThreadMode;

    move-result-object v9

    .line 180
    iget-object v11, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberMethods:Ljava/util/List;

    new-instance v12, Lorg/greenrobot/eventbus/SubscriberMethod;

    .line 181
    invoke-interface {v7}, Lorg/greenrobot/eventbus/Subscribe;->priority()I

    move-result v10

    invoke-interface {v7}, Lorg/greenrobot/eventbus/Subscribe;->sticky()Z

    move-result v13

    move-object v5, v12

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v13

    invoke-direct/range {v5 .. v10}, Lorg/greenrobot/eventbus/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    .line 180
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e5

    .line 184
    :cond_5b
    iget-boolean v7, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->strictMethodVerification:Z

    if-eqz v7, :cond_e5

    invoke-virtual {v6, v9}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_67

    goto/16 :goto_e5

    .line 185
    :cond_67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@Subscribe method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "must have exactly 1 parameter but has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_a5
    iget-boolean v5, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->strictMethodVerification:Z

    if-eqz v5, :cond_e5

    invoke-virtual {v6, v9}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_b0

    goto :goto_e5

    .line 190
    :cond_b0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a illegal @Subscribe method: must be public, non-static, and non-abstract"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e5
    :goto_e5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    :cond_e9
    return-void

    :catch_ea
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not inspect methods of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->ignoreGeneratedIndex:Z

    if-eqz v1, :cond_118

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please consider using EventBus annotation processor to avoid reflection."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_129

    .line 164
    :cond_118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please make this class visible to EventBus annotation processor to avoid reflection."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    :goto_129
    new-instance v1, Lorg/greenrobot/eventbus/EventBusException;

    invoke-direct {v1, p1, v0}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getMethodsAndRelease(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;",
            ")",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->subscriberMethods:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->recycle()V

    .line 98
    sget-object v1, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_e
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1f

    .line 100
    :try_start_11
    sget-object v3, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    aget-object v4, v3, v2

    if-nez v4, :cond_1c

    .line 101
    aput-object p1, v3, v2

    goto :goto_1f

    :catchall_1a
    move-exception p1

    goto :goto_21

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 105
    :cond_1f
    :goto_1f
    monitor-exit v1

    return-object v0

    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_1a

    throw p1
.end method

.method private getSubscriberInfo(Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;)Lorg/greenrobot/eventbus/meta/SubscriberInfo;
    .registers 5

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    iget-object v0, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->subscriberInfoIndexes:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;

    .line 131
    iget-object v2, p1, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;->clazz:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;->getSubscriberInfo(Ljava/lang/Class;)Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    goto :goto_b

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method private prepareFindState()Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;
    .registers 6

    .line 110
    sget-object v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x4

    if-ge v1, v2, :cond_17

    .line 112
    :try_start_7
    sget-object v2, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->FIND_STATE_POOL:[Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    aget-object v3, v2, v1

    if-eqz v3, :cond_14

    const/4 v4, 0x0

    .line 114
    aput-object v4, v2, v1

    .line 115
    monitor-exit v0

    return-object v3

    :catchall_12
    move-exception v1

    goto :goto_1e

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 118
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_12

    .line 119
    new-instance v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/SubscriberMethodFinder$FindState;-><init>()V

    return-object v0

    .line 118
    :goto_1e
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_12

    throw v1
.end method


# virtual methods
.method findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_b

    return-object v1

    .line 61
    :cond_b
    iget-boolean v1, p0, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->ignoreGeneratedIndex:Z

    if-eqz v1, :cond_14

    .line 62
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findUsingReflection(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    goto :goto_18

    .line 64
    :cond_14
    invoke-direct {p0, p1}, Lorg/greenrobot/eventbus/SubscriberMethodFinder;->findUsingInfo(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 66
    :goto_18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 70
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 67
    :cond_22
    new-instance v0, Lorg/greenrobot/eventbus/EventBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscriber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and its super classes have no public methods with the @Subscribe annotation"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/greenrobot/eventbus/EventBusException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
