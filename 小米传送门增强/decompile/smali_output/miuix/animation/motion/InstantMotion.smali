.class public abstract Lmiuix/animation/motion/InstantMotion;
.super Lmiuix/animation/motion/BaseMotion;
.source "InstantMotion.java"

# interfaces
.implements Lmiuix/animation/motion/Motion;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lmiuix/animation/motion/BaseMotion;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishTime()D
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
