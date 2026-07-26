.class public Lmiuix/appcompat/app/strategy/PanelMeasureRuleImpl;
.super Ljava/lang/Object;
.source "PanelMeasureRuleImpl.java"

# interfaces
.implements Lmiuix/appcompat/app/strategy/IPanelMeasureRule;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measurePanelHeight(IIIIZ)I
    .registers 8

    .line 54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_26

    if-lez p2, :cond_11

    const/high16 p1, 0x40000000    # 2.0f

    .line 58
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_26

    :cond_11
    if-eqz p5, :cond_14

    move p3, p4

    .line 64
    :cond_14
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez p2, :cond_26

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 67
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_26
    :goto_26
    return p1
.end method

.method public measurePanelWidth(III)I
    .registers 6

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1f

    if-lez p2, :cond_11

    const/high16 p1, 0x40000000    # 2.0f

    .line 39
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1f

    :cond_11
    if-lez p3, :cond_1f

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 44
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1f
    :goto_1f
    return p1
.end method

.method public selectLimitValue(ZZILmiuix/appcompat/app/DialogContract$ValueList;)Landroid/util/TypedValue;
    .registers 5

    if-nez p4, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    if-eqz p1, :cond_b

    .line 22
    invoke-virtual {p4}, Lmiuix/appcompat/app/DialogContract$ValueList;->getFull()Landroid/util/TypedValue;

    move-result-object p1

    return-object p1

    :cond_b
    if-eqz p2, :cond_12

    .line 26
    invoke-virtual {p4}, Lmiuix/appcompat/app/DialogContract$ValueList;->getMinor()Landroid/util/TypedValue;

    move-result-object p1

    return-object p1

    :cond_12
    const/16 p1, 0x1f4

    if-lt p3, p1, :cond_1b

    .line 29
    invoke-virtual {p4}, Lmiuix/appcompat/app/DialogContract$ValueList;->getMinor()Landroid/util/TypedValue;

    move-result-object p1

    goto :goto_1f

    :cond_1b
    invoke-virtual {p4}, Lmiuix/appcompat/app/DialogContract$ValueList;->getMajor()Landroid/util/TypedValue;

    move-result-object p1

    :goto_1f
    return-object p1
.end method
