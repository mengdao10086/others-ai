.class public Lcom/xiaomi/onetrack/util/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x21

.field public static final b:I = 0x1d

.field public static final c:I = 0x19

.field public static final d:I = 0x18

.field public static final e:I = 0x17

.field public static final f:I = 0x16

.field public static final g:I = 0x15

.field public static final h:I = 0x13

.field public static final i:I = 0x11

.field public static final j:I = 0x1c

.field public static final k:I = 0x2

.field public static final l:I = 0x4

.field private static final m:Ljava/lang/String; = "OsUtil"

.field private static n:Ljava/lang/Class; = null

.field private static o:Ljava/lang/reflect/Method; = null

.field private static p:Ljava/lang/Boolean; = null

.field private static final q:Ljava/lang/String; = ""

.field private static r:Ljava/lang/reflect/Method; = null

.field private static s:Z = false

.field private static t:Ljava/lang/String; = null

.field private static u:Z = false

.field private static v:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 49
    const-string v0, "OsUtil"

    .line 56
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 57
    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/q;->r:Ljava/lang/reflect/Method;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_17

    goto :goto_30

    :catchall_17
    move-exception v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sGetProp init failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_30
    :try_start_30
    const-string v1, "miui.os.Build"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/q;->n:Ljava/lang/Class;
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_39

    goto :goto_52

    :catchall_39
    move-exception v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sMiuiBuild init failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_52
    :try_start_52
    const-string v1, "android.provider.MiuiSettings$Secure"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    const-string v2, "isUserExperienceProgramEnable"

    const-class v3, Landroid/content/ContentResolver;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/util/q;->o:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_6b

    goto :goto_84

    :catchall_6b
    move-exception v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sMiuiUEPMethod init failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_84
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 4

    const v0, 0xea60

    .line 107
    :try_start_3
    div-int/2addr p0, v0

    if-gez p0, :cond_a

    neg-int p0, p0

    const/16 v0, 0x2d

    goto :goto_c

    :cond_a
    const/16 v0, 0x2b

    .line 113
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    div-int/lit8 v0, p0, 0x3c

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/StringBuilder;I)V

    const/16 v0, 0x3a

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    rem-int/lit8 p0, p0, 0x3c

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/StringBuilder;I)V

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_2f

    return-object p0

    .line 121
    :catch_2f
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .registers 4

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 127
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_15

    const/16 v1, 0x30

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 130
    :cond_15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 359
    sput-boolean p0, Lcom/xiaomi/onetrack/util/q;->u:Z

    return-void
.end method

.method public static a(ZLjava/lang/String;Lcom/xiaomi/onetrack/OneTrack$Mode;)V
    .registers 4

    .line 344
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne p2, v0, :cond_6

    const/4 p2, 0x3

    goto :goto_13

    .line 346
    :cond_6
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne p2, v0, :cond_c

    const/4 p2, 0x2

    goto :goto_13

    .line 348
    :cond_c
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

    if-ne p2, v0, :cond_12

    const/4 p2, 0x1

    goto :goto_13

    :cond_12
    const/4 p2, 0x0

    .line 351
    :goto_13
    sget v0, Lcom/xiaomi/onetrack/util/q;->v:I

    if-gt v0, p2, :cond_1d

    .line 352
    sput-boolean p0, Lcom/xiaomi/onetrack/util/q;->s:Z

    .line 353
    sput-object p1, Lcom/xiaomi/onetrack/util/q;->t:Ljava/lang/String;

    .line 354
    sput p2, Lcom/xiaomi/onetrack/util/q;->v:I

    :cond_1d
    return-void
.end method

