.class public Lcom/xiaomi/continuity/ServiceName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/ServiceName$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/continuity/ServiceName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/continuity/ServiceName$1;

    invoke-direct {v0}, Lcom/xiaomi/continuity/ServiceName$1;-><init>()V

    sput-object v0, Lcom/xiaomi/continuity/ServiceName;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/ServiceName;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/ServiceName;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/xiaomi/continuity/ServiceName;
    .registers 6

    .line 0
    const/4 v0, 0x0

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_46

    :cond_a
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_46

    array-length v2, p0

    if-nez v2, :cond_16

    goto :goto_46

    :cond_16
    array-length v2, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2c

    aget-object v2, p0, v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    return-object v0

    :cond_24
    new-instance v0, Lcom/xiaomi/continuity/ServiceName;

    aget-object p0, p0, v4

    invoke-direct {v0, p0}, Lcom/xiaomi/continuity/ServiceName;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2c
    aget-object v2, p0, v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    aget-object v2, p0, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_46

    :cond_3d
    new-instance v0, Lcom/xiaomi/continuity/ServiceName;

    aget-object v1, p0, v4

    aget-object p0, p0, v3

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/continuity/ServiceName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    :cond_12
    check-cast p1, Lcom/xiaomi/continuity/ServiceName;

    iget-object v2, p0, Lcom/xiaomi/continuity/ServiceName;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/continuity/ServiceName;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/ServiceName;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/ServiceName;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/xiaomi/continuity/ServiceName;->packageName:Ljava/lang/String;

    return-void
.end method

.method public toMergeString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/continuity/ServiceName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "ServiceName{packageName=\'"

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/continuity/ServiceName;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 0
    iget-object p2, p0, Lcom/xiaomi/continuity/ServiceName;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/continuity/ServiceName;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
