.class Lmiuix/internal/widget/ActionSheetController$7;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "ActionSheetController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ActionSheetController;->configWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/widget/ActionSheetController;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/ActionSheetController;I)V
    .registers 3

    .line 661
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController$7;->this$0:Lmiuix/internal/widget/ActionSheetController;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 3

    .line 688
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 689
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController$7;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;
    invoke-static {p1}, Lmiuix/internal/widget/ActionSheetController;->access$400(Lmiuix/internal/widget/ActionSheetController;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 690
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$7;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # invokes: Lmiuix/internal/widget/ActionSheetController;->updateContentPanelMarginByWindowInsetsListener(Landroid/view/WindowInsets;)V
    invoke-static {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->access$600(Lmiuix/internal/widget/ActionSheetController;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 3

    .line 665
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onPrepare(Landroid/view/WindowInsetsAnimation;)V

    if-eqz p1, :cond_19

    .line 666
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController$7$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsAnimation;)I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr p1, v0

    if-lez p1, :cond_19

    .line 668
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController$7;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;
    invoke-static {p1}, Lmiuix/internal/widget/ActionSheetController;->access$700(Lmiuix/internal/widget/ActionSheetController;)Lmiuix/appcompat/widget/DialogAnimHelper;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->cancelAnimator()V

    :cond_19
    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 0
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 3

    .line 676
    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p1

    return-object p1
.end method
