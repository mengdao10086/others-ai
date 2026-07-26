.class public final synthetic Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiuix/animation/internal/AnimScheduler;


# direct methods
.method public synthetic constructor <init>(Lmiuix/animation/internal/AnimScheduler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda2;->f$0:Lmiuix/animation/internal/AnimScheduler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lmiuix/animation/internal/AnimScheduler$$ExternalSyntheticLambda2;->f$0:Lmiuix/animation/internal/AnimScheduler;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimScheduler;->update()V

    return-void
.end method
