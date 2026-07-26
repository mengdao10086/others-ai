.class Lmiuix/internal/widget/ActionSheetController$1;
.super Ljava/lang/Object;
.source "ActionSheetController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    .line 114
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController$1;->this$0:Lmiuix/internal/widget/ActionSheetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4

    .line 119
    instance-of v0, p1, Lmiuix/internal/widget/ArrowActionSheet;

    if-eqz v0, :cond_c

    .line 120
    move-object v0, p1

    check-cast v0, Lmiuix/internal/widget/ArrowActionSheet;

    invoke-virtual {v0}, Lmiuix/internal/widget/ArrowActionSheet;->isFromAlertShape()Z

    move-result v0

    goto :goto_19

    .line 121
    :cond_c
    instance-of v0, p1, Lmiuix/internal/widget/AlertActionSheet;

    if-eqz v0, :cond_18

    .line 122
    move-object v0, p1

    check-cast v0, Lmiuix/internal/widget/AlertActionSheet;

    invoke-virtual {v0}, Lmiuix/internal/widget/AlertActionSheet;->isFromArrowShape()Z

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 124
    :goto_19
    iget-object v1, p0, Lmiuix/internal/widget/ActionSheetController$1;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;
    invoke-static {v1}, Lmiuix/internal/widget/ActionSheetController;->access$000(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    if-eqz v1, :cond_2c

    if-nez v0, :cond_2c

    .line 125
    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$1;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;
    invoke-static {v0}, Lmiuix/internal/widget/ActionSheetController;->access$000(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_2c
    return-void
.end method
