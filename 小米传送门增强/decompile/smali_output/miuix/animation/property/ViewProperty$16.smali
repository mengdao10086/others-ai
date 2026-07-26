.class Lmiuix/animation/property/ViewProperty$16;
.super Lmiuix/animation/property/ViewProperty;
.source "ViewProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/property/ViewProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .registers 3

    .line 300
    invoke-direct {p0, p1, p2}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 2

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 300
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/animation/property/ViewProperty$16;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 6

    .line 303
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 304
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3b800000    # 0.00390625f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v1

    .line 305
    :goto_11
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    cmpl-float p2, p2, v2

    if-lez p2, :cond_22

    if-nez v0, :cond_22

    .line 306
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    :cond_22
    if-eqz v0, :cond_29

    const/16 p2, 0x8

    .line 308
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_29
    :goto_29
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 300
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/ViewProperty$16;->setValue(Landroid/view/View;F)V

    return-void
.end method