.method public static a()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 91
    :cond_9
    const-string v0, "ro.miui.ui.version.code"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 93
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/xiaomi/onetrack/util/q;->p:Ljava/lang/Boolean;

    goto :goto_1e

    .line 95
    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/xiaomi/onetrack/util/q;->p:Ljava/lang/Boolean;

    .line 97
    :goto_1e
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 6

    .line 178
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->o:Ljava/lang/reflect/Method;

    const-string v1, "OsUtil"

    const/4 v2, 0x1

    if-nez v0, :cond_4e

    .line 180
    :try_start_7
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "upload_log_pref"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUserExperiencePlanEnabled upload_log_value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_33

    if-ne v0, v2, :cond_2f

    return v2

    :cond_2f
    if-nez v0, :cond_35

    const/4 p0, 0x0

    return p0

    :catchall_33
    move-exception v0

    goto :goto_36

    :cond_35
    return v2

    .line 194
    :goto_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_4e
    :try_start_4e
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->o:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_64

    return p0

    :catchall_64
    move-exception p0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUserExperiencePlanEnabled failed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    .line 210
    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result v0

    const-string v1, "should not access network or location, cta"

    const/4 v2, 0x1

    if-nez v0, :cond_28

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isUseSystemNetTrafficOnly()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_28

    .line 214
    :cond_10
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->g()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 215
    const-string v0, "should not access network or location, not provisioned"

    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 218
    :cond_1c
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v0

    if-nez v0, :cond_26

    .line 219
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_26
    const/4 p0, 0x0

    return p0

    .line 211
    :cond_28
    :goto_28
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 102
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 77
    :try_start_1
    sget-object v1, Lcom/xiaomi/onetrack/util/q;->r:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2d

    .line 78
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProp failed ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OsUtil"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 4

    .line 139
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->n:Ljava/lang/Class;

    if-eqz v0, :cond_75

    .line 141
    :try_start_4
    const-string v1, "IS_ALPHA_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 144
    const-string v0, "A"

    return-object v0

    :catch_1a
    move-exception v0

    goto :goto_5b

    .line 147
    :cond_1c
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->n:Ljava/lang/Class;

    const-string v2, "IS_STABLE_VERSION"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 150
    const-string v0, "S"

    return-object v0

    .line 153
    :cond_33
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v2, ".DEV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 154
    sget-object v2, Lcom/xiaomi/onetrack/util/q;->n:Ljava/lang/Class;

    const-string v3, "IS_DEVELOPMENT_VERSION"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_54

    if-nez v0, :cond_54

    .line 157
    const-string v0, "D"

    return-object v0

    :cond_54
    if-eqz v1, :cond_75

    if-eqz v0, :cond_75

    .line 161
    const-string v0, "X"
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5a} :catch_1a

    return-object v0

    .line 164
    :goto_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRomBuildCode failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OsUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_75
    const-string v0, ""

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .line 226
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .line 262
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static f()I
    .registers 6

    .line 266
    const-string v0, "OsUtil"

    const/4 v1, 0x0

    .line 269
    :try_start_3
    const-class v2, Landroid/os/UserHandle;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 270
    const-string v3, "getUserId"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 272
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 273
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_3d

    .line 274
    :try_start_29
    const-string v1, "getUserId, uid:%d, userId:%d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_3b

    goto :goto_5d

    :catchall_3b
    move-exception v1

    goto :goto_41

    :catchall_3d
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 277
    :goto_41
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserId exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    if-nez v2, :cond_64

    const/4 v0, 0x0

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 282
    :cond_64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static g()Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 288
    const-string v0, "OsUtil"

    const/4 v1, 0x1

    :try_start_3
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 292
    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_15

    move v4, v1

    :cond_15
    if-nez v4, :cond_2e

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provisioned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2c

    goto :goto_2e

    :catch_2c
    move-exception v2

    goto :goto_2f

    :cond_2e
    :goto_2e
    return v4

    .line 298
    :goto_2f
    const-string v3, "isDeviceProvisioned exception"

    invoke-static {v0, v3, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static h()Z
    .registers 1

    .line 327
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->u:Z

    if-nez v0, :cond_f

    .line 328
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->l()Z

    move-result v0

    return v0

    .line 330
    :cond_f
    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->s:Z

    return v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    .line 335
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->u:Z

    if-nez v0, :cond_f

    .line 336
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 338
    :cond_f
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/xiaomi/onetrack/util/q;->t:Ljava/lang/String;

    goto :goto_1e

    :cond_1a
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    .line 363
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k()Ljava/lang/String;
    .registers 7

    .line 231
    const-string v0, ""

    :try_start_2
    const-string v1, "ro.miui.region"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 233
    const-string v1, "ro.product.locale.region"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :catchall_15
    move-exception v1

    goto/16 :goto_94

    .line 235
    :cond_18
    :goto_18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 237
    const-string v2, "android.os.LocaleList"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDefault"

    const/4 v4, 0x0

    .line 238
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "size"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 240
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_7b

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_7b

    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "get"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "getCountry"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 243
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7b

    .line 244
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 248
    :cond_7b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 252
    :cond_89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 253
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_93
    .catchall {:try_start_2 .. :try_end_93} :catchall_15

    return-object v0

    .line 256
    :goto_94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegion Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsUtil"

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    return-object v0
.end method

.method private static l()Z
    .registers 2

    .line 305
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->n:Ljava/lang/Class;

    if-eqz v0, :cond_16

    .line 307
    :try_start_4
    const-string v1, "IS_INTERNATIONAL_BUILD"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    return v0

    .line 316
    :catch_16
    :cond_16
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 318
    const-string v1, "CN"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method
