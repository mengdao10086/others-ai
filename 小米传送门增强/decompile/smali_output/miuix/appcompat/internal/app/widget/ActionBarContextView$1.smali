.class Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 141
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 142
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method
