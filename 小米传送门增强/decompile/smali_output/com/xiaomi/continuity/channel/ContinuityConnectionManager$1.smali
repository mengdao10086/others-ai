.class Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/continuity/ContinuityServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;-><init>(Lcom/xiaomi/continuity/IContinuityConnectionManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$1;->this$0:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBinderDied()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$1;->this$0:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$1;->this$0:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    const/4 v2, 0x0

    # setter for: Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mService:Lcom/xiaomi/continuity/IContinuityConnectionManager;
    invoke-static {v1, v2}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->access$002(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;Lcom/xiaomi/continuity/IContinuityConnectionManager;)Lcom/xiaomi/continuity/IContinuityConnectionManager;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1f

    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$1;->this$0:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    # getter for: Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mServerChannelListener:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->access$100(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_11
    iget-object v0, p0, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager$1;->this$0:Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;

    # getter for: Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->mServerChannelListener:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;->access$100(Lcom/xiaomi/continuity/channel/ContinuityConnectionManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1c

    throw v0

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method
