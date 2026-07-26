.class Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/Spinner$DropdownPopup;-><init>(Lmiuix/appcompat/widget/Spinner;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

.field final synthetic val$this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public static synthetic $r8$lambda$9aBwTvFuUbIxzJT3ZDjC1Wf6YQ4(Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->lambda$onItemClick$0()V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;Lmiuix/appcompat/widget/Spinner;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1194
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->val$this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0()V
    .registers 2

    .line 1203
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1197
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p3}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 1198
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    # invokes: Lmiuix/appcompat/widget/Spinner;->vibrate()V
    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->access$600(Lmiuix/appcompat/widget/Spinner;)V

    .line 1199
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 1200
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    iget-object v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, p2, p3, v2, v3}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1202
    :cond_25
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    new-instance v1, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;)V

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Spinner;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1205
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    # getter for: Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mPopupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->access$700(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1206
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;->this$1:Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    # getter for: Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mPopupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->access$700(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_48
    return-void
.end method
