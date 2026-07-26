.class Lmiuix/animation/property/ViewProperty$15;
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

    .line 284
    invoke-direct {p0, p1, p2}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 2

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 284
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/animation/property/ViewProperty$15;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    .line 287
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 284
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/ViewProperty$15;->setValue(Landroid/view/View;F)V

    return-void
.end method
