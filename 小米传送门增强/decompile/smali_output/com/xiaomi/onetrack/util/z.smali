.class public Lcom/xiaomi/onetrack/util/z;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "\\."

.field public static final b:Ljava/lang/String; = ","

.field private static final c:Ljava/lang/String; = "com.xiaomi.onetrack.util.z"


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

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 43
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 44
    array-length p1, p0

    if-lez p1, :cond_2f

    .line 45
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 48
    sget-object p1, Lcom/xiaomi/onetrack/util/z;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringToList error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    :try_start_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    move-object p0, v2

    goto :goto_12

    :cond_e
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_12
    if-eqz p0, :cond_21

    .line 61
    array-length v1, p0

    if-lez v1, :cond_21

    .line 62
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_21

    :catch_1f
    move-exception p0

    goto :goto_39

    .line 65
    :cond_21
    :goto_21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_2c
    if-eqz v2, :cond_53

    .line 66
    array-length p0, v2

    if-lez p0, :cond_53

    .line 67
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_1f

    goto :goto_53

    .line 70
    :goto_39
    sget-object p1, Lcom/xiaomi/onetrack/util/z;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeParams error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    :goto_53
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 21
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_19

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_1b

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method
