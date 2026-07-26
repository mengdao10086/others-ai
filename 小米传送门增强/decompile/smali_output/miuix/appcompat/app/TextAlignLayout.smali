.class public Lmiuix/appcompat/app/TextAlignLayout;
.super Landroid/widget/LinearLayout;
.source "TextAlignLayout.java"


# instance fields
.field private mDialogPanelHasCheckbox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 8

    .line 38
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    move v2, p2

    move v1, v0

    :goto_b
    if-ge v1, p1, :cond_3d

    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_3a

    .line 43
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_3a

    .line 44
    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-gt v4, p2, :cond_26

    .line 45
    iget-boolean v4, p0, Lmiuix/appcompat/app/TextAlignLayout;->mDialogPanelHasCheckbox:Z

    if-nez v4, :cond_26

    move v4, p2

    goto :goto_27

    :cond_26
    move v4, v0

    :goto_27
    if-eqz v4, :cond_2d

    .line 47
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_39

    .line 49
    :cond_2d
    invoke-static {v3}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v3, 0x5

    goto :goto_36

    :cond_35
    const/4 v3, 0x3

    .line 50
    :goto_36
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :goto_39
    move v2, v4

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3d
    return-void
.end method

.method public setDialogPanelHasCheckbox(Z)V
    .registers 2

    .line 33
    iput-boolean p1, p0, Lmiuix/appcompat/app/TextAlignLayout;->mDialogPanelHasCheckbox:Z

    return-void
.end method
