.class Lcom/miui/contentextension/screenshot/DragSelectTouchListener$1;
.super Ljava/lang/Object;
.source "DragSelectTouchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/screenshot/DragSelectTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/screenshot/DragSelectTouchListener;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$1;->this$0:Lcom/miui/contentextension/screenshot/DragSelectTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$1;->this$0:Lcom/miui/contentextension/screenshot/DragSelectTouchListener;

    invoke-static {v0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->-$$Nest$fgetmScroller(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)Landroid/widget/OverScroller;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$1;->this$0:Lcom/miui/contentextension/screenshot/DragSelectTouchListener;

    invoke-static {v0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->-$$Nest$fgetmScroller(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 34
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$1;->this$0:Lcom/miui/contentextension/screenshot/DragSelectTouchListener;

    invoke-static {v0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->-$$Nest$fgetmScrollDistance(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->-$$Nest$mscrollBy(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;I)V

    .line 35
    iget-object v0, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$1;->this$0:Lcom/miui/contentextension/screenshot/DragSelectTouchListener;

    invoke-static {v0}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->-$$Nest$fgetmRecyclerView(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/screenshot/DragSelectTouchListener$1;->this$0:Lcom/miui/contentextension/screenshot/DragSelectTouchListener;

    invoke-static {v1}, Lcom/miui/contentextension/screenshot/DragSelectTouchListener;->-$$Nest$fgetmScrollRunnable(Lcom/miui/contentextension/screenshot/DragSelectTouchListener;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_2c
    return-void
.end method
