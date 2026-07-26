.class Lmiuix/animation/controller/FolmeBlink$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeBlink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeBlink;->resetConfig()Lmiuix/animation/IBlinkStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeBlink;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/FolmeBlink;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink$3;->this$0:Lmiuix/animation/controller/FolmeBlink;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 5

    .line 75
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$3;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iget v0, p1, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    .line 77
    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink$3;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iget v2, v0, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    # getter for: Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I
    invoke-static {v0}, Lmiuix/animation/controller/FolmeBlink;->access$300(Lmiuix/animation/controller/FolmeBlink;)I

    move-result v0

    if-eq v2, v0, :cond_28

    if-nez p1, :cond_22

    goto :goto_28

    .line 84
    :cond_22
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$3;->this$0:Lmiuix/animation/controller/FolmeBlink;

    # invokes: Lmiuix/animation/controller/FolmeBlink;->doStartBlink()V
    invoke-static {p1}, Lmiuix/animation/controller/FolmeBlink;->access$600(Lmiuix/animation/controller/FolmeBlink;)V

    return-void

    .line 79
    :cond_28
    :goto_28
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$3;->this$0:Lmiuix/animation/controller/FolmeBlink;

    const/4 v0, 0x0

    iput v0, p1, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    .line 80
    # getter for: Lmiuix/animation/controller/FolmeBlink;->mTargets:[Lmiuix/animation/IAnimTarget;
    invoke-static {p1}, Lmiuix/animation/controller/FolmeBlink;->access$400(Lmiuix/animation/controller/FolmeBlink;)[Lmiuix/animation/IAnimTarget;

    move-result-object v0

    # invokes: Lmiuix/animation/controller/FolmeBlink;->restoreOriginFgs([Lmiuix/animation/IAnimTarget;)V
    invoke-static {p1, v0}, Lmiuix/animation/controller/FolmeBlink;->access$500(Lmiuix/animation/controller/FolmeBlink;[Lmiuix/animation/IAnimTarget;)V

    .line 81
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$3;->this$0:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {p1, v1}, Lmiuix/animation/controller/FolmeBlink;->notifyState(Z)V

    return-void
.end method
