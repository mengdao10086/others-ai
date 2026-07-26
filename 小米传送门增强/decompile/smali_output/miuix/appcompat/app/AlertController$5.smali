.class Lmiuix/appcompat/app/AlertController$5;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->installContent(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 2

    .line 560
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$5;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 563
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$5;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 565
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$5;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;

    move-result-object v1

    # invokes: Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/view/View;)V
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$900(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V

    .line 568
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$5;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 569
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$5;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    .line 570
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$5;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->access$1000(Lmiuix/appcompat/app/AlertController;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 571
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$5;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    invoke-static {v2, v1, v0}, Lmiuix/appcompat/app/AlertController;->access$1100(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    :cond_3e
    return-void
.end method
