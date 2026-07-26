.class Lmiuix/internal/widget/ActionSheetController$6;
.super Ljava/lang/Object;
.source "ActionSheetController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ActionSheetController;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/widget/ActionSheetController;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/ActionSheetController;)V
    .registers 2

    .line 634
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController$6;->this$0:Lmiuix/internal/widget/ActionSheetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 637
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$6;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lmiuix/internal/widget/ActionSheetController;->access$400(Lmiuix/internal/widget/ActionSheetController;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 639
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController$6;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # invokes: Lmiuix/internal/widget/ActionSheetController;->updateContentPanelMarginByWindowInsetsListener(Landroid/view/WindowInsets;)V
    invoke-static {v1, v0}, Lmiuix/internal/widget/ActionSheetController;->access$600(Lmiuix/internal/widget/ActionSheetController;Landroid/view/WindowInsets;)V

    :cond_15
    return-void
.end method
