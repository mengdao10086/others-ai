.class Lmiuix/animation/controller/FolmeBlink$6;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeBlink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/controller/FolmeBlink;-><init>([Lmiuix/animation/IAnimTarget;)V
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

    .line 147
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 6

    .line 150
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iget v1, v0, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    .line 152
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogMainEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blink: onComplete "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " flashcount="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iget p1, p1, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_34
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iget v3, v0, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    # getter for: Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I
    invoke-static {v0}, Lmiuix/animation/controller/FolmeBlink;->access$300(Lmiuix/animation/controller/FolmeBlink;)I

    move-result v0

    if-eq v3, v0, :cond_53

    if-nez p1, :cond_4d

    goto :goto_53

    .line 162
    :cond_4d
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    # invokes: Lmiuix/animation/controller/FolmeBlink;->doStartBlink()V
    invoke-static {p1}, Lmiuix/animation/controller/FolmeBlink;->access$600(Lmiuix/animation/controller/FolmeBlink;)V

    return-void

    .line 157
    :cond_53
    :goto_53
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iput v1, p1, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    .line 158
    # getter for: Lmiuix/animation/controller/FolmeBlink;->mTargets:[Lmiuix/animation/IAnimTarget;
    invoke-static {p1}, Lmiuix/animation/controller/FolmeBlink;->access$400(Lmiuix/animation/controller/FolmeBlink;)[Lmiuix/animation/IAnimTarget;

    move-result-object v0

    # invokes: Lmiuix/animation/controller/FolmeBlink;->restoreOriginFgs([Lmiuix/animation/IAnimTarget;)V
    invoke-static {p1, v0}, Lmiuix/animation/controller/FolmeBlink;->access$500(Lmiuix/animation/controller/FolmeBlink;[Lmiuix/animation/IAnimTarget;)V

    .line 159
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$6;->this$0:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {p1, v2}, Lmiuix/animation/controller/FolmeBlink;->notifyState(Z)V

    return-void
.end method
