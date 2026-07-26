.class public final synthetic Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda5;->f$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 2

    .line 0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticLambda5;->f$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->collapseActionView()V

    return-void
.end method
