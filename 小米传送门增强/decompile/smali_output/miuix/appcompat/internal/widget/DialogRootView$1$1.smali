.class Lmiuix/appcompat/internal/widget/DialogRootView$1$1;
.super Ljava/lang/Object;
.source "DialogRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/widget/DialogRootView$1;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/appcompat/internal/widget/DialogRootView$1;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/widget/DialogRootView$1;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1$1;->this$1:Lmiuix/appcompat/internal/widget/DialogRootView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1$1;->this$1:Lmiuix/appcompat/internal/widget/DialogRootView$1;

    iget-object v0, v0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    # getter for: Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z
    invoke-static {v0}, Lmiuix/appcompat/internal/widget/DialogRootView;->access$000(Lmiuix/appcompat/internal/widget/DialogRootView;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1$1;->this$1:Lmiuix/appcompat/internal/widget/DialogRootView$1;

    iget-object v0, v0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 44
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1$1;->this$1:Lmiuix/appcompat/internal/widget/DialogRootView$1;

    iget-object v0, v0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1b
    return-void
.end method
