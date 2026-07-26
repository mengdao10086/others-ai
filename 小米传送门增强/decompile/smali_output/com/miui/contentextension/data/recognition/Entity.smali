.class public Lcom/miui/contentextension/data/recognition/Entity;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/contentextension/data/recognition/Entity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private end:I

.field private entityClass:Ljava/lang/String;

.field private entityStr:Ljava/lang/String;

.field private final extractType:I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    new-instance v0, Lcom/miui/contentextension/data/recognition/Entity$1;

    invoke-direct {v0}, Lcom/miui/contentextension/data/recognition/Entity$1;-><init>()V

    sput-object v0, Lcom/miui/contentextension/data/recognition/Entity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->start:I

    .line 24
    iput v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->end:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityStr:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityClass:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->start:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->extractType:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/contentextension/data/recognition/Entity;->end:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->end:I

    .line 38
    iput-object p1, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityStr:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityClass:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/miui/contentextension/data/recognition/Entity;->start:I

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/miui/contentextension/data/recognition/Entity;->end:I

    .line 42
    iput p4, p0, Lcom/miui/contentextension/data/recognition/Entity;->extractType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 105
    instance-of v0, p1, Lcom/miui/contentextension/data/recognition/Entity;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 109
    :cond_6
    check-cast p1, Lcom/miui/contentextension/data/recognition/Entity;

    .line 110
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/Entity;->getEntityClass()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/Entity;->getEntityStr()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 111
    invoke-virtual {p1}, Lcom/miui/contentextension/data/recognition/Entity;->getStart()I

    move-result p1

    iget v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->start:I

    if-ne p1, v0, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public getEntityClass()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityClass:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityStr()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityStr:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->start:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityClass:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityStr:Ljava/lang/String;

    iget v2, p0, Lcom/miui/contentextension/data/recognition/Entity;->start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/miui/contentextension/data/recognition/Entity;->end:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/miui/contentextension/data/recognition/Entity;->extractType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\u5b9e\u4f53:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u5b9e\u4f53\u7c7b\u522b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u5f00\u59cb\u4f4d\u7f6e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/contentextension/data/recognition/Entity;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u7ed3\u675f\u4f4d\u7f6e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/contentextension/data/recognition/Entity;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u8bc6\u522b\u65b9\u6cd5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/contentextension/data/recognition/Entity;->extractType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 144
    iget-object p2, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/miui/contentextension/data/recognition/Entity;->entityClass:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget p2, p0, Lcom/miui/contentextension/data/recognition/Entity;->start:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget p2, p0, Lcom/miui/contentextension/data/recognition/Entity;->extractType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget p2, p0, Lcom/miui/contentextension/data/recognition/Entity;->end:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
