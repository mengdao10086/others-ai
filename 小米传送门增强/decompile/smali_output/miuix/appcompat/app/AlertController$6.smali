.class Lmiuix/appcompat/app/AlertController$6;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->setupView(ZZZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;

.field final synthetic val$densityScale:F


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 966
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    iput p2, p0, Lmiuix/appcompat/app/AlertController$6;->val$densityScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 969
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 970
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_32

    .line 972
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->updateContent(Landroid/view/ViewGroup;)V
    invoke-static {v2, v0}, Lmiuix/appcompat/app/AlertController;->access$1400(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;)V

    if-eqz v1, :cond_32

    .line 973
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z
    invoke-static {v2}, Lmiuix/appcompat/app/AlertController;->access$1500(Lmiuix/appcompat/app/AlertController;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 974
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    invoke-static {v2, v1, v0}, Lmiuix/appcompat/app/AlertController;->access$1100(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 977
    :cond_32
    iget v0, p0, Lmiuix/appcompat/app/AlertController$6;->val$densityScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3f

    .line 978
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$6;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->updateViewOnDensityChanged(F)V
    invoke-static {v1, v0}, Lmiuix/appcompat/app/AlertController;->access$1600(Lmiuix/appcompat/app/AlertController;F)V

    :cond_3f
    return-void
.end method
