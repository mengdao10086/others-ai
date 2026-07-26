.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;
.super Lmiuix/animation/property/ValueProperty;
.source "PhoneDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/ValueProperty<",
        "Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .registers 3

    .line 68
    invoke-direct {p0, p1, p2}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 68
    check-cast p1, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->getValue(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)F
    .registers 2

    .line 72
    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mAnimY:F
    invoke-static {p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$000(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 68
    check-cast p1, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$1;->setValue(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;F)V

    return-void
.end method

.method public setValue(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;F)V
    .registers 3

    .line 77
    # setter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mAnimY:F
    invoke-static {p1, p2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$002(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;F)F

    return-void
.end method
