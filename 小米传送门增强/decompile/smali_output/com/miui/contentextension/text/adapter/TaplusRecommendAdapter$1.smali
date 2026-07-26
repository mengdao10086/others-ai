.class Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$1;
.super Ljava/lang/Object;
.source "TaplusRecommendAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->onBindViewHolder(Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$RecommendViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    iput p2, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 166
    iget v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$1;->val$position:I

    if-ltz v0, :cond_6d

    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    invoke-virtual {v1}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_d

    goto :goto_6d

    .line 169
    :cond_d
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    invoke-static {v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->-$$Nest$fgetmRecommendationInfos(Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;

    if-nez v0, :cond_1e

    return-void

    .line 174
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/AppsUtils;->generateOpenIntent(Landroid/content/Context;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 176
    iget-object v2, p0, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter$1;->this$0:Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    invoke-static {v2, v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->-$$Nest$mtrackRecommendCardClick(Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;)V

    .line 177
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const-string v5, "click_recommend"

    const-string v6, "recommend"

    const/4 v7, 0x1

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/contentextension/utils/AiWindowUtilsKt;->shouldStartAiWindow(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/contentextension/utils/AiWindowUtilsKt;->isTranslateCard(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 180
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object p1

    invoke-virtual {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/AiWindowUtilsKt;->startAiWindow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6d

    .line 182
    :cond_66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/miui/contentextension/utils/AppsUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6d
    :goto_6d
    return-void
.end method
