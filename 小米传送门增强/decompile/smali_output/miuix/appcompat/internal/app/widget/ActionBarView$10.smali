.class Lmiuix/appcompat/internal/app/widget/ActionBarView$10;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 369
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 376
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$800(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 377
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # setter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mInitCustomTitle:Ljava/lang/CharSequence;
    invoke-static {p2, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$902(Lmiuix/appcompat/internal/app/widget/ActionBarView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 379
    :cond_11
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 380
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$10;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    # getter for: Lmiuix/appcompat/internal/app/widget/ActionBarView;->mExpandTitle:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;
    invoke-static {p2}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$1000(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->setTitle(Ljava/lang/CharSequence;)V

    :cond_22
    return-void
.end method
