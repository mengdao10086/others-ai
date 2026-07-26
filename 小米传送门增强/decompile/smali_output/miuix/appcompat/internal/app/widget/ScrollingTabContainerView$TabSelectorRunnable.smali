.class Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabSelectorRunnable"
.end annotation


# instance fields
.field private mPosition:I

.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;I)V
    .registers 4

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    .line 798
    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mPosition:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 802
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mRefs:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-nez v0, :cond_10

    return-void

    .line 806
    :cond_10
    iget-object v2, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView$TabSelectorRunnable;->mPosition:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1b

    return-void

    .line 810
    :cond_1b
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    const/4 v2, 0x0

    .line 811
    invoke-virtual {v0, v3, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 812
    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    return-void
.end method
