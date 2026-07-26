.class Lmiuix/animation/utils/ObjectPool$Cache$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/ObjectPool$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/utils/ObjectPool$Cache;


# direct methods
.method constructor <init>(Lmiuix/animation/utils/ObjectPool$Cache;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lmiuix/animation/utils/ObjectPool$Cache$1;->this$0:Lmiuix/animation/utils/ObjectPool$Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 37
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache$1;->this$0:Lmiuix/animation/utils/ObjectPool$Cache;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiuix/animation/utils/ObjectPool$Cache;->mPendingShrink:Z

    .line 38
    invoke-virtual {v0}, Lmiuix/animation/utils/ObjectPool$Cache;->shrink()V

    return-void
.end method
