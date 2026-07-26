.class Lmiuix/appcompat/widget/HyperPopupWindow$1;
.super Ljava/lang/Object;
.source "HyperPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;->show(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/HyperPopupWindow;


# direct methods
.method public static synthetic $r8$lambda$4OMLHy-4aAv5Ncr2yly-2Luyqro(Lmiuix/appcompat/widget/HyperPopupWindow$1;Landroid/widget/ListAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lmiuix/appcompat/widget/HyperPopupWindow$1;->lambda$onItemClick$0(Landroid/widget/ListAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$7XjpGEqLMdzWsD6ecQFuqFHSIuo(Lmiuix/appcompat/widget/HyperPopupWindow$1;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$1;->lambda$onItemClick$1(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Landroid/widget/ListAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    .line 156
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    sget p3, Lmiuix/appcompat/R$id;->tag_secondary_popup_menu_item_head:I

    if-ne p2, p3, :cond_e

    .line 157
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->collapseSecondaryMenu()V
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$900(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    return-void

    .line 160
    :cond_e
    instance-of p2, p1, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;

    if-eqz p2, :cond_25

    .line 161
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->getTextItem(Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;
    invoke-static {p2, p1, p4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$300(Lmiuix/appcompat/widget/HyperPopupWindow;Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    move-result-object p2

    if-eqz p2, :cond_25

    .line 163
    iget-boolean p2, p2, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isHeaderItem:Z

    if-nez p2, :cond_25

    .line 164
    move-object p2, p1

    check-cast p2, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;

    long-to-int p3, p5

    invoke-virtual {p2, p3}, Lmiuix/appcompat/view/menu/HyperSecondaryAdapter;->resumeSecondaryItemClickStatus(I)V

    .line 167
    :cond_25
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMenuItemClickListener:Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$700(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_3c

    .line 168
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMenuItemClickListener:Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$700(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    move-result-object p2

    invoke-interface {p1, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-interface {p2, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)V

    .line 170
    :cond_3c
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Landroid/view/View;)V
    .registers 2

    .line 179
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->collapseSecondaryMenu()V
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$900(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 140
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    if-eqz p1, :cond_45

    .line 141
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-virtual {p1, p4, p5}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->getSecondaryAdapterByItemId(J)Landroid/widget/BaseAdapter;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v1

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->getTextItem(Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;
    invoke-static {v0, v1, p3}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$300(Lmiuix/appcompat/widget/HyperPopupWindow;Ljava/lang/Object;I)Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 144
    iget-boolean v0, v0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->isExpandable:Z

    if-nez v0, :cond_46

    .line 146
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object v0

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    long-to-int p4, p4

    invoke-virtual {v0, p4, p3}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->resumePrimaryItemClickStatus(II)V

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    .line 149
    :cond_46
    :goto_46
    iget-object p4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p4

    if-nez p4, :cond_bc

    if-eqz p1, :cond_6e

    .line 152
    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    new-instance p4, Lmiuix/appcompat/widget/HyperPopupWindow$SecondaryPopupWindowStrategy;

    invoke-direct {p4}, Lmiuix/appcompat/widget/HyperPopupWindow$SecondaryPopupWindowStrategy;-><init>()V

    # setter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryPopupStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;
    invoke-static {p3, p4}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$502(Lmiuix/appcompat/widget/HyperPopupWindow;Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    .line 153
    iget-object p3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->expandSecondaryMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V
    invoke-static {p3, p2, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$600(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/view/View;Landroid/widget/ListAdapter;)V

    .line 155
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mSecondaryContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$400(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p2

    new-instance p3, Lmiuix/appcompat/widget/HyperPopupWindow$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$1$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$1;Landroid/widget/ListAdapter;)V

    invoke-virtual {p2, p3}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_a8

    .line 173
    :cond_6e
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMenuItemClickListener:Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$700(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    if-eqz p1, :cond_a3

    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p1

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_a3

    .line 174
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMenuItemClickListener:Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$700(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mMainPopContentHolder:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$100(Lmiuix/appcompat/widget/HyperPopupWindow;)Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    move-result-object p2

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$200(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    invoke-interface {p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)V

    .line 176
    :cond_a3
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    .line 178
    :goto_a8
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$1;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow;->mContainer:Landroid/view/ViewGroup;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$800(Lmiuix/appcompat/widget/HyperPopupWindow;)Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$id;->mask:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 179
    new-instance p2, Lmiuix/appcompat/widget/HyperPopupWindow$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lmiuix/appcompat/widget/HyperPopupWindow$1$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_bc
    return-void
.end method
