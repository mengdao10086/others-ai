.class Lmiuix/animation/property/ViewProperty$5;
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

    .line 106
    invoke-direct {p0, p1, p2}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 2

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 106
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/animation/property/ViewProperty$5;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 106
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/ViewProperty$5;->setValue(Landroid/view/View;F)V

    return-void
.end method
