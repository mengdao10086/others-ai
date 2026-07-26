.class public Lmiuix/responsive/map/ResponsiveStateManager;
.super Ljava/lang/Object;
.source "ResponsiveStateManager.java"


# static fields
.field private static mapState:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/responsive/map/ResponsiveState;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lmiuix/responsive/map/ResponsiveStateManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiuix/responsive/map/ResponsiveStateManager;
    .registers 2

    .line 16
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    if-nez v0, :cond_19

    .line 17
    const-class v0, Lmiuix/responsive/map/ResponsiveStateManager;

    monitor-enter v0

    .line 18
    :try_start_7
    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    if-nez v1, :cond_15

    .line 19
    new-instance v1, Lmiuix/responsive/map/ResponsiveStateManager;

    invoke-direct {v1}, Lmiuix/responsive/map/ResponsiveStateManager;-><init>()V

    sput-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 21
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 23
    :cond_19
    :goto_19
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->sInstance:Lmiuix/responsive/map/ResponsiveStateManager;

    return-object v0
.end method


# virtual methods
.method public recordState(Landroid/content/Context;Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)Lmiuix/responsive/map/ResponsiveState;
    .registers 5

    if-eqz p1, :cond_26

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 30
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/responsive/map/ResponsiveState;

    if-nez v0, :cond_22

    .line 32
    new-instance v0, Lmiuix/responsive/map/ResponsiveState;

    invoke-direct {v0}, Lmiuix/responsive/map/ResponsiveState;-><init>()V

    .line 33
    sget-object v1, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_22
    invoke-virtual {v0, p2}, Lmiuix/responsive/map/ResponsiveState;->updateFromWindowInfoWrapper(Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)V

    return-object v0

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Landroid/content/Context;)V
    .registers 3

    .line 72
    sget-object v0, Lmiuix/responsive/map/ResponsiveStateManager;->mapState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
