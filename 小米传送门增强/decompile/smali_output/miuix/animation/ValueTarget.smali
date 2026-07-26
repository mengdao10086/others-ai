.class public Lmiuix/animation/ValueTarget;
.super Lmiuix/animation/IAnimTarget;
.source "ValueTarget.java"

# interfaces
.implements Lmiuix/animation/FolmeObject;


# static fields
.field private static final DEFAULT_MIN_VALUE:F = 0.002f

.field static sCreator:Lmiuix/animation/ITargetCreator;


# instance fields
.field private mCoreAnimator:Lmiuix/animation/Folme$ObjectFolmeImpl;

.field private final mMaxType:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTargetObj:Lmiuix/animation/property/ValueTargetObject;

.field private final mWithoutRealObj:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lmiuix/animation/ValueTarget$1;

    invoke-direct {v0}, Lmiuix/animation/ValueTarget$1;-><init>()V

    sput-object v0, Lmiuix/animation/ValueTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmiuix/animation/ValueTarget;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lmiuix/animation/ValueTarget;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Ljava/lang/Object;)V
    .registers 4

    .line 65
    invoke-direct {p0, p1}, Lmiuix/animation/IAnimTarget;-><init>(Landroid/os/Looper;)V

    .line 52
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x3e8

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lmiuix/animation/ValueTarget;->mMaxType:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p2, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 66
    :goto_11
    iput-boolean p1, p0, Lmiuix/animation/ValueTarget;->mWithoutRealObj:Z

    .line 67
    new-instance p1, Lmiuix/animation/property/ValueTargetObject;

    if-nez p2, :cond_1f

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_1f
    invoke-direct {p1, p2}, Lmiuix/animation/property/ValueTargetObject;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Lmiuix/animation/ValueTarget$1;)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2}, Lmiuix/animation/ValueTarget;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    return-void
.end method

.method public static createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiuix/animation/property/FloatProperty;"
        }
    .end annotation

    .line 30
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_f

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_9

    goto :goto_f

    .line 32
    :cond_9
    new-instance p1, Lmiuix/animation/property/ValueProperty;

    invoke-direct {p1, p0}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    goto :goto_14

    .line 31
    :cond_f
    :goto_f
    new-instance p1, Lmiuix/animation/property/IntValueProperty;

    invoke-direct {p1, p0}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    :goto_14
    return-object p1
.end method

.method public static getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;
    .registers 2

    .line 42
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lmiuix/animation/ValueTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;

    move-result-object p0

    return-object p0
.end method

.method public static getIntValueProperty(Ljava/lang/String;)Lmiuix/animation/property/IIntValueProperty;
    .registers 2

    .line 46
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lmiuix/animation/ValueTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;

    move-result-object p0

    check-cast p0, Lmiuix/animation/property/IIntValueProperty;

    return-object p0
.end method

.method private static isPredefinedProperty(Ljava/lang/Object;)Z
    .registers 2

    .line 36
    instance-of v0, p0, Lmiuix/animation/property/ValueProperty;

    if-nez v0, :cond_f

    instance-of v0, p0, Lmiuix/animation/property/ViewProperty;

    if-nez v0, :cond_f

    instance-of p0, p0, Lmiuix/animation/property/ColorProperty;

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method


# virtual methods
.method public clean()V
    .registers 2

    const/4 v0, 0x0

    .line 359
    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 360
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->cancelRunningAnim()V

    .line 362
    :cond_c
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimManager;->clear()V

    .line 363
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners()V

    return-void
.end method

