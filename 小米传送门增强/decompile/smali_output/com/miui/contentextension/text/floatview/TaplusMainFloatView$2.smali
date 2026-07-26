.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "TaplusMainFloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$2;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    .line 218
    const-string p1, "Taplus.TaplusMainFloatView"

    const-string v0, "onScrollStateChanged: "

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_18

    .line 220
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$2;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecommendAdapter(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$2;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmMoveRefresh(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->uploadExposingItems(Z)V

    :cond_18
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 10

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrolled: x= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",y="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Taplus.TaplusMainFloatView"

    invoke-static {p3, p2}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p2, :cond_27

    return-void

    .line 231
    :cond_27
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 232
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 234
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 235
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :goto_37
    if-gt v0, v1, :cond_85

    .line 238
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 239
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4a

    .line 241
    const-string p1, "LinearLayoutManager find view is null"

    invoke-static {p3, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 244
    :cond_4a
    invoke-virtual {v3, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 247
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-lt v4, v5, :cond_5e

    .line 248
    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, p1

    mul-int/lit8 v5, v5, 0x64

    .line 249
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr v5, p1

    goto :goto_69

    .line 251
    :cond_5e
    iget p1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0x64

    .line 252
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int v5, v4, p1

    .line 255
    :goto_69
    invoke-static {}, Lcom/miui/contentextension/data/cms/ConfigDataKVPref;->getCardExposePercent()I

    move-result p1

    if-lt v5, p1, :cond_79

    .line 256
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$2;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecommendAdapter(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->tryToAddExposingItems(I)V

    goto :goto_82

    .line 258
    :cond_79
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$2;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->-$$Nest$fgetmRecommendAdapter(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/adapter/TaplusRecommendAdapter;->tryToRemoveExposingItems(I)V

    :goto_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_85
    return-void
.end method
