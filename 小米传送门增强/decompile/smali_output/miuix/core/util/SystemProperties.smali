.class public Lmiuix/core/util/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final PROP_VALUE_MAX:I = 0x5b

.field private static final TAG:Ljava/lang/String; = "SystemProperties"

.field private static classSystemProperties:Ljava/lang/Class; = null

.field private static isSupportGet:Z = false

.field private static isSupportGetBoolean:Z = false

.field private static isSupportGetInt:Z = false

.field private static isSupportGetLong:Z = false

.field private static isSupportSet:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 20
    const-class v0, Ljava/lang/String;

    .line 29
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lmiuix/core/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_e

    :catch_b
    const/4 v1, 0x0

    .line 31
    sput-object v1, Lmiuix/core/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 33
    :goto_e
    sget-object v1, Lmiuix/core/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    if-eqz v1, :cond_85

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    :try_start_14
    const-string v4, "get"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    sput-boolean v1, Lmiuix/core/util/SystemProperties;->isSupportGet:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_26

    goto :goto_28

    .line 37
    :catch_26
    sput-boolean v3, Lmiuix/core/util/SystemProperties;->isSupportGet:Z

    .line 40
    :goto_28
    :try_start_28
    sget-object v1, Lmiuix/core/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v4, "getInt"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3a

    move v1, v2

    goto :goto_3b

    :cond_3a
    move v1, v3

    :goto_3b
    sput-boolean v1, Lmiuix/core/util/SystemProperties;->isSupportGetInt:Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_3e

    goto :goto_40

    .line 42
    :catch_3e
    sput-boolean v3, Lmiuix/core/util/SystemProperties;->isSupportGetInt:Z

    .line 45
    :goto_40
    :try_start_40
    sget-object v1, Lmiuix/core/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v4, "getLong"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_52

    move v1, v2

    goto :goto_53

    :cond_52
    move v1, v3

    :goto_53
    sput-boolean v1, Lmiuix/core/util/SystemProperties;->isSupportGetLong:Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_55} :catch_56

    goto :goto_58

    .line 47
    :catch_56
    sput-boolean v3, Lmiuix/core/util/SystemProperties;->isSupportGetLong:Z

    .line 50
    :goto_58
    :try_start_58
    sget-object v1, Lmiuix/core/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v4, "getBoolean"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_6a

    move v1, v2

    goto :goto_6b

    :cond_6a
    move v1, v3

    :goto_6b
    sput-boolean v1, Lmiuix/core/util/SystemProperties;->isSupportGetBoolean:Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6d} :catch_6e

    goto :goto_70

    .line 52
    :catch_6e
    sput-boolean v3, Lmiuix/core/util/SystemProperties;->isSupportGetBoolean:Z

    .line 55
    :goto_70
    :try_start_70
    sget-object v1, Lmiuix/core/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v4, "set"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_7f

    goto :goto_80

    :cond_7f
    move v2, v3

    :goto_80
    sput-boolean v2, Lmiuix/core/util/SystemProperties;->isSupportSet:Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_82} :catch_83

    goto :goto_85

    .line 57
    :catch_83
    sput-boolean v3, Lmiuix/core/util/SystemProperties;->isSupportSet:Z

    :cond_85
    :goto_85
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 75
    const-string v0, ""

    invoke-static {p0, v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 63
    sget-boolean v0, Lmiuix/core/util/SystemProperties;->isSupportGet:Z

    if-eqz v0, :cond_2c

    .line 65
    :try_start_4
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " detail:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-object p1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 5

    .line 130
    sget-boolean v0, Lmiuix/core/util/SystemProperties;->isSupportGetBoolean:Z

    if-eqz v0, :cond_2c

    .line 132
    :try_start_4
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " detail:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 5

    .line 87
    sget-boolean v0, Lmiuix/core/util/SystemProperties;->isSupportGetInt:Z

    if-eqz v0, :cond_2c

    .line 89
    :try_start_4
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " detail:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return p1
.end method

.method public static getLong(Ljava/lang/String;J)J
    .registers 6

    .line 106
    sget-boolean v0, Lmiuix/core/util/SystemProperties;->isSupportGetLong:Z

    if-eqz v0, :cond_2c

    .line 108
    :try_start_4
    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_8} :catch_9

    return-wide p0

    :catch_9
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " detail:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-wide p1
.end method

.method public static set(Ljava/lang/String;I)V
    .registers 2

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/core/util/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static set(Ljava/lang/String;J)V
    .registers 3

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/core/util/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 146
    sget-boolean v0, Lmiuix/core/util/SystemProperties;->isSupportSet:Z

    if-eqz v0, :cond_2b

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_23

    if-eqz p1, :cond_1f

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5b

    if-gt v0, v1, :cond_17

    goto :goto_1f

    .line 151
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "val.length > 91"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_1f
    :goto_1f
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 148
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key.length > 31"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static set(Ljava/lang/String;Z)V
    .registers 2

    .line 182
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmiuix/core/util/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
