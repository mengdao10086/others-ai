.class public Lmiuix/animation/Folme$ObjectFolmeImpl;
.super Lmiuix/animation/Folme$SimpleFolmeImpl;
.source "Folme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/Folme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectFolmeImpl"
.end annotation


# direct methods
.method private constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .registers 3

    const/4 v0, 0x0

    .line 616
    invoke-direct {p0, p1, v0}, Lmiuix/animation/Folme$SimpleFolmeImpl;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/Folme$1;)V
    .registers 3

    .line 613
    invoke-direct {p0, p1}, Lmiuix/animation/Folme$ObjectFolmeImpl;-><init>(Lmiuix/animation/IAnimTarget;)V

    return-void
.end method


# virtual methods
.method public blink()Lmiuix/animation/IBlinkStyle;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hover()Lmiuix/animation/IHoverStyle;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public touch()Lmiuix/animation/ITouchStyle;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visible()Lmiuix/animation/IVisibleStyle;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method
