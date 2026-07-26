.class Lcom/miui/contentextension/data/recognition/Entity$1;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/data/recognition/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/contentextension/data/recognition/Entity;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/contentextension/data/recognition/Entity;
    .registers 3

    .line 56
    new-instance v0, Lcom/miui/contentextension/data/recognition/Entity;

    invoke-direct {v0, p1}, Lcom/miui/contentextension/data/recognition/Entity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/Entity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/contentextension/data/recognition/Entity;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/miui/contentextension/data/recognition/Entity;
    .registers 2

    .line 61
    new-array p1, p1, [Lcom/miui/contentextension/data/recognition/Entity;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/Entity$1;->newArray(I)[Lcom/miui/contentextension/data/recognition/Entity;

    move-result-object p1

    return-object p1
.end method
