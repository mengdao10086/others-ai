.class public final Lcom/google/gson/internal/Primitives;
.super Ljava/lang/Object;
.source "Primitives.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrimitive(Ljava/lang/reflect/Type;)Z
    .registers 2

    .line 32
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_e

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isWrapperType(Ljava/lang/reflect/Type;)Z
    .registers 2

    .line 42
    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_27

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_27

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_27

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_27

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_27

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_27

    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_27

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_27

    const-class v0, Ljava/lang/Void;

    if-ne p0, v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0
.end method

.method public static unwrap(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 89
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 90
    :cond_7
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_e

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 91
    :cond_e
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_15

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 92
    :cond_15
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_1c

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 93
    :cond_1c
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_23

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 94
    :cond_23
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_2a

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 95
    :cond_2a
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_31

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 96
    :cond_31
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_38

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 97
    :cond_38
    const-class v0, Ljava/lang/Void;

    if-ne p0, v0, :cond_3e

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :cond_3e
    return-object p0
.end method

.method public static wrap(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 65
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 66
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 67
    :cond_e
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 68
    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 69
    :cond_1c
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 70
    :cond_23
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 71
    :cond_2a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_31

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 72
    :cond_31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_38

    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 73
    :cond_38
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3e

    const-class p0, Ljava/lang/Void;

    :cond_3e
    return-object p0
.end method
