.class Lmiuix/recyclerview/card/CardGroupAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "CardGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/recyclerview/card/CardGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/recyclerview/card/CardGroupAdapter;


# direct methods
.method constructor <init>(Lmiuix/recyclerview/card/CardGroupAdapter;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lmiuix/recyclerview/card/CardGroupAdapter$1;->this$0:Lmiuix/recyclerview/card/CardGroupAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 51
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 52
    iget-object v0, p0, Lmiuix/recyclerview/card/CardGroupAdapter$1;->this$0:Lmiuix/recyclerview/card/CardGroupAdapter;

    invoke-virtual {v0}, Lmiuix/recyclerview/card/CardGroupAdapter;->updateGroupInfo()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3

    .line 57
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 58
    iget-object p1, p0, Lmiuix/recyclerview/card/CardGroupAdapter$1;->this$0:Lmiuix/recyclerview/card/CardGroupAdapter;

    invoke-virtual {p1}, Lmiuix/recyclerview/card/CardGroupAdapter;->updateGroupInfo()V

    return-void
.end method
