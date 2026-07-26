.class Lmiuix/appcompat/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public static synthetic $r8$lambda$q3cQREJURwUtQ2P0z_u7o4o09HQ(Lmiuix/appcompat/app/AlertController$2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController$2;->lambda$onShowAnimComplete$0()V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onShowAnimComplete$0()V
    .registers 2

    .line 303
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v0, v0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onShowAnimComplete()V
    .registers 3

    .line 295
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    const/4 v1, 0x0

    # setter for: Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$102(Lmiuix/appcompat/app/AlertController;Z)Z

    .line 296
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 297
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 300
    :cond_17
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$300(Lmiuix/appcompat/app/AlertController;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v1, :cond_3d

    # getter for: Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$400(Lmiuix/appcompat/app/AlertController;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 302
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$400(Lmiuix/appcompat/app/AlertController;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertController$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertController$2$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AlertController$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3d
    return-void
.end method

.method public onShowAnimStart()V
    .registers 3

    .line 287
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    const/4 v1, 0x1

    # setter for: Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z
    invoke-static {v0, v1}, Lmiuix/appcompat/app/AlertController;->access$102(Lmiuix/appcompat/app/AlertController;Z)Z

    .line 288
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 289
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$2;->this$0:Lmiuix/appcompat/app/AlertController;

    # getter for: Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController;->access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    :cond_17
    return-void
.end method
