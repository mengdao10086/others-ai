.class public Lcom/xiaomi/onetrack/util/oaid/helpers/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 41
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 44
    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 45
    const-string v1, "value"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1a

    .line 47
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_1a
    const-string v1, "code"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_25

    .line 51
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 53
    :cond_25
    const-string v1, "expired"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_30

    .line 55
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    :cond_30
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 16
    const-string v0, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 17
    const-string v0, ""

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 21
    :try_start_c
    const-string p1, "oaid"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/f;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_25
    return-object v0
.end method
