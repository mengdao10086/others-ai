.class public Lmiuix/animation/utils/GenericClassManager;
.super Ljava/lang/Object;
.source "GenericClassManager.java"


# instance fields
.field mClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/GenericClassManager;->mClassMap:Ljava/util/Map;

    return-void
.end method

.method public static getGenericClass(Lmiuix/animation/property/FloatProperty;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/property/FloatProperty;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 46
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1f

    .line 47
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 48
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 49
    array-length v0, p0

    if-lez v0, :cond_1f

    const/4 v0, 0x0

    .line 50
    aget-object p0, p0, v0

    .line 51
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1f

    .line 52
    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGenericClass(Lmiuix/animation/property/IIntValueProperty;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/property/IIntValueProperty;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 61
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1f

    .line 62
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 63
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 64
    array-length v0, p0

    if-lez v0, :cond_1f

    const/4 v0, 0x0

    .line 65
    aget-object p0, p0, v0

    .line 66
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1f

    .line 67
    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public get(Lmiuix/animation/property/FloatProperty;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/property/FloatProperty;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lmiuix/animation/utils/GenericClassManager;->mClassMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 23
    invoke-static {p1}, Lmiuix/animation/utils/GenericClassManager;->getGenericClass(Lmiuix/animation/property/FloatProperty;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lmiuix/animation/utils/GenericClassManager;->mClassMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 27
    :cond_12
    iget-object v0, p0, Lmiuix/animation/utils/GenericClassManager;->mClassMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public get(Lmiuix/animation/property/IIntValueProperty;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/property/IIntValueProperty;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lmiuix/animation/utils/GenericClassManager;->mClassMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 35
    invoke-static {p1}, Lmiuix/animation/utils/GenericClassManager;->getGenericClass(Lmiuix/animation/property/IIntValueProperty;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lmiuix/animation/utils/GenericClassManager;->mClassMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 39
    :cond_12
    iget-object v0, p0, Lmiuix/animation/utils/GenericClassManager;->mClassMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method
