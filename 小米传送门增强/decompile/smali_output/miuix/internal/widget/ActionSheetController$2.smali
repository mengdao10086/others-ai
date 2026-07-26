.class Lmiuix/internal/widget/ActionSheetController$2;
.super Ljava/lang/Object;
.source "ActionSheetController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 130
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController$2;->this$0:Lmiuix/internal/widget/ActionSheetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    .line 135
    instance-of v0, p1, Lmiuix/internal/widget/ArrowActionSheet;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 136
    move-object v2, p1

    check-cast v2, Lmiuix/internal/widget/ArrowActionSheet;

    invoke-virtual {v2}, Lmiuix/internal/widget/ArrowActionSheet;->isDismissForShift()Z

    move-result v2

    goto :goto_1a

    .line 137
    :cond_d
    instance-of v2, p1, Lmiuix/internal/widget/AlertActionSheet;

    if-eqz v2, :cond_19

    .line 138
    move-object v2, p1

    check-cast v2, Lmiuix/internal/widget/AlertActionSheet;

    invoke-virtual {v2}, Lmiuix/internal/widget/AlertActionSheet;->isDismissForShift()Z

    move-result v2

    goto :goto_1a

    :cond_19
    move v2, v1

    .line 140
    :goto_1a
    iget-object v3, p0, Lmiuix/internal/widget/ActionSheetController$2;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v3}, Lmiuix/internal/widget/ActionSheetController;->access$100(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v3

    if-eqz v3, :cond_40

    if-nez v2, :cond_40

    .line 141
    iget-object v2, p0, Lmiuix/internal/widget/ActionSheetController$2;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v2}, Lmiuix/internal/widget/ActionSheetController;->access$100(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    if-eqz v0, :cond_36

    .line 144
    move-object v2, p1

    check-cast v2, Lmiuix/internal/widget/ArrowActionSheet;

    invoke-virtual {v2, v1}, Lmiuix/internal/widget/ArrowActionSheet;->setIsFromAlertShape(Z)V

    goto :goto_40

    .line 145
    :cond_36
    instance-of v2, p1, Lmiuix/internal/widget/AlertActionSheet;

    if-eqz v2, :cond_40

    .line 146
    move-object v2, p1

    check-cast v2, Lmiuix/internal/widget/AlertActionSheet;

    invoke-virtual {v2, v1}, Lmiuix/internal/widget/AlertActionSheet;->setIsFromArrowShape(Z)V

    :cond_40
    :goto_40
    if-eqz v0, :cond_48

    .line 151
    check-cast p1, Lmiuix/internal/widget/ArrowActionSheet;

    invoke-virtual {p1, v1}, Lmiuix/internal/widget/ArrowActionSheet;->setIsDismissForShift(Z)V

    goto :goto_51

    .line 152
    :cond_48
    instance-of v0, p1, Lmiuix/internal/widget/AlertActionSheet;

    if-eqz v0, :cond_51

    .line 153
    check-cast p1, Lmiuix/internal/widget/AlertActionSheet;

    invoke-virtual {p1, v1}, Lmiuix/internal/widget/AlertActionSheet;->setIsDismissForShift(Z)V

    :cond_51
    :goto_51
    return-void
.end method
