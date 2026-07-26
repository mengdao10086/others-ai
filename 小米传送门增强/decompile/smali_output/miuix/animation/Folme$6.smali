.class Lmiuix/animation/Folme$6;
.super Ljava/lang/Object;
.source "Folme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/Folme;->performTargetCleanForTooMuchInvalid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    # getter for: Lmiuix/animation/Folme;->sImplMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lmiuix/animation/Folme;->access$600()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 1255
    invoke-virtual {v2}, Lmiuix/animation/IAnimTarget;->isValid()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1256
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1259
    :cond_27
    invoke-static {}, Lmiuix/animation/Folme;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 1260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 1261
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1262
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 1263
    iput v0, v2, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x3e8

    .line 1265
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_41
    return-void
.end method
