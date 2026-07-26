.class Lmiuix/appcompat/internal/app/widget/SearchActionModeView$1;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$1;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 155
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$1;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$1;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 156
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$1;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/view/inputmethod/InputMethodHelper;->getInstance(Landroid/content/Context;)Lmiuix/view/inputmethod/InputMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$1;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    # getter for: Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/view/inputmethod/InputMethodHelper;->showKeyBoard(Landroid/widget/EditText;)V

    :cond_27
    return-void
.end method
