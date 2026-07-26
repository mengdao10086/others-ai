.class public abstract Lmiuix/animation/property/FloatProperty;
.super Landroid/util/Property;
.source "FloatProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property<",
        "TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field mMinVisibleChange:F

.field final mPropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    .line 37
    invoke-direct {p0, p1, v0}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4

    .line 44
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    .line 46
    iput p2, p0, Lmiuix/animation/property/FloatProperty;->mMinVisibleChange:F

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Float;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 52
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 54
    :cond_8
    invoke-virtual {p0, p1}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lmiuix/animation/property/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getMinVisibleChange()F
    .registers 2

    .line 88
    iget v0, p0, Lmiuix/animation/property/FloatProperty;->mMinVisibleChange:F

    return v0
.end method

.method public abstract getValue(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Float;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 60
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_9
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 29
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/property/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public setMinVisibleChange(F)V
    .registers 2

    .line 84
    iput p1, p0, Lmiuix/animation/property/FloatProperty;->mMinVisibleChange:F

    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/property/FloatProperty;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",min=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiuix/animation/property/FloatProperty;->mMinVisibleChange:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
