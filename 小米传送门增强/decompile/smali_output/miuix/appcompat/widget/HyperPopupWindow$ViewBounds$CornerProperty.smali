.class Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$CornerProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CornerProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 998
    const-string v0, "corner"

    invoke-direct {p0, v0}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 996
    check-cast p1, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$CornerProperty;->getValue(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)F
    .registers 2

    .line 1003
    invoke-virtual {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->getCornerRadius()F

    move-result p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 996
    check-cast p1, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$CornerProperty;->setValue(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;F)V

    return-void
.end method

.method public setValue(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;F)V
    .registers 3

    .line 1008
    invoke-virtual {p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->setCornerRadius(F)V

    return-void
.end method
