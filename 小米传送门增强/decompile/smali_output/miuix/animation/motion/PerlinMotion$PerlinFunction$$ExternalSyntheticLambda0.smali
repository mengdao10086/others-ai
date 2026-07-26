.class public final synthetic Lmiuix/animation/motion/PerlinMotion$PerlinFunction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/animation/function/Function;


# instance fields
.field public final synthetic f$0:Lmiuix/animation/motion/PerlinMotion$PerlinFunction;


# direct methods
.method public synthetic constructor <init>(Lmiuix/animation/motion/PerlinMotion$PerlinFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/animation/motion/PerlinMotion$PerlinFunction$$ExternalSyntheticLambda0;->f$0:Lmiuix/animation/motion/PerlinMotion$PerlinFunction;

    return-void
.end method


# virtual methods
.method public final apply(D)D
    .registers 4

    .line 0
    iget-object v0, p0, Lmiuix/animation/motion/PerlinMotion$PerlinFunction$$ExternalSyntheticLambda0;->f$0:Lmiuix/animation/motion/PerlinMotion$PerlinFunction;

    invoke-static {v0, p1, p2}, Lmiuix/animation/motion/PerlinMotion$PerlinFunction;->$r8$lambda$iYVrKmtbhxRc1Y6IwgfiRuZPV4o(Lmiuix/animation/motion/PerlinMotion$PerlinFunction;D)D

    move-result-wide p1

    return-wide p1
.end method
