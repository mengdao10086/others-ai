.class public abstract Lcom/xiaomi/onetrack/util/oaid/a/d$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/util/oaid/a/d;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    const-string v0, "com.heytap.openid.IOpenID"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 58
    instance-of v1, v0, Lcom/xiaomi/onetrack/util/oaid/a/d;

    if-nez v1, :cond_11

    goto :goto_14

    .line 62
    :cond_11
    check-cast v0, Lcom/xiaomi/onetrack/util/oaid/a/d;

    return-object v0

    .line 59
    :cond_14
    :goto_14
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
