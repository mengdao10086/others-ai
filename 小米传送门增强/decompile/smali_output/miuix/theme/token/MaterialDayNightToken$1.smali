.class Lmiuix/theme/token/MaterialDayNightToken$1;
.super Ljava/lang/Object;
.source "MaterialDayNightToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/theme/token/MaterialDayNightToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmiuix/theme/token/MaterialDayNightToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lmiuix/theme/token/MaterialDayNightToken$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/theme/token/MaterialDayNightToken;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/theme/token/MaterialDayNightToken;
    .registers 3

    .line 71
    new-instance v0, Lmiuix/theme/token/MaterialDayNightToken;

    invoke-direct {v0, p1}, Lmiuix/theme/token/MaterialDayNightToken;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lmiuix/theme/token/MaterialDayNightToken$1;->newArray(I)[Lmiuix/theme/token/MaterialDayNightToken;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiuix/theme/token/MaterialDayNightToken;
    .registers 2

    .line 76
    new-array p1, p1, [Lmiuix/theme/token/MaterialDayNightToken;

    return-object p1
.end method
