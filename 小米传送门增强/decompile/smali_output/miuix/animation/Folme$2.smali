.class Lmiuix/animation/Folme$2;
.super Ljava/lang/Object;
.source "Folme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/Folme;->sleepAnimTarget(Lmiuix/animation/IAnimTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$impl:Lmiuix/animation/Folme$FolmeImpl;

.field final synthetic val$target:Lmiuix/animation/IAnimTarget;


# direct methods
.method constructor <init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$FolmeImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 988
    iput-object p1, p0, Lmiuix/animation/Folme$2;->val$target:Lmiuix/animation/IAnimTarget;

    iput-object p2, p0, Lmiuix/animation/Folme$2;->val$impl:Lmiuix/animation/Folme$FolmeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 991
    iget-object v0, p0, Lmiuix/animation/Folme$2;->val$target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->sleep()V

    .line 992
    # getter for: Lmiuix/animation/Folme;->sSleepImplMap:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lmiuix/animation/Folme;->access$500()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/Folme$2;->val$target:Lmiuix/animation/IAnimTarget;

    iget-object v2, p0, Lmiuix/animation/Folme$2;->val$impl:Lmiuix/animation/Folme$FolmeImpl;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
