.class Lmiuix/appcompat/internal/app/widget/ActionBarView$7;
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

    .line 346
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 349
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$7;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mLogoNavItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    return-void
.end method
