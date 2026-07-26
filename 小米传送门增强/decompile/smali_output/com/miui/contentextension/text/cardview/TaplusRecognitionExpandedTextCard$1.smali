.class Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "TaplusRecognitionExpandedTextCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$1;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    .line 146
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollStateChanged: on scroll, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.RecognitionTextCard"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$1;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-static {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->-$$Nest$fgetmSegmentAdapter(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    move-result-object p1

    if-eqz p2, :cond_23

    const/4 p2, 0x1

    goto :goto_24

    :cond_23
    const/4 p2, 0x0

    :goto_24
    invoke-virtual {p1, p2}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->setScrollState(Z)V

    return-void
.end method
