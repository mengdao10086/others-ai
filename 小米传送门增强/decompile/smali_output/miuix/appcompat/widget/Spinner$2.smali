.class Lmiuix/appcompat/widget/Spinner$2;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .registers 2

    .line 741
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$2;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 744
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$2;->this$0:Lmiuix/appcompat/widget/Spinner;

    # getter for: Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;
    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->access$400(Lmiuix/appcompat/widget/Spinner;)Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 745
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$2;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->showPopup()V

    .line 747
    :cond_11
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$2;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 749
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1c
    return-void
.end method
