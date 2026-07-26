.class Lmiuix/animation/controller/StateHelper;
.super Ljava/lang/Object;
.source "StateHelper.java"


# static fields
.field static final DEFAULT_INT_PROPERTY:Lmiuix/animation/property/IntValueProperty;

.field static final DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lmiuix/animation/property/ValueProperty;

    const-string v1, "defaultProperty"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/controller/StateHelper;->DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;

    .line 22
    new-instance v0, Lmiuix/animation/property/IntValueProperty;

    const-string v1, "defaultIntProperty"

    invoke-direct {v0, v1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/controller/StateHelper;->DEFAULT_INT_PROPERTY:Lmiuix/animation/property/IntValueProperty;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addConfigToLink(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z
    .registers 5

    .line 101
    instance-of v0, p2, Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 102
    check-cast p2, Lmiuix/animation/base/AnimConfig;

    new-array v0, v1, [Z

    invoke-virtual {p1, p2, v0}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    const/4 p1, 0x1

    return p1

    .line 104
    :cond_e
    instance-of v0, p2, Lmiuix/animation/base/AnimConfigLink;

    if-eqz v0, :cond_19

    .line 105
    check-cast p2, Lmiuix/animation/base/AnimConfigLink;

    new-array v0, v1, [Z

    invoke-virtual {p1, p2, v0}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfigLink;[Z)V

    :cond_19
    return v1
.end method

.method private varargs addProperty(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;IZ[Ljava/lang/Object;)I
    .registers 11

    const/4 v0, 0x0

    if-eqz p3, :cond_2f

    const/4 v1, 0x1

    if-eqz p5, :cond_f

    .line 138
    invoke-direct {p0, p4, p6}, Lmiuix/animation/controller/StateHelper;->getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_d

    move v0, v1

    :cond_d
    :goto_d
    move v2, v0

    goto :goto_11

    :cond_f
    const/4 p5, 0x0

    goto :goto_d

    :goto_11
    add-int v3, p4, v0

    .line 146
    invoke-direct {p0, v3, p6}, Lmiuix/animation/controller/StateHelper;->getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 147
    invoke-direct {p0, p2, p3, p5, v3}, Lmiuix/animation/controller/StateHelper;->addPropertyValues(Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    add-int/2addr v0, v1

    add-int/lit8 p2, v2, 0x1

    add-int/2addr p4, v0

    .line 150
    invoke-direct {p0, p1, p3, p4, p6}, Lmiuix/animation/controller/StateHelper;->setInitVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    add-int/lit8 v0, v2, 0x2

    goto :goto_2f

    :cond_2c
    move v0, p2

    goto :goto_2f

    :cond_2e
    move v0, v2

    :cond_2f
    :goto_2f
    return v0
.end method

.method private addPropertyValues(Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12

    .line 176
    instance-of v0, p4, Ljava/lang/Integer;

    if-nez v0, :cond_f

    .line 177
    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_f

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    .line 178
    :cond_f
    :goto_f
    instance-of v1, p2, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v1, :cond_2e

    if-eqz p3, :cond_25

    .line 180
    invoke-direct {p0, p3, v0}, Lmiuix/animation/controller/StateHelper;->toInt(Ljava/lang/Object;Z)I

    move-result p3

    int-to-double v3, p3

    invoke-direct {p0, p4, v0}, Lmiuix/animation/controller/StateHelper;->toInt(Ljava/lang/Object;Z)I

    move-result p3

    int-to-double v5, p3

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/controller/AnimState;->addWithInit(Ljava/lang/Object;DD)Lmiuix/animation/controller/AnimState;

    goto :goto_48

    .line 182
    :cond_25
    invoke-direct {p0, p4, v0}, Lmiuix/animation/controller/StateHelper;->toInt(Ljava/lang/Object;Z)I

    move-result p3

    int-to-double p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    goto :goto_48

    :cond_2e
    if-eqz p3, :cond_40

    .line 186
    invoke-direct {p0, p3, v0}, Lmiuix/animation/controller/StateHelper;->toFloat(Ljava/lang/Object;Z)F

    move-result p3

    float-to-double v3, p3

    invoke-direct {p0, p4, v0}, Lmiuix/animation/controller/StateHelper;->toFloat(Ljava/lang/Object;Z)F

    move-result p3

    float-to-double v5, p3

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/controller/AnimState;->addWithInit(Ljava/lang/Object;DD)Lmiuix/animation/controller/AnimState;

    goto :goto_48

    .line 188
    :cond_40
    invoke-direct {p0, p4, v0}, Lmiuix/animation/controller/StateHelper;->toFloat(Ljava/lang/Object;Z)F

    move-result p3

    float-to-double p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :goto_48
    const/4 p1, 0x1

    return p1
.end method

.method private checkAndSetAnimConfig(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 75
    :cond_4
    instance-of v1, p2, Lmiuix/animation/listener/TransitionListener;

    const/4 v2, 0x1

    if-nez v1, :cond_3b

    instance-of v1, p2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v1, :cond_e

    goto :goto_3b

    .line 78
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 80
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    move v3, v0

    move v4, v3

    :goto_1e
    if-ge v3, v1, :cond_35

    .line 81
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 83
    invoke-direct {p0, p1, v5}, Lmiuix/animation/controller/StateHelper;->addConfigToLink(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    if-eqz v4, :cond_2f

    goto :goto_31

    :cond_2f
    move v4, v0

    goto :goto_32

    :cond_31
    :goto_31
    move v4, v2

    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_35
    return v4

    .line 88
    :cond_36
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/StateHelper;->addConfigToLink(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 76
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Lmiuix/animation/base/AnimConfigLink;->getHead()Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/StateHelper;->setTempConfig(Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;)V

    return v2
.end method

.method private getProperty(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;
    .registers 6

    .line 112
    instance-of v0, p2, Lmiuix/animation/property/FloatProperty;

    if-eqz v0, :cond_7

    .line 113
    check-cast p2, Lmiuix/animation/property/FloatProperty;

    goto :goto_25

    .line 114
    :cond_7
    instance-of v0, p2, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    instance-of p1, p1, Lmiuix/animation/ValueTarget;

    if-eqz p1, :cond_1d

    if-eqz p3, :cond_16

    .line 115
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 116
    :cond_16
    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v1}, Lmiuix/animation/ValueTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;

    move-result-object p2

    goto :goto_25

    .line 117
    :cond_1d
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_24

    .line 118
    sget-object p2, Lmiuix/animation/controller/StateHelper;->DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;

    goto :goto_25

    :cond_24
    move-object p2, v1

    :goto_25
    return-object p2
.end method

.method private varargs getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 159
    array-length v0, p2

    if-ge p1, v0, :cond_6

    aget-object p1, p2, p1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return-object p1
.end method

.method private isDefaultProperty(Lmiuix/animation/property/FloatProperty;)Z
    .registers 3

    .line 68
    sget-object v0, Lmiuix/animation/controller/StateHelper;->DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;

    if-eq p1, v0, :cond_b

    sget-object v0, Lmiuix/animation/controller/StateHelper;->DEFAULT_INT_PROPERTY:Lmiuix/animation/property/IntValueProperty;

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method private varargs setInitVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;I[Ljava/lang/Object;)Z
    .registers 7

    .line 164
    array-length v0, p4

    const/4 v1, 0x0

    if-lt p3, v0, :cond_5

    return v1

    .line 167
    :cond_5
    aget-object p3, p4, p3

    .line 168
    instance-of p4, p3, Ljava/lang/Float;

    if-eqz p4, :cond_17

    .line 169
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    float-to-double p3, p3

    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    const/4 p1, 0x1

    return p1

    :cond_17
    return v1
.end method

.method private varargs setPropertyAndValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[Ljava/lang/Object;)I
    .registers 19

    move-object v7, p0

    move-object v0, p4

    move-object v1, p3

    .line 59
    invoke-direct {p0, p3, p4}, Lmiuix/animation/controller/StateHelper;->checkAndSetAnimConfig(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_30

    move-object v1, p1

    move-object/from16 v3, p6

    .line 60
    invoke-direct {p0, p1, p4, v3}, Lmiuix/animation/controller/StateHelper;->getProperty(Lmiuix/animation/IAnimTarget;Ljava/lang/Object;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 61
    invoke-direct {p0, v3}, Lmiuix/animation/controller/StateHelper;->isDefaultProperty(Lmiuix/animation/property/FloatProperty;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move/from16 v9, p7

    goto :goto_20

    :cond_1d
    add-int/lit8 v0, p7, 0x1

    move v9, v0

    :goto_20
    if-eqz p5, :cond_24

    move v5, v8

    goto :goto_25

    :cond_24
    move v5, v2

    :goto_25
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v9

    move-object/from16 v6, p8

    .line 62
    invoke-direct/range {v0 .. v6}, Lmiuix/animation/controller/StateHelper;->addProperty(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;IZ[Ljava/lang/Object;)I

    move-result v2

    goto :goto_32

    :cond_30
    move/from16 v9, p7

    :goto_32
    if-lez v2, :cond_36

    add-int/2addr v9, v2

    goto :goto_37

    :cond_36
    add-int/2addr v9, v8

    :goto_37
    return v9
.end method

.method private setTempConfig(Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;)V
    .registers 4

    .line 93
    instance-of v0, p2, Lmiuix/animation/listener/TransitionListener;

    if-eqz v0, :cond_e

    .line 94
    check-cast p2, Lmiuix/animation/listener/TransitionListener;

    filled-new-array {p2}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    goto :goto_17

    .line 95
    :cond_e
    instance-of v0, p2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v0, :cond_17

    .line 96
    check-cast p2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    :cond_17
    :goto_17
    return-void
.end method

.method private toFloat(Ljava/lang/Object;Z)F
    .registers 3

    if-eqz p2, :cond_a

    .line 201
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    goto :goto_10

    :cond_a
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_10
    return p1
.end method

.method private toInt(Ljava/lang/Object;Z)I
    .registers 3

    if-eqz p2, :cond_9

    .line 197
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_10

    :cond_9
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    :goto_10
    return p1
.end method


# virtual methods
.method varargs parse(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;Z[Ljava/lang/Object;)V
    .registers 17

    move-object/from16 v9, p5

    .line 25
    array-length v0, v9

    if-nez v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 29
    aget-object v1, v9, v0

    const/4 v10, 0x1

    if-eqz v1, :cond_17

    invoke-virtual {p2}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v0, v10

    :cond_17
    move v7, v0

    .line 33
    :goto_18
    array-length v0, v9

    if-ge v7, v0, :cond_55

    .line 35
    aget-object v4, v9, v7

    const/4 v0, 0x0

    if-eqz p4, :cond_36

    add-int/lit8 v1, v7, 0x1

    .line 38
    array-length v2, v9

    if-ge v1, v2, :cond_28

    aget-object v2, v9, v1

    goto :goto_29

    :cond_28
    move-object v2, v0

    .line 39
    :goto_29
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_33

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_33

    move v7, v1

    goto :goto_18

    :cond_33
    const/4 v1, 0x2

    move-object v5, v2

    goto :goto_38

    :cond_36
    move-object v5, v0

    move v1, v10

    :goto_38
    add-int/2addr v1, v7

    .line 45
    array-length v2, v9

    if-ge v1, v2, :cond_3e

    aget-object v0, v9, v1

    :cond_3e
    move-object v6, v0

    .line 46
    instance-of v0, v4, Ljava/lang/String;

    if-eqz v0, :cond_4a

    instance-of v0, v6, Ljava/lang/String;

    if-eqz v0, :cond_4a

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_4a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v8, p5

    .line 50
    invoke-direct/range {v0 .. v8}, Lmiuix/animation/controller/StateHelper;->setPropertyAndValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v7

    goto :goto_18

    :cond_55
    return-void
.end method
