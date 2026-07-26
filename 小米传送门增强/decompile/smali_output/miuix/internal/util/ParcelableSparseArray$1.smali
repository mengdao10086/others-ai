.class Lmiuix/internal/util/ParcelableSparseArray$1;
.super Ljava/lang/Object;
.source "ParcelableSparseArray.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/util/ParcelableSparseArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lmiuix/internal/util/ParcelableSparseArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ParcelableSparseArray$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/internal/util/ParcelableSparseArray;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 53
    invoke-virtual {p0, p1, p2}, Lmiuix/internal/util/ParcelableSparseArray$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/internal/util/ParcelableSparseArray;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/internal/util/ParcelableSparseArray;
    .registers 4

    .line 63
    new-instance v0, Lmiuix/internal/util/ParcelableSparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiuix/internal/util/ParcelableSparseArray;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/internal/util/ParcelableSparseArray;
    .registers 4

    .line 57
    new-instance v0, Lmiuix/internal/util/ParcelableSparseArray;

    invoke-direct {v0, p1, p2}, Lmiuix/internal/util/ParcelableSparseArray;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ParcelableSparseArray$1;->newArray(I)[Lmiuix/internal/util/ParcelableSparseArray;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiuix/internal/util/ParcelableSparseArray;
    .registers 2

    .line 69
    new-array p1, p1, [Lmiuix/internal/util/ParcelableSparseArray;

    return-object p1
.end method
