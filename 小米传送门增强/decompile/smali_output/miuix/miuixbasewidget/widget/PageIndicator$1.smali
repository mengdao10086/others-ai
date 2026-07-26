.class Lmiuix/miuixbasewidget/widget/PageIndicator$1;
.super Lmiuix/animation/property/ViewProperty;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/PageIndicator;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/PageIndicator;Ljava/lang/String;F)V
    .registers 4

    .line 50
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/PageIndicator$1;->this$0:Lmiuix/miuixbasewidget/widget/PageIndicator;

    invoke-direct {p0, p2, p3}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 2

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 55
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    int-to-float p1, p1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 50
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/PageIndicator$1;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 4

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_16

    const/high16 v0, 0x437f0000    # 255.0f

    cmpg-float v0, p2, v0

    if-lez v0, :cond_c

    goto :goto_16

    .line 65
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_16

    float-to-int p2, p2

    .line 67
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 50
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/miuixbasewidget/widget/PageIndicator$1;->setValue(Landroid/view/View;F)V

    return-void
.end method
