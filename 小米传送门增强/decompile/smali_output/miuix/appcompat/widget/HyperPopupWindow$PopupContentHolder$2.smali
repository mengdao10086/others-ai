.class Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;
.super Ljava/lang/Object;
.source "HyperPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->inflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastIndex:I

.field final synthetic this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;


# direct methods
.method public static synthetic $r8$lambda$VybsWDXdiza1TLZ0Tl7BoLwzLIY(Landroid/view/View;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->lambda$onTouch$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)V
    .registers 2

    .line 564
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 565
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->lastIndex:I

    return-void
.end method

.method private static synthetic lambda$onTouch$0(Landroid/view/View;)V
    .registers 5

    .line 594
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    .line 596
    :try_start_4
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_33

    .line 598
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1c

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catch_1c
    move-exception p0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "list onTouch error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HyperPopupWindow"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 569
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 570
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 571
    iget-object v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 572
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p2, :cond_3c

    if-eq p2, v2, :cond_26

    const/4 v0, 0x3

    if-eq p2, v0, :cond_26

    const/4 v0, 0x6

    if-eq p2, v0, :cond_26

    goto :goto_6f

    .line 592
    :cond_26
    iput v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->lastIndex:I

    .line 593
    iget-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;
    invoke-static {p2}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListView;

    move-result-object p2

    new-instance v0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    .line 604
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p1

    int-to-long v2, p1

    .line 593
    invoke-virtual {p2, v0, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6f

    :cond_3c
    if-eq v0, v3, :cond_6f

    .line 575
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    sub-int/2addr v0, p1

    .line 576
    iget p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->lastIndex:I

    if-eq v0, p1, :cond_6f

    if-eq p1, v3, :cond_60

    .line 578
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListView;

    move-result-object p1

    iget p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->lastIndex:I

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 580
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 583
    :cond_60
    iget-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->this$1:Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;

    # getter for: Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->mListView:Landroid/widget/ListView;
    invoke-static {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;->access$2100(Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 584
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 585
    iput v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$PopupContentHolder$2;->lastIndex:I

    :cond_6f
    :goto_6f
    return v1
.end method
