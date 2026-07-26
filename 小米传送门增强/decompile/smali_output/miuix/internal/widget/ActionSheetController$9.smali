.class Lmiuix/internal/widget/ActionSheetController$9;
.super Ljava/lang/Object;
.source "ActionSheetController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ActionSheetController;->setupContent()V
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

    .line 903
    iput-object p1, p0, Lmiuix/internal/widget/ActionSheetController$9;->this$0:Lmiuix/internal/widget/ActionSheetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_9

    .line 908
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_MIDDLE:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    invoke-static {p1, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    .line 910
    :cond_9
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController$9;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mSeparateClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p1}, Lmiuix/internal/widget/ActionSheetController;->access$800(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 911
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController$9;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # getter for: Lmiuix/internal/widget/ActionSheetController;->mSeparateClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p1}, Lmiuix/internal/widget/ActionSheetController;->access$800(Lmiuix/internal/widget/ActionSheetController;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lmiuix/internal/widget/ActionSheetController$9;->this$0:Lmiuix/internal/widget/ActionSheetController;

    iget-object v0, v0, Lmiuix/internal/widget/ActionSheetController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 913
    :cond_1f
    iget-object p1, p0, Lmiuix/internal/widget/ActionSheetController$9;->this$0:Lmiuix/internal/widget/ActionSheetController;

    # invokes: Lmiuix/internal/widget/ActionSheetController;->handleDismiss()V
    invoke-static {p1}, Lmiuix/internal/widget/ActionSheetController;->access$900(Lmiuix/internal/widget/ActionSheetController;)V

    return-void
.end method
