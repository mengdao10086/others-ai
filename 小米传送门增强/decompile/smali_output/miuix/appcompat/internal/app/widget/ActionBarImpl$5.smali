.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastWidth:I

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method public static synthetic $r8$lambda$VBjL__c9DLk1QV2vfeVIDz7FE-4(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lambda$onLayoutChange$0()V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 396
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0()V
    .registers 4

    .line 406
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object v1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mContextView:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    move-result-object v2

    # invokes: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->applyActionBarStrategy(Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    sub-int/2addr p4, p2

    .line 402
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    if-ne p1, p4, :cond_d

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsWindowInfoChanged:Z
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 403
    :cond_d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    const/4 p2, 0x0

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mIsWindowInfoChanged:Z
    invoke-static {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    .line 404
    iput p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    .line 405
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionView:Lmiuix/appcompat/internal/app/widget/ActionBarView;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    move-result-object p1

    new-instance p2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method
