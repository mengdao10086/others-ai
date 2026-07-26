.class public Lcom/miui/contentextension/view/MaxHeightScrollView;
.super Landroid/widget/ScrollView;
.source "MaxHeightScrollView.java"


# instance fields
.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 4

    .line 29
    iget p2, p0, Lcom/miui/contentextension/view/MaxHeightScrollView;->mMaxHeight:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 30
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeight(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/miui/contentextension/view/MaxHeightScrollView;->mMaxHeight:I

    return-void
.end method
