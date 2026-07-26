.class public abstract Lcom/xiaomi/onetrack/util/oaid/a/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/onetrack/util/oaid/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/oaid/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/xiaomi/onetrack/util/oaid/a/c;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_4
    const-string v0, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 204
    instance-of v1, v0, Lcom/xiaomi/onetrack/util/oaid/a/c;

    if-nez v1, :cond_11

    goto :goto_14

    .line 208
    :cond_11
    check-cast v0, Lcom/xiaomi/onetrack/util/oaid/a/c;

    return-object v0

    .line 205
    :cond_14
    :goto_14
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 158
    const-string v1, "com.zui.deviceidservice.IDeviceidInterface"

    if-eq p1, v0, :cond_5f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_51

    const/4 v2, 0x3

    if-eq p1, v2, :cond_43

    const/4 v2, 0x4

    if-eq p1, v2, :cond_31

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1f

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1b

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 190
    :cond_1b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 184
    :cond_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/onetrack/util/oaid/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 178
    :cond_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/onetrack/util/oaid/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 172
    :cond_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-interface {p0}, Lcom/xiaomi/onetrack/util/oaid/a/c;->c()Z

    move-result p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 166
    :cond_51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-interface {p0}, Lcom/xiaomi/onetrack/util/oaid/a/c;->b()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 160
    :cond_5f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-interface {p0}, Lcom/xiaomi/onetrack/util/oaid/a/c;->a()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
