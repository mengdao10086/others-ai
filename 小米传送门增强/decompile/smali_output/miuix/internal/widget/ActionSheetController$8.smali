.class Lmiuix/internal/widget/ActionSheetController$8;
.super Ljava/lang/Object;
.source "ActionSheetController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


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
.method public static synthetic $r8$lambda$GBq-kZ01BvtgMnnXnaHDrYqlePo(Lmiuix/internal/widget/ActionSheetController$8;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ActionSheetController$8;->lambda$onApplyWindowInsets$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lmiuix/internal/widget/ActionSheetController;)V
    .registers 2

    .line 696
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController$8;->this$0:Lmiuix/internal/widget/ActionSheetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onApplyWindowInsets$0(Landroid/view/View;)V
    .registers 3

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 704
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$8;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # invokes: Lmiuix/internal/widget/ActionSheetController;->updateContentPanelMarginByWindowInsetsListener(Landroid/view/WindowInsets;)V
    invoke-static {v0, p1}, Lmiuix/internal/widget/ActionSheetController;->access$600(Lmiuix/internal/widget/ActionSheetController;Landroid/view/WindowInsets;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 700
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$8;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # invokes: Lmiuix/internal/widget/ActionSheetController;->updateContentPanelMarginByWindowInsetsListener(Landroid/view/WindowInsets;)V
    invoke-static {v0, p2}, Lmiuix/internal/widget/ActionSheetController;->access$600(Lmiuix/internal/widget/ActionSheetController;Landroid/view/WindowInsets;)V

    .line 701
    new-instance p2, Lmiuix/internal/widget/ActionSheetController$8$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lmiuix/internal/widget/ActionSheetController$8$$ExternalSyntheticLambda0;-><init>(Lmiuix/internal/widget/ActionSheetController$8;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 707
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1
.end method
