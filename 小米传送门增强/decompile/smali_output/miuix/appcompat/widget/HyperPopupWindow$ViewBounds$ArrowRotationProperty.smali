.class Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$ArrowRotationProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrowRotationProperty"
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

    .line 982
    const-string v0, "arrowRotation"

    invoke-direct {p0, v0}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 980
    check-cast p1, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$ArrowRotationProperty;->getValue(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)F
    .registers 2

    .line 987
    invoke-virtual {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->getArrowRotation()F

    move-result p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 980
    check-cast p1, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$ArrowRotationProperty;->setValue(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;F)V

    return-void
.end method

.method public setValue(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;F)V
    .registers 3

    .line 992
    invoke-virtual {p1, p2}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->setArrowRotation(F)V

    return-void
.end method
