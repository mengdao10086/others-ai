.class Lmiuix/internal/widget/ActionSheetController$3;
.super Ljava/lang/Object;
.source "ActionSheetController.java"

# interfaces
.implements Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/ActionSheetController;
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

    .line 159
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController$3;->this$0:Lmiuix/internal/widget/ActionSheetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAnimComplete()V
    .registers 4

    .line 170
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$3;->this$0:Lmiuix/internal/widget/ActionSheetController;

    const/4 v1, 0x0

    # setter for: Lmiuix/internal/widget/ActionSheetController;->mIsDialogAnimating:Z
    invoke-static {v0, v1}, Lmiuix/internal/widget/ActionSheetController;->access$202(Lmiuix/internal/widget/ActionSheetController;Z)Z

    .line 171
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$3;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    invoke-static {v0}, Lmiuix/internal/widget/ActionSheetController;->access$300(Lmiuix/internal/widget/ActionSheetController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 172
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$3;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    invoke-static {v0}, Lmiuix/internal/widget/ActionSheetController;->access$300(Lmiuix/internal/widget/ActionSheetController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 175
    :cond_17
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$3;->this$0:Lmiuix/internal/widget/ActionSheetController;

    iget-boolean v1, v0, Lmiuix/internal/widget/ActionSheetController;->mHasPendingDismiss:Z

    if-eqz v1, :cond_40

    iget-object v1, v0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v1, :cond_40

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lmiuix/internal/widget/ActionSheetController;->access$400(Lmiuix/internal/widget/ActionSheetController;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 176
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$3;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mWindow:Landroid/view/Window;
    invoke-static {v0}, Lmiuix/internal/widget/ActionSheetController;->access$400(Lmiuix/internal/widget/ActionSheetController;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController$3;->this$0:Lmiuix/internal/widget/ActionSheetController;

    iget-object v1, v1, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lmiuix/internal/widget/ActionSheetController$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lmiuix/internal/widget/ActionSheetController$3$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_40
    return-void
.end method

.method public onShowAnimStart()V
    .registers 3

    .line 162
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$3;->this$0:Lmiuix/internal/widget/ActionSheetController;

    const/4 v1, 0x1

    # setter for: Lmiuix/internal/widget/ActionSheetController;->mIsDialogAnimating:Z
    invoke-static {v0, v1}, Lmiuix/internal/widget/ActionSheetController;->access$202(Lmiuix/internal/widget/ActionSheetController;Z)Z

    .line 163
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$3;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    invoke-static {v0}, Lmiuix/internal/widget/ActionSheetController;->access$300(Lmiuix/internal/widget/ActionSheetController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 164
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$3;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    invoke-static {v0}, Lmiuix/internal/widget/ActionSheetController;->access$300(Lmiuix/internal/widget/ActionSheetController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    :cond_17
    return-void
.end method
