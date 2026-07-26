.class public Lcom/xiaomi/onetrack/util/oaid/helpers/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/String; = "b"


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

.method private static c()Ljava/lang/String;
    .registers 1

    .line 56
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 62
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_15

    :catch_9
    move-exception p1

    .line 64
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    :goto_15
    return-object p1
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    invoke-static {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->b(Ljava/lang/String;)Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 73
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->o:Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;

    .line 75
    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/b;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 76
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->p:Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;

    :cond_14
    if-eqz v0, :cond_8d

    .line 81
    sget-object p2, Lcom/xiaomi/onetrack/util/oaid/helpers/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_9e

    const-string p1, ""

    goto :goto_8c

    .line 118
    :pswitch_24
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/m;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/m;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 113
    :pswitch_2e
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/i;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/i;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 110
    :pswitch_38
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 105
    :pswitch_3d
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/l;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/l;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 102
    :pswitch_47
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/h;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/h;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 99
    :pswitch_51
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/k;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/k;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 96
    :pswitch_5b
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/j;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/j;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 93
    :pswitch_65
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/f;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/f;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 90
    :pswitch_6f
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/e;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/e;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 86
    :pswitch_79
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/d;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/d;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8c

    .line 83
    :pswitch_83
    new-instance p2, Lcom/xiaomi/onetrack/util/oaid/helpers/a;

    invoke-direct {p2}, Lcom/xiaomi/onetrack/util/oaid/helpers/a;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_8c
    return-object p1

    .line 79
    :cond_8d
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "undefined oaid method of manufacturer %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_83
        :pswitch_79
        :pswitch_6f
        :pswitch_6f
        :pswitch_65
        :pswitch_5b
        :pswitch_51
        :pswitch_47
        :pswitch_3d
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_2e
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public a()Z
    .registers 3

    .line 125
    const-string v0, "ro.build.freeme.label"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "FREEMEOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 3

    .line 133
    const-string v0, "ro.ssui.product"

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method
