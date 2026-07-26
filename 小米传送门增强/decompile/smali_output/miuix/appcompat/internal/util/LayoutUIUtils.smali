.class public Lmiuix/appcompat/internal/util/LayoutUIUtils;
.super Ljava/lang/Object;
.source "LayoutUIUtils.java"


# direct methods
.method public static resetSearchModeStubInputTextSize(Landroid/content/res/Resources;Landroid/view/View;I)V
    .registers 5

    if-eqz p1, :cond_31

    if-nez p0, :cond_5

    goto :goto_31

    :cond_5
    const v0, 0x1020009

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_11

    return-void

    .line 49
    :cond_11
    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_search_edit_text_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 50
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    .line 54
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v1, p0

    int-to-float p0, p2

    cmpl-float p2, v1, p0

    if-lez p2, :cond_31

    cmpl-float p2, v0, p0

    if-lez p2, :cond_31

    const/4 p2, 0x1

    .line 56
    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_31
    :goto_31
    return-void
.end method
