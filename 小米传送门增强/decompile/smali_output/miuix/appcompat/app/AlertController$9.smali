.class Lmiuix/appcompat/app/AlertController$9;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V
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

    .line 2825
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$9;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2828
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$9;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$400(Lmiuix/appcompat/app/AlertController;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2831
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$9;->this$0:Lmiuix/appcompat/app/AlertController;

    # invokes: Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V
    invoke-static {v1, v0}, Lmiuix/appcompat/app/AlertController;->access$2900(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V

    :cond_15
    return-void
.end method
