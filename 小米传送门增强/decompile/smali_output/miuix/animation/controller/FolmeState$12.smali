.class Lmiuix/animation/controller/FolmeState$12;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeState;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeState;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/FolmeState;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState$12;->this$0:Lmiuix/animation/controller/FolmeState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 447
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState$12;->this$0:Lmiuix/animation/controller/FolmeState;

    iget-object v0, v0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->isIdle()Z

    move-result v0

    if-nez v0, :cond_11

    .line 448
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState$12;->this$0:Lmiuix/animation/controller/FolmeState;

    iget-object v0, v0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->cancelRunningAnim()V

    :cond_11
    return-void
.end method
