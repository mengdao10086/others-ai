.class public Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TaplusSegmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SegmentViewHolder"
.end annotation


# instance fields
.field public mSegmentText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;Landroid/widget/TextView;)V
    .registers 3

    .line 304
    iput-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    .line 305
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 306
    iput-object p2, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method bindViewHolder(I)V
    .registers 4

    .line 310
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-static {v1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->-$$Nest$fgetmSegments(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/data/recognition/WordBean;

    invoke-virtual {v1}, Lcom/miui/contentextension/data/recognition/WordBean;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-static {v1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->-$$Nest$fgetmSelectors(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
