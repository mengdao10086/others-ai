.class public Lmiuix/responsive/wrapper/WrapperHelper;
.super Ljava/lang/Object;
.source "WrapperHelper.java"


# direct methods
.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 4

    .line 15
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-nez v0, :cond_11

    .line 16
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-eqz v1, :cond_d

    goto :goto_11

    .line 31
    :cond_d
    invoke-static {p0, p1}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_36

    .line 17
    :cond_11
    :goto_11
    instance-of v1, v0, Lmiuix/responsive/wrapper/Factory2Wrapper;

    if-eqz v1, :cond_1f

    .line 18
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    check-cast p0, Lmiuix/responsive/wrapper/Factory2Wrapper;

    invoke-virtual {p0, p1}, Lmiuix/responsive/wrapper/Factory2Wrapper;->setOriginFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_36

    .line 20
    :cond_1f
    instance-of v1, p1, Lmiuix/responsive/wrapper/Factory2Wrapper;

    if-eqz v1, :cond_29

    .line 21
    move-object v1, p1

    check-cast v1, Lmiuix/responsive/wrapper/Factory2Wrapper;

    invoke-virtual {v1, v0}, Lmiuix/responsive/wrapper/Factory2Wrapper;->setOriginFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 24
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mFactory2"

    invoke-static {v0, p0, v1, p1}, Lmiuix/reflect/ReflectionHelper;->setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_36} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_36} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception p0

    goto :goto_3c

    :catch_39
    move-exception p0

    goto :goto_3c

    :catch_3b
    move-exception p0

    .line 27
    :goto_3c
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
