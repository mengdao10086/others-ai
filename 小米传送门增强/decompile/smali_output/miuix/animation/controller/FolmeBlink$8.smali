.class Lmiuix/animation/controller/FolmeBlink$8;
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

    .line 175
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .registers 5

    .line 187
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 188
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    .line 189
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iput v2, p1, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    .line 190
    # setter for: Lmiuix/animation/controller/FolmeBlink;->mBlinkEnabled:Z
    invoke-static {p1, v2}, Lmiuix/animation/controller/FolmeBlink;->access$002(Lmiuix/animation/controller/FolmeBlink;Z)Z

    .line 191
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    # getter for: Lmiuix/animation/controller/FolmeBlink;->mTargets:[Lmiuix/animation/IAnimTarget;
    invoke-static {p1}, Lmiuix/animation/controller/FolmeBlink;->access$400(Lmiuix/animation/controller/FolmeBlink;)[Lmiuix/animation/IAnimTarget;

    move-result-object v0

    # invokes: Lmiuix/animation/controller/FolmeBlink;->restoreOriginFgs([Lmiuix/animation/IAnimTarget;)V
    invoke-static {p1, v0}, Lmiuix/animation/controller/FolmeBlink;->access$500(Lmiuix/animation/controller/FolmeBlink;[Lmiuix/animation/IAnimTarget;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 5

    .line 178
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    const/4 v0, 0x1

    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    .line 180
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    iput v2, p1, Lmiuix/animation/controller/FolmeBlink;->mFlashCount:I

    .line 181
    # setter for: Lmiuix/animation/controller/FolmeBlink;->mBlinkEnabled:Z
    invoke-static {p1, v2}, Lmiuix/animation/controller/FolmeBlink;->access$002(Lmiuix/animation/controller/FolmeBlink;Z)Z

    .line 182
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink$8;->this$0:Lmiuix/animation/controller/FolmeBlink;

    # getter for: Lmiuix/animation/controller/FolmeBlink;->mTargets:[Lmiuix/animation/IAnimTarget;
    invoke-static {p1}, Lmiuix/animation/controller/FolmeBlink;->access$400(Lmiuix/animation/controller/FolmeBlink;)[Lmiuix/animation/IAnimTarget;

    move-result-object v0

    # invokes: Lmiuix/animation/controller/FolmeBlink;->restoreOriginFgs([Lmiuix/animation/IAnimTarget;)V
    invoke-static {p1, v0}, Lmiuix/animation/controller/FolmeBlink;->access$500(Lmiuix/animation/controller/FolmeBlink;[Lmiuix/animation/IAnimTarget;)V

    return-void
.end method
