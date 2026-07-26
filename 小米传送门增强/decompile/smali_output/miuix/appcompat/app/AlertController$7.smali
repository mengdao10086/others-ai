.class Lmiuix/appcompat/app/AlertController$7;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->setupWindowInsetsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isTablet:Z

.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;I)V
    .registers 3

    .line 1672
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    const/4 p1, 0x0

    .line 1674
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 5

    .line 1734
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 1735
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    const/4 v0, 0x1

    # setter for: Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertController;->access$2002(Lmiuix/appcompat/app/AlertController;Z)Z

    .line 1736
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$400(Lmiuix/appcompat/app/AlertController;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 1738
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 1740
    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    if-gtz v1, :cond_3a

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3a

    .line 1741
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    const/4 v2, 0x0

    # invokes: Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V
    invoke-static {v1, v2}, Lmiuix/appcompat/app/AlertController;->access$2500(Lmiuix/appcompat/app/AlertController;I)V

    .line 1743
    :cond_3a
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V
    invoke-static {v1, p1}, Lmiuix/appcompat/app/AlertController;->access$2700(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V

    .line 1744
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    if-nez p1, :cond_4a

    .line 1745
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    # invokes: Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertController;->access$2600(Lmiuix/appcompat/app/AlertController;I)V

    :cond_4a
    return-void
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 3

    .line 1678
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onPrepare(Landroid/view/WindowInsetsAnimation;)V

    if-eqz p1, :cond_19

    .line 1679
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController$7$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsAnimation;)I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr p1, v0

    if-lez p1, :cond_19

    .line 1681
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$1900(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/widget/DialogAnimHelper;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->cancelAnimator()V

    .line 1683
    :cond_19
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    const/4 v0, 0x0

    # setter for: Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertController;->access$2002(Lmiuix/appcompat/app/AlertController;Z)Z

    .line 1684
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->isTablet()Z
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$2100(Lmiuix/appcompat/app/AlertController;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 8
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

    .line 1711
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    .line 1712
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 1713
    iget v1, p2, Landroid/graphics/Insets;->bottom:I

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->access$2200(Lmiuix/appcompat/app/AlertController;)I

    move-result v2

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1714
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 1715
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->access$2400(Lmiuix/appcompat/app/AlertController;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowInsetsAnimation onProgress mPanelAndImeMargin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I
    invoke-static {v3}, Lmiuix/appcompat/app/AlertController;->access$2200(Lmiuix/appcompat/app/AlertController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlertController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowInsetsAnimation onProgress ime : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowInsetsAnimation onProgress navigationBar : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    if-gez v1, :cond_7d

    const/4 p2, 0x0

    goto :goto_7e

    :cond_7d
    move p2, v1

    .line 1724
    :goto_7e
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    neg-int p2, p2

    # invokes: Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V
    invoke-static {v0, p2}, Lmiuix/appcompat/app/AlertController;->access$2500(Lmiuix/appcompat/app/AlertController;I)V

    .line 1726
    :cond_84
    iget-boolean p2, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    if-nez p2, :cond_8d

    .line 1727
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V
    invoke-static {p2, v1}, Lmiuix/appcompat/app/AlertController;->access$2600(Lmiuix/appcompat/app/AlertController;I)V

    :cond_8d
    return-object p1
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 6

    .line 1696
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2300(Lmiuix/appcompat/app/AlertController;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    # setter for: Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$2202(Lmiuix/appcompat/app/AlertController;I)I

    .line 1697
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2400(Lmiuix/appcompat/app/AlertController;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowInsetsAnimation onStart mPanelAndImeMargin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$2200(Lmiuix/appcompat/app/AlertController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :cond_3a
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$2200(Lmiuix/appcompat/app/AlertController;)I

    move-result v0

    if-gtz v0, :cond_48

    .line 1701
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    const/4 v1, 0x0

    # setter for: Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$2202(Lmiuix/appcompat/app/AlertController;I)I

    .line 1703
    :cond_48
    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p1

    return-object p1
.end method
