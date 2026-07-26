.class public Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;
.super Landroid/widget/LinearLayout;
.source "TaplusMainGroupView.java"


# instance fields
.field private mDownTranslationY:F

.field private mDownX:F

.field private mDownY:F

.field private mIconClose:Landroid/view/View;

.field private mIconDrag:Landroid/view/View;

.field private mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

.field private mRecognitionAttachments:Landroid/view/View;

.field private mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

.field private mRecognitionGrid:Landroid/view/View;

.field private mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isViewIntersects(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x2

    .line 148
    new-array v1, v1, [I

    .line 149
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 150
    new-instance v2, Landroid/graphics/RectF;

    aget v0, v1, v0

    int-to-float v3, v0

    const/4 v4, 0x1

    aget v5, v1, v4

    int-to-float v5, v5

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v0, v6

    int-to-float v0, v0

    aget v1, v1, v4

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-direct {v2, v3, v5, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 153
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-virtual {v2, p1, v0, v1, p2}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .line 57
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01e0

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    const v0, 0x7f0a01df

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mRecognitionAttachments:Landroid/view/View;

    const v0, 0x7f0a0139

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mIconClose:Landroid/view/View;

    const v0, 0x7f0a013a

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mIconDrag:Landroid/view/View;

    const v0, 0x7f0a01e4

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mRecognitionGrid:Landroid/view/View;

    const v0, 0x7f0a01f0

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.MainGroupView"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_69

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    goto :goto_7b

    .line 81
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent: y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 85
    iget v3, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mDownY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 86
    iget v3, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mDownX:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 87
    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object v4, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1, v4}, Lcom/miui/contentextension/text/floatview/BaseFloatView;->isEventInFloatSubView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7b

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7b

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7b

    .line 88
    const-string p1, "onInterceptTouchEvent: intercept recycler touch event"

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 76
    :cond_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mDownY:F

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mDownX:F

    .line 78
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mDownTranslationY:F

    .line 93
    :cond_7b
    :goto_7b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->isCatcherSupportDoublePress(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    return v2

    .line 102
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const-string v4, ", translationY = "

    const-string v5, ", target = "

    const-string v6, ", delta = "

    const-string v7, "Taplus.MainGroupView"

    if-eq v3, v0, :cond_90

    const/4 v8, 0x2

    if-eq v3, v8, :cond_24

    goto/16 :goto_ff

    .line 107
    :cond_24
    iget v3, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mDownY:F

    sub-float v3, v1, v3

    .line 108
    iget v8, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mDownTranslationY:F

    add-float/2addr v8, v3

    .line 109
    iget-object v9, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v9

    add-int/lit16 v9, v9, -0xbe

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_42

    .line 110
    iget-object v8, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mRecognitionCard:Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedCard;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    add-int/lit16 v8, v8, -0xbe

    int-to-float v8, v8

    goto :goto_48

    :cond_42
    const/4 v9, 0x0

    cmpg-float v10, v8, v9

    if-gez v10, :cond_48

    move v8, v9

    .line 114
    :cond_48
    :goto_48
    new-array v9, v0, [Landroid/view/View;

    aput-object p0, v9, v2

    invoke-static {v9}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v9

    invoke-interface {v9}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v9

    sget-object v10, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v10, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v9, v8}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouch: move, rawY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v7, v1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 119
    :cond_90
    iget v3, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mDownY:F

    sub-float v3, v1, v3

    .line 120
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v8, v3, v8

    if-lez v8, :cond_a3

    .line 122
    iget-object v8, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-virtual {v8}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->shrinkFloatView()V

    goto :goto_d1

    :cond_a3
    const/high16 v8, -0x3ee00000    # -10.0f

    cmpg-float v8, v3, v8

    if-gez v8, :cond_d1

    .line 124
    iget-object v8, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-virtual {v8}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->needShowRecommendList()Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 125
    iget-object v8, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mRecommendList:Lmiuix/recyclerview/widget/RecyclerView;

    new-array v9, v0, [Landroid/view/View;

    aput-object v8, v9, v2

    invoke-static {v9}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v8

    invoke-interface {v8}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v8

    sget-object v9, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 127
    :cond_cc
    iget-object v8, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-virtual {v8, v2}, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->expandFloatView(Z)V

    .line 129
    :cond_d1
    :goto_d1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouch: up, rawY = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v7, v1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_ff
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mRecognitionAttachments:Landroid/view/View;

    invoke-virtual {v1, p1, v3}, Lcom/miui/contentextension/text/floatview/BaseFloatView;->isEventInFloatSubView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_125

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object v3, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mIconDrag:Landroid/view/View;

    .line 136
    invoke-virtual {v1, p1, v3}, Lcom/miui/contentextension/text/floatview/BaseFloatView;->isEventInFloatSubView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_125

    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mRecognitionAttachments:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->mPickedRect:Landroid/graphics/Rect;

    .line 137
    invoke-direct {p0, p1, v1}, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->isViewIntersects(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_125

    .line 138
    const-string p1, "onTouch: in attachments area and intersect"

    invoke-static {v7, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_125
    return v0
.end method

.method public setMainFloatView(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainGroupView;->mMainFloatView:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    return-void
.end method
