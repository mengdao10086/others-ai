.class Lmiuix/internal/widget/ArrowActionSheet$1;
.super Ljava/lang/Object;
.source "ArrowActionSheet.java"

# interfaces
.implements Lmiuix/internal/widget/ActionSheet$ContentController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ArrowActionSheet;->setContentController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/widget/ArrowActionSheet;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/ArrowActionSheet;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private detectOverflow(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/view/WindowInsets;Landroid/graphics/Point;)[Z
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 499
    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 500
    new-array p1, v1, [Z

    fill-array-data p1, :array_12a

    return-object p1

    .line 503
    :cond_11
    iget v2, p2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_a7

    .line 504
    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiuix/internal/widget/ArrowActionSheet;->access$700(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p4}, Lmiuix/internal/widget/ArrowActionSheet$1;->calcHorizontalMargin(Landroid/content/Context;Landroid/view/WindowInsets;)[I

    move-result-object v2

    .line 505
    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v5, :cond_93

    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    .line 506
    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-ne v4, v5, :cond_35

    goto/16 :goto_93

    .line 509
    :cond_35
    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v5, :cond_7f

    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    .line 510
    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v5, :cond_7f

    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    .line 511
    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v5, :cond_7f

    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    .line 512
    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v5, :cond_7f

    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    .line 513
    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-ne v4, v5, :cond_68

    goto :goto_7f

    .line 517
    :cond_68
    iget v4, p5, Landroid/graphics/Point;->x:I

    aget v5, v2, v3

    if-ge v4, v5, :cond_70

    move v5, v0

    goto :goto_71

    :cond_70
    move v5, v3

    .line 518
    :goto_71
    iget v6, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v6

    aget v2, v2, v0

    add-int/2addr v4, v2

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-le v4, v2, :cond_7d

    :goto_7b
    move v2, v0

    goto :goto_a9

    :cond_7d
    move v2, v3

    goto :goto_a9

    .line 514
    :cond_7f
    :goto_7f
    iget v4, p5, Landroid/graphics/Point;->x:I

    aget v5, v2, v3

    if-ge v4, v5, :cond_87

    move v5, v0

    goto :goto_88

    :cond_87
    move v5, v3

    .line 515
    :goto_88
    iget v6, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v6

    aget v2, v2, v0

    add-int/2addr v4, v2

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-le v4, v2, :cond_7d

    goto :goto_7b

    .line 507
    :cond_93
    :goto_93
    iget v4, p5, Landroid/graphics/Point;->x:I

    aget v5, v2, v3

    if-ge v4, v5, :cond_9b

    move v5, v0

    goto :goto_9c

    :cond_9b
    move v5, v3

    .line 508
    :goto_9c
    iget v6, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v6

    aget v2, v2, v0

    add-int/2addr v4, v2

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-le v4, v2, :cond_7d

    goto :goto_7b

    :cond_a7
    move v2, v3

    move v5, v2

    .line 521
    :goto_a9
    iget v4, p2, Landroid/graphics/Point;->y:I

    if-lez v4, :cond_11b

    .line 522
    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$700(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, p4}, Lmiuix/internal/widget/ArrowActionSheet$1;->calcVerticalMargin(Landroid/content/Context;Landroid/view/WindowInsets;)[I

    move-result-object p4

    .line 523
    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v6, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v6, :cond_10d

    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    .line 524
    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v6, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v6, :cond_10d

    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    .line 525
    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v6, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-ne v4, v6, :cond_d6

    goto :goto_10d

    .line 527
    :cond_d6
    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v6, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v6, :cond_f4

    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    .line 528
    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v6, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v6, :cond_f4

    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    .line 529
    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v4

    sget-object v6, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-ne v4, v6, :cond_11b

    .line 530
    :cond_f4
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Point;->y:I

    aget p3, p4, v3

    .line 531
    iget p5, p5, Landroid/graphics/Point;->y:I

    if-ge p5, p3, :cond_100

    move p3, v0

    goto :goto_101

    :cond_100
    move p3, v3

    :goto_101
    add-int/2addr p5, p1

    .line 532
    aget p1, p4, v0

    add-int/2addr p5, p1

    iget p1, p2, Landroid/graphics/Point;->y:I

    if-le p5, p1, :cond_10b

    move p1, v0

    goto :goto_11d

    :cond_10b
    move p1, v3

    goto :goto_11d

    .line 526
    :cond_10d
    :goto_10d
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p3, Landroid/graphics/Point;->y:I

    aget p3, p4, v0

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_118

    move p1, v0

    goto :goto_119

    :cond_118
    move p1, v3

    :goto_119
    move p3, v3

    goto :goto_11d

    :cond_11b
    move p1, v3

    move p3, p1

    .line 535
    :goto_11d
    new-array p2, v1, [Z

    aput-boolean v5, p2, v3

    aput-boolean p3, p2, v0

    const/4 p3, 0x2

    aput-boolean v2, p2, p3

    const/4 p3, 0x3

    aput-boolean p1, p2, p3

    return-object p2

    :array_12a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getReferencePoint(Landroid/graphics/Rect;Lmiuix/internal/widget/ActionSheet$ArrowMode;)Landroid/graphics/Point;
    .registers 6

    .line 314
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 315
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 316
    sget-object v2, Lmiuix/internal/widget/ArrowActionSheet$2;->$SwitchMap$miuix$internal$widget$ActionSheet$ArrowMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    packed-switch p2, :pswitch_data_c6

    goto/16 :goto_c5

    .line 352
    :pswitch_1c
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 353
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_c5

    :pswitch_33
    if-eqz v1, :cond_56

    .line 341
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 342
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_c5

    .line 344
    :cond_56
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 345
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_c5

    :pswitch_6c
    if-eqz v1, :cond_84

    .line 329
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 330
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_c5

    .line 332
    :cond_84
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 333
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_c5

    .line 321
    :pswitch_a5
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 322
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    :goto_c5
    return-object v0

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_a5
        :pswitch_a5
        :pswitch_6c
        :pswitch_6c
        :pswitch_33
        :pswitch_33
        :pswitch_6c
        :pswitch_33
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private getShowOffset(Lmiuix/internal/widget/ActionSheet$ArrowMode;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 7

    .line 364
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 365
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    move v1, v2

    .line 366
    :goto_1d
    sget-object v3, Lmiuix/internal/widget/ArrowActionSheet$2;->$SwitchMap$miuix$internal$widget$ActionSheet$ArrowMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_234

    goto/16 :goto_233

    :pswitch_2a
    if-eqz v1, :cond_47

    .line 470
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 471
    iget p1, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    .line 475
    :cond_47
    iget p1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v1

    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {v2}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 476
    iget p1, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    .line 455
    :pswitch_65
    iget p1, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 456
    iget p1, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    :pswitch_75
    if-eqz v1, :cond_95

    .line 460
    iget p1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v1

    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {v2}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 461
    iget p1, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    .line 464
    :cond_95
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 465
    iget p1, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    :pswitch_b0
    if-eqz v1, :cond_cc

    .line 444
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 445
    iget p1, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    .line 449
    :cond_cc
    iget p1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 450
    iget p1, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    :pswitch_ea
    if-eqz v1, :cond_10a

    .line 414
    iget p1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 415
    iget p1, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    .line 418
    :cond_10a
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 419
    iget p1, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    :pswitch_124
    if-eqz v1, :cond_13d

    .line 434
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 435
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    .line 438
    :cond_13d
    iget p1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 439
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    :pswitch_158
    if-eqz v1, :cond_166

    .line 424
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 425
    iget p1, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    .line 428
    :cond_166
    iget p1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 429
    iget p1, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    :pswitch_176
    if-eqz v1, :cond_193

    .line 404
    iget p1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 405
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    .line 408
    :cond_193
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 409
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    :pswitch_1aa
    if-eqz v1, :cond_1bc

    .line 394
    iget p1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 395
    iget p1, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_233

    .line 398
    :cond_1bc
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 399
    iget p1, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_233

    :pswitch_1c7
    if-eqz v1, :cond_1df

    .line 384
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 385
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_233

    .line 388
    :cond_1df
    iget p1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 389
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_233

    .line 379
    :pswitch_1f8
    iget p1, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 380
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_233

    :pswitch_203
    if-eqz v1, :cond_21e

    .line 369
    iget p1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {v1}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 370
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_233

    .line 373
    :cond_21e
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowLinkOffset:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$400(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowIconLongSide:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$500(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 374
    iput v2, v0, Landroid/graphics/Point;->y:I

    :goto_233
    return-object v0

    :pswitch_data_234
    .packed-switch 0x1
        :pswitch_203
        :pswitch_1f8
        :pswitch_1c7
        :pswitch_1aa
        :pswitch_176
        :pswitch_158
        :pswitch_124
        :pswitch_ea
        :pswitch_b0
        :pswitch_75
        :pswitch_65
        :pswitch_2a
    .end packed-switch
.end method

.method private getShowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;Lmiuix/internal/widget/ActionSheet$ArrowMode;)Landroid/graphics/Point;
    .registers 7

    .line 257
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 259
    invoke-direct {p0, p1, p3}, Lmiuix/internal/widget/ArrowActionSheet$1;->getReferencePoint(Landroid/graphics/Rect;Lmiuix/internal/widget/ActionSheet$ArrowMode;)Landroid/graphics/Point;

    move-result-object p1

    .line 262
    invoke-direct {p0, p3, p2}, Lmiuix/internal/widget/ArrowActionSheet$1;->getShowOffset(Lmiuix/internal/widget/ActionSheet$ArrowMode;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p2

    .line 264
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mOffset:Landroid/graphics/Point;
    invoke-static {v2}, Lmiuix/internal/widget/ArrowActionSheet;->access$200(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 265
    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mOffset:Landroid/graphics/Point;
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$200(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 267
    invoke-direct {p0, v0, p3}, Lmiuix/internal/widget/ArrowActionSheet$1;->handleReservedSpace(Landroid/graphics/Point;Lmiuix/internal/widget/ActionSheet$ArrowMode;)V

    return-object v0
.end method

.method private handleReservedSpace(Landroid/graphics/Point;Lmiuix/internal/widget/ActionSheet$ArrowMode;)V
    .registers 5

    .line 273
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 274
    sget-object v1, Lmiuix/internal/widget/ArrowActionSheet$2;->$SwitchMap$miuix$internal$widget$ActionSheet$ArrowMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_62

    goto :goto_61

    .line 305
    :pswitch_16
    iget p2, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mOffsetToPoint:I
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$300(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    goto :goto_61

    :pswitch_22
    if-eqz v0, :cond_30

    .line 295
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mOffsetToPoint:I
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$300(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    goto :goto_61

    .line 298
    :cond_30
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mOffsetToPoint:I
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$300(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    goto :goto_61

    :pswitch_3c
    if-eqz v0, :cond_4a

    .line 285
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mOffsetToPoint:I
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$300(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    goto :goto_61

    .line 288
    :cond_4a
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mOffsetToPoint:I
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$300(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    goto :goto_61

    .line 279
    :pswitch_56
    iget p2, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mOffsetToPoint:I
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$300(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    :goto_61
    return-void

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_3c
        :pswitch_3c
        :pswitch_22
        :pswitch_22
        :pswitch_3c
        :pswitch_22
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method private overflowCompactStrategy([Z)Lmiuix/internal/widget/ActionSheet$ArrowMode;
    .registers 8

    .line 173
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v0

    const/4 v1, 0x0

    .line 174
    aget-boolean v1, p1, v1

    const/4 v2, 0x1

    .line 175
    aget-boolean v2, p1, v2

    const/4 v3, 0x2

    .line 176
    aget-boolean v3, p1, v3

    const/4 v4, 0x3

    .line 177
    aget-boolean p1, p1, v4

    .line 178
    sget-object v4, Lmiuix/internal/widget/ArrowActionSheet$2;->$SwitchMap$miuix$internal$widget$ActionSheet$ArrowMode:[I

    iget-object v5, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v5}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_98

    goto/16 :goto_97

    :pswitch_25
    if-eqz v3, :cond_2d

    if-nez v2, :cond_2d

    .line 245
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto/16 :goto_97

    :cond_2d
    if-eqz v2, :cond_97

    .line 247
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto/16 :goto_97

    :pswitch_33
    if-eqz v2, :cond_97

    .line 240
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto/16 :goto_97

    :pswitch_39
    if-eqz v1, :cond_41

    if-nez v2, :cond_41

    .line 233
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_LEFT_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto/16 :goto_97

    :cond_41
    if-eqz v2, :cond_97

    .line 235
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_LEFT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto/16 :goto_97

    :pswitch_47
    if-eqz v1, :cond_4e

    if-nez v2, :cond_4e

    .line 226
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :cond_4e
    if-nez v1, :cond_97

    if-eqz v2, :cond_97

    .line 228
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :pswitch_55
    if-eqz v3, :cond_5c

    if-nez v2, :cond_5c

    .line 219
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :cond_5c
    if-nez v3, :cond_97

    if-eqz v2, :cond_97

    .line 221
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_LEFT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :pswitch_63
    if-eqz v1, :cond_6a

    if-nez p1, :cond_6a

    .line 212
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :cond_6a
    if-eqz v1, :cond_97

    .line 214
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :pswitch_6f
    if-eqz v3, :cond_76

    if-nez p1, :cond_76

    .line 204
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :cond_76
    if-eqz v3, :cond_97

    .line 206
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :pswitch_7b
    if-eqz v3, :cond_82

    if-nez v1, :cond_82

    .line 196
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :cond_82
    if-eqz p1, :cond_97

    .line 198
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :pswitch_87
    if-eqz p1, :cond_97

    .line 191
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :pswitch_8c
    if-eqz v1, :cond_93

    if-nez v3, :cond_93

    .line 182
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_LEFT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    goto :goto_97

    :cond_93
    if-eqz p1, :cond_97

    .line 185
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    :cond_97
    :goto_97
    return-object v0

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_87
        :pswitch_7b
        :pswitch_6f
        :pswitch_6f
        :pswitch_63
        :pswitch_63
        :pswitch_55
        :pswitch_47
        :pswitch_39
        :pswitch_33
        :pswitch_25
    .end packed-switch
.end method

.method private reComputePosition(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ViewGroup;[Z)Landroid/graphics/Point;
    .registers 5

    .line 163
    invoke-direct {p0, p4}, Lmiuix/internal/widget/ArrowActionSheet$1;->overflowCompactStrategy([Z)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object p3

    .line 165
    iget-object p4, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {p4}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object p4

    if-eq p3, p4, :cond_11

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/widget/ArrowActionSheet$1;->getShowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;Lmiuix/internal/widget/ActionSheet$ArrowMode;)Landroid/graphics/Point;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method


# virtual methods
.method public calcContentPanelHeight(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILandroid/view/WindowInsets;)I
    .registers 6

    .line 0
    const/4 p1, -0x2

    return p1
.end method

.method public calcContentPanelWidth(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILandroid/view/WindowInsets;)I
    .registers 6

    .line 488
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mFixedWidth:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$600(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    return p1
.end method

.method public calcHorizontalMargin(Landroid/content/Context;Landroid/view/WindowInsets;)[I
    .registers 3

    .line 547
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mDefaultMargin:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$800(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mDefaultMargin:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$800(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1
.end method

.method public calcVerticalMargin(Landroid/content/Context;Landroid/view/WindowInsets;)[I
    .registers 4

    if-nez p2, :cond_13

    .line 554
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mDefaultMargin:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$800(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mDefaultMargin:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$800(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1

    .line 557
    :cond_13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_38

    .line 558
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 559
    iget p2, p1, Landroid/graphics/Insets;->top:I

    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mDefaultMargin:I
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$800(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v0

    add-int/2addr p2, v0

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mDefaultMargin:I
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$800(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result v0

    add-int/2addr p1, v0

    filled-new-array {p2, p1}, [I

    move-result-object p1

    return-object p1

    .line 562
    :cond_38
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mDefaultMargin:I
    invoke-static {p1}, Lmiuix/internal/widget/ArrowActionSheet;->access$800(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p1

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mDefaultMargin:I
    invoke-static {p2}, Lmiuix/internal/widget/ArrowActionSheet;->access$800(Lmiuix/internal/widget/ArrowActionSheet;)I

    move-result p2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    return-object p1
.end method

.method public computeContentPosition(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/graphics/Point;
    .registers 13

    .line 146
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lmiuix/internal/widget/ArrowActionSheet$1;->getShowPosition(Landroid/graphics/Rect;Landroid/graphics/Point;Lmiuix/internal/widget/ActionSheet$ArrowMode;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz p4, :cond_12

    .line 150
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p4

    :goto_10
    move-object v5, p4

    goto :goto_14

    :cond_12
    const/4 p4, 0x0

    goto :goto_10

    :goto_14
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v0

    .line 152
    invoke-direct/range {v1 .. v6}, Lmiuix/internal/widget/ArrowActionSheet$1;->detectOverflow(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/view/WindowInsets;Landroid/graphics/Point;)[Z

    move-result-object p2

    .line 153
    invoke-direct {p0, p1, p3, p5, p2}, Lmiuix/internal/widget/ArrowActionSheet$1;->reComputePosition(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/ViewGroup;[Z)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 155
    iget p2, p1, Landroid/graphics/Point;->x:I

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 156
    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    :cond_2b
    return-object v0
.end method

.method public getArrowAnchor()Landroid/view/View;
    .registers 2

    .line 139
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$100(Lmiuix/internal/widget/ArrowActionSheet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getArrowMode()Lmiuix/internal/widget/ActionSheet$ArrowMode;
    .registers 2

    .line 133
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheet$1;->this$0:Lmiuix/internal/widget/ArrowActionSheet;

    # getter for: Lmiuix/internal/widget/ArrowActionSheet;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;
    invoke-static {v0}, Lmiuix/internal/widget/ArrowActionSheet;->access$000(Lmiuix/internal/widget/ArrowActionSheet;)Lmiuix/internal/widget/ActionSheet$ArrowMode;

    move-result-object v0

    return-object v0
.end method
