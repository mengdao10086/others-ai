.class public Lmiuix/responsive/map/ResponsiveState;
.super Ljava/lang/Object;
.source "ResponsiveState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;
    }
.end annotation


# instance fields
.field private mActualWindowHeight:I

.field private mActualWindowWidth:I

.field private volatile mEstimateCategory:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private volatile mResponsiveWindowType:I

.field private volatile mScreenMode:I

.field private mWindowDensity:F

.field private mWindowHeightDp:I

.field private mWindowWidthDp:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setType(I)V

    const/16 v0, 0x1007

    .line 52
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setScreenMode(I)V

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setCategory(I)V

    .line 54
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowHeightDp(I)V

    .line 55
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowWidthDp(I)V

    .line 56
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowWidth(I)V

    .line 57
    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowHeight(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 151
    instance-of v0, p1, Lmiuix/responsive/map/ResponsiveState;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 152
    check-cast p1, Lmiuix/responsive/map/ResponsiveState;

    .line 154
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    iget v2, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_18

    sub-int/2addr v0, v2

    .line 155
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v3, :cond_16

    goto :goto_18

    :cond_16
    move v0, v1

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v3

    .line 156
    :goto_19
    iget v2, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    iget v4, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    if-eq v2, v4, :cond_29

    sub-int/2addr v2, v4

    .line 157
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v3, :cond_27

    goto :goto_29

    :cond_27
    move v2, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move v2, v3

    .line 158
    :goto_2a
    iget v4, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    iget v5, p1, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    if-ne v4, v5, :cond_3b

    iget v4, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    iget p1, p1, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    if-ne v4, p1, :cond_3b

    if-eqz v0, :cond_3b

    if-eqz v2, :cond_3b

    move v1, v3

    :cond_3b
    return v1
.end method

.method public getActualWindowHeight()I
    .registers 2

    .line 138
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    return v0
.end method

.method public getActualWindowWidth()I
    .registers 2

    .line 130
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    return v0
.end method

.method public getCategory()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    return v0
.end method

.method public getScreenMode()I
    .registers 2

    .line 96
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 88
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    return v0
.end method

.method public getWindowHeightDp()I
    .registers 2

    .line 112
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    return v0
.end method

.method public getWindowWidthDp()I
    .registers 2

    .line 104
    iget v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    return v0
.end method

.method public setActualWindowHeight(I)V
    .registers 2

    .line 134
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    return-void
.end method

.method public setActualWindowWidth(I)V
    .registers 2

    .line 126
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    return-void
.end method

.method public setCategory(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    return-void
.end method

.method public setScreenMode(I)V
    .registers 2

    .line 92
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    return-void
.end method

.method public setTo(Lmiuix/responsive/map/ResponsiveState;)V
    .registers 3

    if-eqz p1, :cond_1e

    .line 62
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    .line 63
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    .line 64
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    .line 65
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    .line 66
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    .line 67
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    iput v0, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    .line 68
    iget p1, p1, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mEstimateCategory:I

    :cond_1e
    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 84
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    return-void
.end method

.method public setWindowDensity(F)V
    .registers 2

    .line 142
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowDensity:F

    return-void
.end method

.method public setWindowHeightDp(I)V
    .registers 2

    .line 108
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    return-void
.end method

.method public setWindowWidthDp(I)V
    .registers 2

    .line 100
    iput p1, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    return-void
.end method

.method public toScreenSpec(Lmiuix/responsive/map/ScreenSpec;)V
    .registers 3

    .line 178
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getType()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->type:I

    .line 179
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getCategory()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->category:I

    .line 180
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getScreenMode()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    .line 181
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getWindowWidthDp()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->widthDp:I

    .line 182
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getWindowHeightDp()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->heightDp:I

    .line 183
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getActualWindowWidth()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->width:I

    .line 184
    invoke-virtual {p0}, Lmiuix/responsive/map/ResponsiveState;->getActualWindowHeight()I

    move-result v0

    iput v0, p1, Lmiuix/responsive/map/ScreenSpec;->height:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponsiveState@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "( type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mResponsiveWindowType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mScreenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windowDensity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wWidthDp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wHeightDp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mWindowHeightDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wWidth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wHeight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/responsive/map/ResponsiveState;->mActualWindowHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromWindowInfoWrapper(Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;)V
    .registers 3

    .line 73
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowType:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setType(I)V

    .line 74
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowMode:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setScreenMode(I)V

    .line 75
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidthDp:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowWidthDp(I)V

    .line 76
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeightDp:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowHeightDp(I)V

    .line 77
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowWidth:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowWidth(I)V

    .line 78
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowHeight:I

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setActualWindowHeight(I)V

    .line 79
    iget v0, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowDensity:F

    invoke-virtual {p0, v0}, Lmiuix/responsive/map/ResponsiveState;->setWindowDensity(F)V

    .line 80
    iget p1, p1, Lmiuix/responsive/map/ResponsiveState$WindowInfoWrapper;->windowCategory:I

    invoke-virtual {p0, p1}, Lmiuix/responsive/map/ResponsiveState;->setCategory(I)V

    return-void
.end method
