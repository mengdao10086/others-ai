.class public Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "TaplusRecognitionAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/contentextension/text/cardview/ITaplusCardView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->mItems:Landroid/util/SparseArray;

    .line 39
    iput-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->mContext:Landroid/content/Context;

    .line 40
    new-instance p1, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;

    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedTextCard;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    new-instance p1, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;

    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionExpandedImageCard;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 54
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Lcom/miui/contentextension/text/cardview/ITaplusCardView;
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->mItems:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/text/cardview/ITaplusCardView;

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusRecognitionAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    .line 0
    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
