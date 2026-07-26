.class Lmiuix/appcompat/internal/app/widget/ActionBarView$9;
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

    .line 360
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$9;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 363
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$9;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v0, v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mUserSubTitleClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    .line 364
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_9
    return-void
.end method
