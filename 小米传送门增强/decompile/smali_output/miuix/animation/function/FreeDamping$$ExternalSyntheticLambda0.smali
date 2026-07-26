.class public final synthetic Lmiuix/animation/function/FreeDamping$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/animation/function/Function;


# instance fields
.field public final synthetic f$0:Lmiuix/animation/function/FreeDamping;


# direct methods
.method public synthetic constructor <init>(Lmiuix/animation/function/FreeDamping;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/animation/function/FreeDamping$$ExternalSyntheticLambda0;->f$0:Lmiuix/animation/function/FreeDamping;

    return-void
.end method


# virtual methods
.method public final apply(D)D
    .registers 4

    .line 0
    iget-object v0, p0, Lmiuix/animation/function/FreeDamping$$ExternalSyntheticLambda0;->f$0:Lmiuix/animation/function/FreeDamping;

    invoke-static {v0, p1, p2}, Lmiuix/animation/function/FreeDamping;->$r8$lambda$exqCQmpweX8Ba-5QrxpNzudoqJo(Lmiuix/animation/function/FreeDamping;D)D

    move-result-wide p1

    return-wide p1
.end method
