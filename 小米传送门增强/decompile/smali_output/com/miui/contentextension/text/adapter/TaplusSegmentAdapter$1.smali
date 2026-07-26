.class Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;
.super Ljava/lang/Object;
.source "TaplusSegmentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->onBindViewHolder(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

.field final synthetic val$position:I

.field final synthetic val$segmentViewHolder:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;ILcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    iput p2, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->val$segmentViewHolder:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 133
    iget v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->val$position:I

    if-ltz v0, :cond_66

    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-virtual {v1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_d

    goto :goto_66

    .line 136
    :cond_d
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-static {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->-$$Nest$fgetmClickListener(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 137
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-static {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->-$$Nest$fgetmClickListener(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 139
    :cond_1e
    iget-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-static {p1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->-$$Nest$fgetmSelectors(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iget v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 140
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->val$segmentViewHolder:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;

    iget-object v0, v0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 141
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->val$segmentViewHolder:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;

    iget-object v1, v1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->-$$Nest$mselectedWithAnimator(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;Landroid/view/View;Z)V

    .line 142
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-static {v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->-$$Nest$fgetmSelectors(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->val$position:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 143
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    invoke-static {v0, p1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->-$$Nest$mcheckIfCanSearch(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;Z)V

    .line 145
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/text/TaplusSegmentEvent;

    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;->val$segmentViewHolder:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;

    iget-object v1, v1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "click"

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/text/TaplusSegmentEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_66
    :goto_66
    return-void
.end method