.method public doSetIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .registers 7

    .line 195
    iget-boolean v0, p0, Lmiuix/animation/ValueTarget;->mWithoutRealObj:Z

    if-eqz v0, :cond_13

    .line 196
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiuix/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lmiuix/animation/property/ValueTargetObject;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 198
    :cond_13
    invoke-static {p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 199
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiuix/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 201
    :cond_28
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueTargetObject;->getGenericClass(Lmiuix/animation/property/IIntValueProperty;)Ljava/lang/Class;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v1}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v0, :cond_40

    .line 204
    invoke-interface {p1, v1, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    return-void

    .line 207
    :cond_40
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v0, :cond_52

    .line 208
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    return-void

    .line 211
    :cond_52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v0, :cond_5c

    .line 212
    invoke-interface {p1, p0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    return-void

    .line 216
    :cond_5c
    :try_start_5c
    invoke-interface {p1, v1, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_60

    return-void

    .line 222
    :catch_60
    :try_start_60
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_67} :catch_68

    return-void

    .line 228
    :catch_68
    :try_start_68
    invoke-interface {p1, p0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6b

    :catch_6b
    return-void
.end method

.method public doSetValue(Lmiuix/animation/property/FloatProperty;F)V
    .registers 7

    .line 102
    iget-boolean v0, p0, Lmiuix/animation/ValueTarget;->mWithoutRealObj:Z

    if-eqz v0, :cond_13

    .line 103
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lmiuix/animation/property/ValueTargetObject;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z

    .line 105
    :cond_13
    invoke-static {p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 106
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 108
    :cond_28
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v1, p1}, Lmiuix/animation/property/ValueTargetObject;->getGenericClass(Lmiuix/animation/property/FloatProperty;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_40

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v1, :cond_40

    .line 111
    invoke-virtual {p1, v0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void

    .line 114
    :cond_40
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v1, :cond_52

    .line 115
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void

    .line 118
    :cond_52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v1, :cond_5c

    .line 119
    invoke-virtual {p1, p0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void

    :cond_5c
    if-eqz v0, :cond_62

    .line 124
    :try_start_5e
    invoke-virtual {p1, v0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_62

    return-void

    .line 131
    :catch_62
    :cond_62
    :try_start_62
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_6a

    return-void

    .line 137
    :catch_6a
    :try_start_6a
    invoke-virtual {p1, p0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6d

    :catch_6d
    return-void
.end method

.method public folme()Lmiuix/animation/Folme$ObjectFolmeImpl;
    .registers 2

    .line 378
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mCoreAnimator:Lmiuix/animation/Folme$ObjectFolmeImpl;

    return-object v0
.end method

.method public getDefaultMinVisible()F
    .registers 2

    .line 0
    const v0, 0x3b03126f    # 0.002f

    return v0
.end method

.method public getDoubleValue(Lmiuix/animation/property/FloatProperty;)D
    .registers 6

    .line 289
    instance-of v0, p1, Lmiuix/animation/property/IIntValueProperty;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-eqz v0, :cond_23

    .line 291
    :try_start_c
    move-object v0, p1

    check-cast v0, Lmiuix/animation/property/IIntValueProperty;

    invoke-virtual {p0, v0}, Lmiuix/animation/ValueTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_1a

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2d

    int-to-double v0, v0

    goto :goto_2e

    .line 296
    :catch_1a
    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2d

    goto :goto_2b

    .line 302
    :cond_23
    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result v0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2d

    :goto_2b
    float-to-double v0, v0

    goto :goto_2e

    :cond_2d
    move-wide v0, v2

    :goto_2e
    cmpl-double v2, v0, v2

    if-nez v2, :cond_48

    .line 307
    iget-object v2, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/animation/property/ValueTargetObject;->containProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 308
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;)D

    move-result-wide v0

    :cond_48
    return-wide v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .registers 4

    .line 86
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueTargetObject;->containProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 87
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int p1, v0

    return p1

    .line 89
    :cond_10
    invoke-static {p1}, Lmiuix/animation/ValueTarget;->getIntValueProperty(Ljava/lang/String;)Lmiuix/animation/property/IIntValueProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getIntValue(Lmiuix/animation/property/IIntValueProperty;)I

    move-result p1

    return p1
.end method

.method public getIntValue(Lmiuix/animation/property/IIntValueProperty;)I
    .registers 7

    .line 237
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueTargetObject;->getGenericClass(Lmiuix/animation/property/IIntValueProperty;)Ljava/lang/Class;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v1}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 239
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v0, :cond_1e

    .line 240
    invoke-interface {p1, v1}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v2

    .line 242
    :goto_1f
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v0, :cond_35

    .line 243
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 245
    :cond_35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v0, :cond_43

    .line 246
    invoke-interface {p1, p0}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_43
    const v0, 0x7fffffff

    if-eqz v3, :cond_4e

    .line 248
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_56

    .line 250
    :cond_4e
    :try_start_4e
    invoke-interface {p1, v1}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_56} :catch_56

    :catch_56
    :cond_56
    if-eqz v3, :cond_5e

    .line 255
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_6a

    .line 257
    :cond_5e
    :try_start_5e
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6a} :catch_6a

    :catch_6a
    :cond_6a
    if-eqz v3, :cond_72

    .line 262
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_7a

    .line 264
    :cond_72
    :try_start_72
    invoke-interface {p1, p0}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7a} :catch_7a

    :catch_7a
    :cond_7a
    if-eqz v3, :cond_82

    .line 269
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_b0

    .line 271
    :cond_82
    iget-boolean v1, p0, Lmiuix/animation/ValueTarget;->mWithoutRealObj:Z

    if-eqz v1, :cond_92

    .line 272
    iget-object v1, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiuix/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p0, v2, v4}, Lmiuix/animation/property/ValueTargetObject;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    :cond_92
    if-eqz v2, :cond_9b

    .line 275
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 277
    :cond_9b
    invoke-static {p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 278
    iget-object v1, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-interface {p1}, Lmiuix/animation/property/IIntValueProperty;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    :cond_b0
    if-nez v3, :cond_b3

    goto :goto_b7

    .line 281
    :cond_b3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_b7
    return v0
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .registers 3

    .line 337
    instance-of v0, p1, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v0, :cond_b

    instance-of v0, p1, Lmiuix/animation/property/ColorProperty;

    if-nez v0, :cond_b

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 340
    :cond_b
    invoke-super {p0, p1}, Lmiuix/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public getTargetObject()Ljava/lang/Object;
    .registers 2

    .line 353
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)F
    .registers 4

    .line 71
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueTargetObject;->containProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 72
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    .line 74
    :cond_10
    invoke-static {p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/ValueTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/animation/property/FloatProperty;)F
    .registers 7

    .line 145
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueTargetObject;->getGenericClass(Lmiuix/animation/property/FloatProperty;)Ljava/lang/Class;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v1}, Lmiuix/animation/property/ValueTargetObject;->getRealObject()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 148
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v0, :cond_1e

    .line 149
    invoke-virtual {p1, v1}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v2

    :goto_1f
    if-nez v3, :cond_37

    .line 151
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v0, :cond_37

    .line 152
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_37
    if-nez v3, :cond_47

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v0, :cond_47

    .line 155
    invoke-virtual {p1, p0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_47
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v3, :cond_54

    .line 157
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v0

    if-nez v4, :cond_5c

    .line 159
    :cond_54
    :try_start_54
    invoke-virtual {p1, v1}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5c} :catch_5c

    :catch_5c
    :cond_5c
    if-eqz v3, :cond_66

    .line 164
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_72

    .line 166
    :cond_66
    :try_start_66
    invoke-virtual {p0}, Lmiuix/animation/ValueTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_72} :catch_72

    :catch_72
    :cond_72
    if-eqz v3, :cond_7c

    .line 171
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_84

    .line 173
    :cond_7c
    :try_start_7c
    invoke-virtual {p1, p0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_84} :catch_84

    :catch_84
    :cond_84
    if-eqz v3, :cond_8e

    .line 178
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_bc

    .line 180
    :cond_8e
    iget-boolean v1, p0, Lmiuix/animation/ValueTarget;->mWithoutRealObj:Z

    if-eqz v1, :cond_9e

    .line 181
    iget-object v1, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p0, v2, v4}, Lmiuix/animation/property/ValueTargetObject;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    :cond_9e
    if-eqz v2, :cond_a7

    .line 184
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 186
    :cond_a7
    invoke-static {p1}, Lmiuix/animation/ValueTarget;->isPredefinedProperty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 187
    iget-object v1, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Float;

    :cond_bc
    if-nez v3, :cond_bf

    goto :goto_c3

    .line 190
    :cond_bf
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_c3
    return v0
