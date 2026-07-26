.class public Lcom/miui/contentextension/utils/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method public static expandTouchArea(Landroid/view/View;)V
    .registers 3

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070463

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 17
    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/ViewUtil;->expandTouchArea(Landroid/view/View;I)V

    return-void
.end method

.method public static expandTouchArea(Landroid/view/View;I)V
    .registers 4

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    new-instance v1, Lcom/miui/contentextension/utils/ViewUtil$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/miui/contentextension/utils/ViewUtil$1;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
