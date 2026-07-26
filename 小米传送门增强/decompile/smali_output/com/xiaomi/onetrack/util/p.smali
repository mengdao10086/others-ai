.class public Lcom/xiaomi/onetrack/util/p;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Z = false

.field private static final d:I = 0xbb8

.field private static final e:Ljava/lang/String; = "OneTrack-Api-"

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3

.field private static final j:I = 0x4

.field private static k:Z = false

.field private static l:Z = false

.field private static m:Z = false

.field private static n:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneTrack-Api-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 6

    .line 28
    const-string v0, "OneTrackSdk"

    :try_start_2
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 29
    const-string v2, "debug.onetrack.log"

    invoke-static {v2}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_24

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v5

    goto :goto_25

    :catch_22
    move-exception v1

    goto :goto_66

    :cond_24
    move v2, v4

    :goto_25
    sput-boolean v2, Lcom/xiaomi/onetrack/util/p;->l:Z

    .line 32
    const-string v2, "debug.onetrack.upload"

    invoke-static {v2}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    move v2, v5

    goto :goto_42

    :cond_41
    move v2, v4

    :goto_42
    sput-boolean v2, Lcom/xiaomi/onetrack/util/p;->b:Z

    .line 35
    const-string v2, "debug.onetrack.test"

    invoke-static {v2}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    move v4, v5

    :cond_5d
    sput-boolean v4, Lcom/xiaomi/onetrack/util/p;->n:Z

    .line 38
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->b()V

    .line 39
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->c()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_65} :catch_22

    goto :goto_7e

    .line 42
    :goto_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogUtil static initializer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", quick upload on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaomi/onetrack/util/p;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 50
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_c

    .line 51
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 100
    :cond_4
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0xbb8

    if-gt v0, v1, :cond_43

    mul-int/lit16 v1, v0, 0xbb8

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v3, v0, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 104
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_3f

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3b

    const/4 v2, 0x2

    if-eq p2, v2, :cond_37

    const/4 v2, 0x3

    if-eq p2, v2, :cond_33

    const/4 v2, 0x4

    if-eq p2, v2, :cond_2f

    goto :goto_4

    .line 119
    :cond_2f
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 116
    :cond_33
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 113
    :cond_37
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 110
    :cond_3b
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 107
    :cond_3f
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_43
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 56
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_b

    .line 57
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public static a(Z)V
    .registers 1

    .line 131
    sput-boolean p0, Lcom/xiaomi/onetrack/util/p;->k:Z

    .line 132
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->b()V

    return-void
.end method

.method private static b()V
    .registers 2

    .line 136
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->k:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->l:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDebugSwitch sEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sDebugMode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sDebugProperty\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 62
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_c

    .line 63
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 68
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_b

    .line 69
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public static b(Z)V
    .registers 1

    .line 141
    sput-boolean p0, Lcom/xiaomi/onetrack/util/p;->m:Z

    .line 142
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->c()V

    return-void
.end method

.method private static c()V
    .registers 2

    .line 146
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->m:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->n:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    sput-boolean v0, Lcom/xiaomi/onetrack/util/p;->c:Z

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTestSwitch sTestEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sTestMode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sTestProperty\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaomi/onetrack/util/p;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneTrackSdk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 74
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_c

    .line 75
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 80
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_b

    .line 81
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 86
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_c

    .line 87
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 92
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_b

    .line 93
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method
