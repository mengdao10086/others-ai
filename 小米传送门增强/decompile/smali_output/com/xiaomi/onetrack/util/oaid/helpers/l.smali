.class public Lcom/xiaomi/onetrack/util/oaid/helpers/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "VivoDeviceIDHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .line 18
    const-string v0, ""

    .line 19
    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 21
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 23
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 24
    const-string v1, "value"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :catch_27
    move-exception p1

    goto :goto_2d

    .line 26
    :cond_29
    :goto_29
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_27

    goto :goto_36

    .line 29
    :goto_2d
    const-string v1, "VivoDeviceIDHelper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-object v0
.end method
