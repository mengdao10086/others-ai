.class public Lmiuix/core/util/WindowBaseInfo;
.super Ljava/lang/Object;
.source "WindowBaseInfo.java"


# instance fields
.field public modeDirty:Z

.field public sizeDirty:Z

.field public windowDensity:F

.field public windowMode:I

.field public windowSize:Landroid/graphics/Point;

.field public windowSizeDp:Landroid/graphics/Point;

.field public windowType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 18
    iput-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    .line 20
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 21
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public isDirty()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
