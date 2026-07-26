.class Lmiuix/appcompat/app/AlertController$8;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->setupWindowInsetsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public static synthetic $r8$lambda$g4nYfBJASh_5e43v3wxzlS842T4(Lmiuix/appcompat/app/AlertController$8;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController$8;->lambda$onApplyWindowInsets$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 2

    .line 1756
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onApplyWindowInsets$0(Landroid/view/View;)V
    .registers 3

    .line 1774
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1776
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V
    invoke-static {v0, p1}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    .line 1762
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2400(Lmiuix/appcompat/app/AlertController;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApplyWindowInsets insets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_1e
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2300(Lmiuix/appcompat/app/AlertController;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    # setter for: Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$2202(Lmiuix/appcompat/app/AlertController;I)I

    if-eqz p1, :cond_56

    if-eqz p2, :cond_56

    .line 1767
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1768
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->updateLayout(Landroid/view/View;)V

    .line 1770
    :cond_49
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$8;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V
    invoke-static {v0, p2}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V

    .line 1771
    new-instance p2, Lmiuix/appcompat/app/AlertController$8$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/app/AlertController$8$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AlertController$8;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1780
    :cond_56
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1
.end method