.end method

.method public getVelocity(Ljava/lang/String;)D
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    invoke-static {p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v0

    return-wide v0
.end method

.method public isValid()Z
    .registers 2

    .line 345
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 348
    :cond_6
    invoke-virtual {v0}, Lmiuix/animation/property/ValueTargetObject;->isValid()Z

    move-result v0

    return v0
.end method

.method public setFolmeImpl(Lmiuix/animation/Folme$ObjectFolmeImpl;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lmiuix/animation/ValueTarget;->mCoreAnimator:Lmiuix/animation/Folme$ObjectFolmeImpl;

    return-void
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .registers 5

    .line 93
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueTargetObject;->containProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 94
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_14
    invoke-static {p1}, Lmiuix/animation/ValueTarget;->getIntValueProperty(Ljava/lang/String;)Lmiuix/animation/property/IIntValueProperty;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    return-void
.end method

.method public setValue(Ljava/lang/String;F)V
    .registers 5

    .line 78
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    invoke-virtual {v0, p1}, Lmiuix/animation/property/ValueTargetObject;->containProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 79
    iget-object v0, p0, Lmiuix/animation/ValueTarget;->mTargetObj:Lmiuix/animation/property/ValueTargetObject;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    .line 82
    :cond_14
    invoke-static {p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    return-void
.end method

.method public setVelocity(Ljava/lang/String;D)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    invoke-static {p1}, Lmiuix/animation/ValueTarget;->getFloatProperty(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    return-void
.end method
