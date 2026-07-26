.class public Lcom/xiaomi/onetrack/util/oaid/helpers/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "NubiaDeviceIDHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 20
    const-string v0, ""

    .line 22
    const-string v1, "content://cn.nubia.identity/identity"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 25
    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    .line 26
    const-string v1, "getOAID"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    .line 39
    const-string p1, "code"

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_34

    .line 41
    const-string p1, "id"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2a

    goto :goto_34

    :catch_2a
    move-exception p1

    .line 44
    const-string v1, "NubiaDeviceIDHelper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-object v0
.end method
