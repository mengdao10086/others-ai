.class public Lmiuix/view/WindowInsetsController$InsetsConfig;
.super Ljava/lang/Object;
.source "WindowInsetsController.java"


# instance fields
.field public ignoreBottomInset:Z

.field public ignoreLeftInset:Z

.field public ignoreRightInset:Z

.field public ignoreTopInset:Z

.field public isFloatingMode:Z

.field public renderUnderBottomDecorations:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFloatingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->isFloatingMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renderUnderBottomDecorations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->renderUnderBottomDecorations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreLeftInset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreLeftInset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreTopInset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreTopInset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreRightInset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreRightInset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,ignoreBottomInset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreBottomInset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lmiuix/view/WindowInsetsController$InsetsConfig;)Z
    .registers 6

    .line 48
    iget-boolean v0, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->isFloatingMode:Z

    iget-boolean v1, p1, Lmiuix/view/WindowInsetsController$InsetsConfig;->isFloatingMode:Z

    const/4 v2, 0x1

    if-eq v0, v1, :cond_b

    .line 49
    iput-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->isFloatingMode:Z

    move v0, v2

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 52
    :goto_c
    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->renderUnderBottomDecorations:Z

    iget-boolean v3, p1, Lmiuix/view/WindowInsetsController$InsetsConfig;->renderUnderBottomDecorations:Z

    if-eq v1, v3, :cond_15

    .line 53
    iput-boolean v3, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->renderUnderBottomDecorations:Z

    move v0, v2

    .line 56
    :cond_15
    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreLeftInset:Z

    iget-boolean v3, p1, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreLeftInset:Z

    if-eq v1, v3, :cond_1e

    .line 57
    iput-boolean v3, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreLeftInset:Z

    move v0, v2

    .line 60
    :cond_1e
    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreTopInset:Z

    iget-boolean v3, p1, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreTopInset:Z

    if-eq v1, v3, :cond_27

    .line 61
    iput-boolean v3, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreTopInset:Z

    move v0, v2

    .line 64
    :cond_27
    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreRightInset:Z

    iget-boolean v3, p1, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreRightInset:Z

    if-eq v1, v3, :cond_30

    .line 65
    iput-boolean v3, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreRightInset:Z

    move v0, v2

    .line 68
    :cond_30
    iget-boolean v1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreBottomInset:Z

    iget-boolean p1, p1, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreBottomInset:Z

    if-eq v1, p1, :cond_39

    .line 69
    iput-boolean p1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreBottomInset:Z

    goto :goto_3a

    :cond_39
    move v2, v0

    :goto_3a
    return v2
.end method

.method public update(ZZZZZZ)Z
    .registers 9

    .line 19
    iget-boolean v0, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->isFloatingMode:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    .line 20
    iput-boolean p1, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->isFloatingMode:Z

    move p1, v1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 23
    :goto_a
    iget-boolean v0, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->renderUnderBottomDecorations:Z

    if-eq v0, p2, :cond_11

    .line 24
    iput-boolean p2, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->renderUnderBottomDecorations:Z

    move p1, v1

    .line 27
    :cond_11
    iget-boolean p2, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreLeftInset:Z

    if-eq p2, p3, :cond_18

    .line 28
    iput-boolean p3, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreLeftInset:Z

    move p1, v1

    .line 31
    :cond_18
    iget-boolean p2, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreTopInset:Z

    if-eq p2, p4, :cond_1f

    .line 32
    iput-boolean p4, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreTopInset:Z

    move p1, v1

    .line 35
    :cond_1f
    iget-boolean p2, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreRightInset:Z

    if-eq p2, p5, :cond_26

    .line 36
    iput-boolean p5, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreRightInset:Z

    move p1, v1

    .line 39
    :cond_26
    iget-boolean p2, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreBottomInset:Z

    if-eq p2, p6, :cond_2d

    .line 40
    iput-boolean p6, p0, Lmiuix/view/WindowInsetsController$InsetsConfig;->ignoreBottomInset:Z

    goto :goto_2e

    :cond_2d
    move v1, p1

    :goto_2e
    return v1
.end method
