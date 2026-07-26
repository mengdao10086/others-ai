.class Lmiuix/appcompat/internal/app/widget/ActionBarView$6;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 339
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$6;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandedMenuPresenter:Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object p1

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_d

    .line 341
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_d
    return-void
.end method
