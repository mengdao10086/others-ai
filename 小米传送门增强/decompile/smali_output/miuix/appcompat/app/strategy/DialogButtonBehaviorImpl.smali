.class public Lmiuix/appcompat/app/strategy/DialogButtonBehaviorImpl;
.super Ljava/lang/Object;
.source "DialogButtonBehaviorImpl.java"

# interfaces
.implements Lmiuix/appcompat/app/strategy/IDialogButtonBehavior;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isButtonScrollable(Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;)Z
    .registers 9

    .line 12
    iget v0, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mButtonFVHeight:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    return v1

    .line 16
    :cond_6
    iget v0, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mWindowHeight:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 18
    iget v3, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mButtonPanelHeight:I

    iget v4, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mButtonFVHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 20
    iget v5, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mTopPanelHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v0

    .line 21
    iget-boolean v0, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mIsFlipTiny:Z

    if-eqz v0, :cond_2b

    iget v4, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mWindowOrientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2b

    move v4, v2

    goto :goto_2c

    :cond_2b
    move v4, v1

    .line 24
    :goto_2c
    iget-boolean v6, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mHasListView:Z

    if-nez v6, :cond_3f

    if-nez v0, :cond_38

    iget v0, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mRootViewSizeYDp:I

    const/16 v6, 0x1e0

    if-gt v0, v6, :cond_3f

    :cond_38
    iget v0, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mVisibleButtonCount:I

    const/4 v6, 0x3

    if-lt v0, v6, :cond_3f

    move v0, v2

    goto :goto_40

    :cond_3f
    move v0, v1

    .line 28
    :goto_40
    iget-boolean p1, p1, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->mIsLargeFont:Z

    if-eqz p1, :cond_48

    const v6, 0x3e99999a    # 0.3f

    goto :goto_4b

    :cond_48
    const v6, 0x3ecccccd    # 0.4f

    :goto_4b
    if-eqz p1, :cond_51

    const p1, 0x3eb33333    # 0.35f

    goto :goto_54

    :cond_51
    const p1, 0x3ee66666    # 0.45f

    :goto_54
    cmpl-float v3, v3, v6

    if-gez v3, :cond_60

    cmpl-float p1, v5, p1

    if-gez p1, :cond_60

    if-nez v0, :cond_60

    if-eqz v4, :cond_61

    :cond_60
    move v1, v2

    :cond_61
    return v1
.end method
