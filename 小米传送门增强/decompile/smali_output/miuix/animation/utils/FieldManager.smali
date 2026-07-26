.class public Lmiuix/animation/utils/FieldManager;
.super Ljava/lang/Object;
.source "FieldManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/FieldManager$MethodInfo;,
        Lmiuix/animation/utils/FieldManager$FieldInfo;
    }
.end annotation


# static fields
.field static final GET:Ljava/lang/String; = "get"

.field static final SET:Ljava/lang/String; = "set"


# instance fields
.field mFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/utils/FieldManager$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field mMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/utils/FieldManager$MethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    return-void
.end method

.method static getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lmiuix/animation/utils/FieldManager$FieldInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/utils/FieldManager$FieldInfo;",
            ">;)",
            "Lmiuix/animation/utils/FieldManager$FieldInfo;"
        }
    .end annotation

    .line 138
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/FieldManager$FieldInfo;

    if-nez v0, :cond_16

    .line 140
    new-instance v0, Lmiuix/animation/utils/FieldManager$FieldInfo;

    invoke-direct {v0}, Lmiuix/animation/utils/FieldManager$FieldInfo;-><init>()V

    .line 141
    invoke-static {p0, p1, p2}, Lmiuix/animation/utils/FieldManager;->getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    iput-object p0, v0, Lmiuix/animation/utils/FieldManager$FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 142
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method static getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 150
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_9} :catch_e

    const/4 v2, 0x1

    .line 151
    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_d} :catch_f

    goto :goto_17

    :catch_e
    move-object v1, v0

    .line 154
    :catch_f
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_17} :catch_17

    :catch_17
    :goto_17
    if-eqz v1, :cond_20

    .line 159
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    if-eq p0, p2, :cond_20

    goto :goto_21

    :cond_20
    move-object v0, v1

    :goto_21
    return-object v0
.end method

.method static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_16

    .line 128
    :catch_e
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_16} :catch_16

    :catch_16
    :goto_16
    return-object v0
.end method

.method static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Class;)Lmiuix/animation/utils/FieldManager$MethodInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/utils/FieldManager$MethodInfo;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiuix/animation/utils/FieldManager$MethodInfo;"
        }
    .end annotation

    .line 112
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/FieldManager$MethodInfo;

    if-nez v0, :cond_16

    .line 114
    new-instance v0, Lmiuix/animation/utils/FieldManager$MethodInfo;

    invoke-direct {v0}, Lmiuix/animation/utils/FieldManager$MethodInfo;-><init>()V

    .line 115
    invoke-static {p0, p1, p3}, Lmiuix/animation/utils/FieldManager;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    iput-object p0, v0, Lmiuix/animation/utils/FieldManager$MethodInfo;->method:Ljava/lang/reflect/Method;

    .line 116
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            ")TT;"
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 168
    :try_start_2
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ValueProperty.invokeMethod failed, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    const-string p2, "miuix_anim"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method static retToClz(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 75
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_6
    check-cast p0, Ljava/lang/Number;

    .line 79
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_3a

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_11

    goto :goto_3a

    .line 81
    :cond_11
    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_31

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1a

    goto :goto_31

    .line 84
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPropertyValue, clz must be float or int instead of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_31
    :goto_31
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 80
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static setValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            "TT;)V"
        }
    .end annotation

    .line 104
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method


# virtual methods
.method public declared-synchronized getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
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

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_57

    if-eqz p2, :cond_57

    .line 30
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_57

    .line 33
    :cond_d
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/utils/FieldManager$MethodInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 35
    const-string v1, "get"

    invoke-static {p2, v1}, Lmiuix/animation/utils/FieldManager;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {p1, v1, v3, v4}, Lmiuix/animation/utils/FieldManager;->getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Class;)Lmiuix/animation/utils/FieldManager$MethodInfo;

    move-result-object v1

    goto :goto_29

    :catchall_27
    move-exception p1

    goto :goto_55

    .line 37
    :cond_29
    :goto_29
    iget-object v1, v1, Lmiuix/animation/utils/FieldManager$MethodInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_39

    .line 38
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, p2}, Lmiuix/animation/utils/FieldManager;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    invoke-static {p1, p3}, Lmiuix/animation/utils/FieldManager;->retToClz(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_27

    monitor-exit p0

    return-object p1

    .line 41
    :cond_39
    :try_start_39
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/utils/FieldManager$FieldInfo;

    if-nez v1, :cond_49

    .line 43
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    invoke-static {p1, p2, p3, v1}, Lmiuix/animation/utils/FieldManager;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lmiuix/animation/utils/FieldManager$FieldInfo;

    move-result-object v1

    .line 45
    :cond_49
    iget-object p2, v1, Lmiuix/animation/utils/FieldManager$FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_53

    .line 46
    invoke-static {p1, p2}, Lmiuix/animation/utils/FieldManager;->getValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_27

    monitor-exit p0

    return-object p1

    .line 48
    :cond_53
    monitor-exit p0

    return-object v0

    :goto_55
    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_27

    throw p1

    .line 31
    :cond_57
    :goto_57
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 9
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

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_55

    if-eqz p2, :cond_55

    .line 52
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_55

    .line 55
    :cond_d
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/utils/FieldManager$MethodInfo;

    if-nez v1, :cond_2a

    .line 57
    const-string v1, "set"

    invoke-static {p2, v1}, Lmiuix/animation/utils/FieldManager;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    filled-new-array {p3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lmiuix/animation/utils/FieldManager;->getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Class;)Lmiuix/animation/utils/FieldManager$MethodInfo;

    move-result-object v1

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_53

    .line 59
    :cond_2a
    :goto_2a
    iget-object v1, v1, Lmiuix/animation/utils/FieldManager$MethodInfo;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-eqz v1, :cond_38

    .line 60
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lmiuix/animation/utils/FieldManager;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_28

    .line 61
    monitor-exit p0

    return v2

    .line 63
    :cond_38
    :try_start_38
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/utils/FieldManager$FieldInfo;

    if-nez v1, :cond_48

    .line 65
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    invoke-static {p1, p2, p3, v1}, Lmiuix/animation/utils/FieldManager;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lmiuix/animation/utils/FieldManager$FieldInfo;

    move-result-object v1

    .line 67
    :cond_48
    iget-object p2, v1, Lmiuix/animation/utils/FieldManager$FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_51

    .line 68
    invoke-static {p1, p2, p4}, Lmiuix/animation/utils/FieldManager;->setValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_28

    .line 69
    monitor-exit p0

    return v2

    .line 71
    :cond_51
    monitor-exit p0

    return v0

    :goto_53
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_28

    throw p1

    .line 53
    :cond_55
    :goto_55
    monitor-exit p0

    return v0
.end method
