.class public final synthetic Lmiuix/appcompat/app/ActionBarDelegateImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lmiuix/appcompat/app/ActionBarDelegateImpl$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    invoke-interface {v0}, Lmiuix/appcompat/app/ActionBarDelegate;->invalidateOptionsMenu()V

    return-void
.end method
