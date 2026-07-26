.class Lmiuix/internal/widget/ActionSheetController$10;
.super Ljava/lang/Object;
.source "ActionSheetController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ActionSheetController;->setupListView()V
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

    .line 926
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController$10;->this$0:Lmiuix/internal/widget/ActionSheetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 929
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 930
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController$10;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p1}, Lmiuix/internal/widget/ActionSheetController;->access$1000(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object p2, p0, Lmiuix/internal/widget/ActionSheetController$10;->this$0:Lmiuix/internal/widget/ActionSheetController;

    iget-object p2, p2, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 931
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController$10;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # invokes: Lmiuix/internal/widget/ActionSheetController;->handleDismiss()V
    invoke-static {p1}, Lmiuix/internal/widget/ActionSheetController;->access$900(Lmiuix/internal/widget/ActionSheetController;)V

    :cond_18
    return-void
.end method
