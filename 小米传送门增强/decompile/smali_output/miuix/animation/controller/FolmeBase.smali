.class public abstract Lmiuix/animation/controller/FolmeBase;
.super Ljava/lang/Object;
.source "FolmeBase.java"

# interfaces
.implements Lmiuix/animation/IStateContainer;


# instance fields
.field mState:Lmiuix/animation/controller/IFolmeStateStyle;


# direct methods
.method varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lmiuix/animation/controller/StateComposer;->composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    return-void
.end method


# virtual methods
.method public varargs addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 62
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    .line 63
    invoke-interface {v0, p1, p2}, Lmiuix/animation/IStateContainer;->addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    :cond_7
    return-void
.end method

.method public cancel()V
    .registers 2

    .line 34
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    .line 35
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_7
    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .registers 3

    .line 48
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    .line 49
    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    .line 42
    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    :cond_7
    return-void
.end method

.method public clean()V
    .registers 2

    .line 20
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    .line 21
    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    :cond_7
    return-void
.end method

.method public enableDefaultAnim(Z)V
    .registers 3

    .line 55
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    .line 56
    invoke-interface {v0, p1}, Lmiuix/animation/IStateContainer;->enableDefaultAnim(Z)V

    :cond_7
    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .registers 3

    .line 27
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_7

    .line 28
    invoke-interface {v0, p1}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
