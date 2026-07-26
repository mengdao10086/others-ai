.class Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$2;
.super Ljava/lang/Object;
.source "TaplusRecognitionExpandedTextCard.java"

# interfaces
.implements Lcom/miui/contentextension/screenshot/DragSelectTouchListener$OnAdvancedDragSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->initRecyclerView()V
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

    .line 166
    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectChange(IIZ)V
    .registers 6

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectChange: start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Taplus.RecognitionTextCard"

    invoke-static {v0, p3}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p3, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-static {p3}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->-$$Nest$fgetmSegmentAdapter(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->doSelectRangeChanged(II)V

    return-void
.end method

.method public onSelectionFinished(I)V
    .registers 5

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectionFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.RecognitionTextCard"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-static {p1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->-$$Nest$fgetmSegmentAdapter(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->setSlideState(Z)V

    .line 178
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/text/TaplusSegmentEvent;

    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "slide"

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/text/TaplusSegmentEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSelectionStarted(I)V
    .registers 4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectionStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.RecognitionTextCard"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-static {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->-$$Nest$fgetmSegmentAdapter(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->setSlideState(Z)V

    .line 171
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard$2;->this$0:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    invoke-static {v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;->-$$Nest$fgetmSegmentAdapter(Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;)Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->doSelect(I)V

    return-void
.end method
