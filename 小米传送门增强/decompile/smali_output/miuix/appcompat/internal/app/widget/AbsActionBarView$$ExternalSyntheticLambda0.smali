.class public final synthetic Lmiuix/appcompat/internal/app/widget/AbsActionBarView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->showOverflowMenu()Z

    return-void
.end method
