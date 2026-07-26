.class public final synthetic Lmiuix/animation/function/UnderDamping$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/animation/function/Function;


# instance fields
.field public final synthetic f$0:Lmiuix/animation/function/UnderDamping;


# direct methods
.method public synthetic constructor <init>(Lmiuix/animation/function/UnderDamping;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/animation/function/UnderDamping$$ExternalSyntheticLambda0;->f$0:Lmiuix/animation/function/UnderDamping;

    return-void
.end method


# virtual methods
.method public final apply(D)D
    .registers 4

    .line 0
    iget-object v0, p0, Lmiuix/animation/function/UnderDamping$$ExternalSyntheticLambda0;->f$0:Lmiuix/animation/function/UnderDamping;

    invoke-static {v0, p1, p2}, Lmiuix/animation/function/UnderDamping;->$r8$lambda$j7BITMpRC91UdUWPgfdsRKzvsxo(Lmiuix/animation/function/UnderDamping;D)D

    move-result-wide p1

    return-wide p1
.end method
