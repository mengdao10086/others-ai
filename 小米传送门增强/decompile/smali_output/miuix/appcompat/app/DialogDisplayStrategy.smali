.class public Lmiuix/appcompat/app/DialogDisplayStrategy;
.super Ljava/lang/Object;
.source "DialogDisplayStrategy.java"


# instance fields
.field private mButtonBehavior:Lmiuix/appcompat/app/strategy/IDialogButtonBehavior;

.field private mPanelBehavior:Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPanelWidth(Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;)I
    .registers 4

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/app/DialogDisplayStrategy;->mPanelBehavior:Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 46
    :cond_6
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;->calcDesignedPanelWidth(Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;)I

    move-result p1

    return p1
.end method

.method public getWidthMargin(Lmiuix/appcompat/app/DialogContract$DimensConfig;I)I
    .registers 4

    .line 64
    iget-object v0, p0, Lmiuix/appcompat/app/DialogDisplayStrategy;->mPanelBehavior:Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;

    if-nez v0, :cond_7

    .line 65
    iget p1, p1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthSmallMargin:I

    return p1

    .line 67
    :cond_7
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;->calcDesignedWidthMargin(Lmiuix/appcompat/app/DialogContract$DimensConfig;I)I

    move-result p1

    return p1
.end method

.method public isButtonScrollable(Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;)Z
    .registers 3

    .line 29
    iget-object v0, p0, Lmiuix/appcompat/app/DialogDisplayStrategy;->mButtonBehavior:Lmiuix/appcompat/app/strategy/IDialogButtonBehavior;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_6
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/strategy/IDialogButtonBehavior;->isButtonScrollable(Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;)Z

    move-result p1

    return p1
.end method

.method public isLandscapeWindow(Lmiuix/appcompat/app/DialogContract$OrientationSpec;)Z
    .registers 3

    .line 57
    iget-object v0, p0, Lmiuix/appcompat/app/DialogDisplayStrategy;->mPanelBehavior:Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_6
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;->isLandscapeWindow(Lmiuix/appcompat/app/DialogContract$OrientationSpec;)Z

    move-result p1

    return p1
.end method

.method public setButtonBehavior(Lmiuix/appcompat/app/strategy/IDialogButtonBehavior;)Lmiuix/appcompat/app/DialogDisplayStrategy;
    .registers 2

    .line 19
    iput-object p1, p0, Lmiuix/appcompat/app/DialogDisplayStrategy;->mButtonBehavior:Lmiuix/appcompat/app/strategy/IDialogButtonBehavior;

    return-object p0
.end method

.method public setPanelBehavior(Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;)Lmiuix/appcompat/app/DialogDisplayStrategy;
    .registers 2

    .line 24
    iput-object p1, p0, Lmiuix/appcompat/app/DialogDisplayStrategy;->mPanelBehavior:Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;

    return-object p0
.end method

.method public shouldLimitPanelWidth(I)Z
    .registers 3

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/app/DialogDisplayStrategy;->mPanelBehavior:Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;

    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 39
    :cond_6
    invoke-interface {v0, p1}, Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;->shouldLimitPanelWidth(I)Z

    move-result p1

    return p1
.end method

.method public updatePanelPosMargins(Lmiuix/appcompat/app/DialogContract$PanelPosSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;Landroid/graphics/Rect;)I
    .registers 5

    .line 50
    iget-object v0, p0, Lmiuix/appcompat/app/DialogDisplayStrategy;->mPanelBehavior:Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 53
    :cond_6
    invoke-interface {v0, p1, p2, p3}, Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;->calcPanelPosition(Lmiuix/appcompat/app/DialogContract$PanelPosSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method
