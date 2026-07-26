.class public Lmiuix/animation/property/ValueTargetObject;
.super Ljava/lang/Object;
.source "ValueTargetObject.java"


# instance fields
.field private mClassManager:Lmiuix/animation/utils/GenericClassManager;

.field private mFieldManager:Lmiuix/animation/utils/FieldManager;

.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTempObj:Ljava/lang/Object;

.field private mValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lmiuix/animation/utils/FieldManager;

    invoke-direct {v0}, Lmiuix/animation/utils/FieldManager;-><init>()V

    iput-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mFieldManager:Lmiuix/animation/utils/FieldManager;

    .line 20
    new-instance v0, Lmiuix/animation/utils/GenericClassManager;

    invoke-direct {v0}, Lmiuix/animation/utils/GenericClassManager;-><init>()V

    iput-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mClassManager:Lmiuix/animation/utils/GenericClassManager;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->isBuiltInClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 25
    iput-object p1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    goto :goto_2c

    .line 27
    :cond_25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mRef:Ljava/lang/ref/WeakReference;

    :goto_2c
    return-void
.end method


# virtual methods
.method public containProperty(Ljava/lang/String;)Z
    .registers 3

    .line 56
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 99
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_27

    .line 100
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    if-eqz v1, :cond_1b

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 102
    :cond_1b
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_26
    return v0

    .line 109
    :cond_27
    check-cast p1, Lmiuix/animation/property/ValueTargetObject;

    .line 110
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    if-eqz v0, :cond_34

    .line 111
    iget-object p1, p1, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 113
    :cond_34
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mFieldManager:Lmiuix/animation/utils/FieldManager;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/utils/FieldManager;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGenericClass(Lmiuix/animation/property/FloatProperty;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/property/FloatProperty;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mClassManager:Lmiuix/animation/utils/GenericClassManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/utils/GenericClassManager;->get(Lmiuix/animation/property/FloatProperty;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getGenericClass(Lmiuix/animation/property/IIntValueProperty;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/property/IIntValueProperty;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mClassManager:Lmiuix/animation/utils/GenericClassManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/utils/GenericClassManager;->get(Lmiuix/animation/property/IIntValueProperty;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyValue(Ljava/lang/String;)D
    .registers 5

    .line 60
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-nez p1, :cond_e

    return-wide v0

    .line 64
    :cond_e
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_1a

    .line 65
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v0, p1

    return-wide v0

    .line 66
    :cond_1a
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_26

    .line 67
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    return-wide v0

    .line 68
    :cond_26
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_30

    .line 69
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :cond_30
    return-wide v0
.end method

.method public getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 76
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    if-ne v1, v0, :cond_b

    goto :goto_19

    .line 79
    :cond_b
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    goto :goto_18

    .line 80
    :cond_14
    invoke-virtual {p0, v0, p1, p2}, Lmiuix/animation/property/ValueTargetObject;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_18
    return-object v1

    .line 77
    :cond_19
    :goto_19
    iget-object p2, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRealObject()Ljava/lang/Object;
    .registers 2

    .line 36
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    :goto_b
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 119
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 122
    :cond_9
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 32
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lmiuix/animation/property/ValueTargetObject;->mFieldManager:Lmiuix/animation/utils/FieldManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/utils/FieldManager;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 85
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mTempObj:Ljava/lang/Object;

    if-ne v1, v0, :cond_b

    goto :goto_1f

    .line 89
    :cond_b
    iget-object v1, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 90
    invoke-virtual {p0, v0, p1, p2, p3}, Lmiuix/animation/property/ValueTargetObject;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    .line 91
    :cond_19
    iget-object p2, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-void

    .line 86
    :cond_1f
    :goto_1f
    iget-object p2, p0, Lmiuix/animation/property/ValueTargetObject;->mValueMap:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValueTargetObject@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
