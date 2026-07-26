.class Lmiuix/animation/property/ViewProperty$18;
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

    .line 337
    invoke-direct {p0, p1, p2}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 2

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 337
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/animation/property/ViewProperty$18;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    float-to-int p2, p2

    .line 340
    invoke-virtual {p1, p2}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 337
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/ViewProperty$18;->setValue(Landroid/view/View;F)V

    return-void
.end method
