.class public final synthetic Lmiuix/animation/motion/MotionConverter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/animation/function/Function;


# instance fields
.field public final synthetic f$0:Lmiuix/animation/motion/MotionConverter$1;


# direct methods
.method public synthetic constructor <init>(Lmiuix/animation/motion/MotionConverter$1;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/animation/motion/MotionConverter$1$$ExternalSyntheticLambda0;->f$0:Lmiuix/animation/motion/MotionConverter$1;

    return-void
.end method


# virtual methods
.method public final apply(D)D
    .registers 4

    .line 0
    iget-object v0, p0, Lmiuix/animation/motion/MotionConverter$1$$ExternalSyntheticLambda0;->f$0:Lmiuix/animation/motion/MotionConverter$1;

    invoke-static {v0, p1, p2}, Lmiuix/animation/motion/MotionConverter$1;->$r8$lambda$wSJQnDNubONKrq27NgJ6CLM82Bg(Lmiuix/animation/motion/MotionConverter$1;D)D

    move-result-wide p1

    return-wide p1
.end method
