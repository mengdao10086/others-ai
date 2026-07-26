.class Lmiuix/internal/widget/ActionSheetController$5;
.super Ljava/lang/Object;
.source "ActionSheetController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ActionSheetController;->installContent(Landroid/os/Bundle;)V
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

    .line 369
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController$5;->this$0:Lmiuix/internal/widget/ActionSheetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 372
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController$5;->this$0:Lmiuix/internal/widget/ActionSheetController;

    iget-boolean v0, p1, Lmiuix/internal/widget/ActionSheetController;->mCanceledOnTouchOutside:Z

    if-eqz v0, :cond_b

    .line 373
    iget-object p1, p1, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_b
    return-void
.end method
