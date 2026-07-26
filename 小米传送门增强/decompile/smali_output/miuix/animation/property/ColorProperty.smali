.class public Lmiuix/animation/property/ColorProperty;
.super Lmiuix/animation/property/FloatProperty;
.source "ColorProperty.java"

# interfaces
.implements Lmiuix/animation/property/IIntValueProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiuix/animation/property/FloatProperty<",
        "TT;>;",
        "Lmiuix/animation/property/IIntValueProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mColorValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 45
    :cond_11
    check-cast p1, Lmiuix/animation/property/ColorProperty;

    .line 46
    iget-object v0, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    iget-object p1, p1, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public getIntValue(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 34
    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    if-eqz v0, :cond_18

    .line 35
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 36
    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    .line 38
    :cond_18
    iget p1, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    return p1
.end method

.method public getValue(Ljava/lang/Object;)F
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 51
    iget-object v0, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setIntValue(Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 25
    iput p2, p0, Lmiuix/animation/property/ColorProperty;->mColorValue:I

    .line 26
    instance-of v0, p1, Lmiuix/animation/property/ValueTargetObject;

    if-eqz v0, :cond_15

    .line 27
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 28
    invoke-virtual {p0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public setValue(Ljava/lang/Object;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 0
    return-void
.end method
