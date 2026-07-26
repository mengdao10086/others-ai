.class Lcom/xiaomi/aicr/nlp/Entity$1;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aicr/nlp/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/aicr/nlp/Entity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/aicr/nlp/Entity;
    .registers 3

    .line 53
    new-instance v0, Lcom/xiaomi/aicr/nlp/Entity;

    invoke-direct {v0, p1}, Lcom/xiaomi/aicr/nlp/Entity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaomi/aicr/nlp/Entity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/aicr/nlp/Entity;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/aicr/nlp/Entity;
    .registers 2

    .line 58
    new-array p1, p1, [Lcom/xiaomi/aicr/nlp/Entity;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaomi/aicr/nlp/Entity$1;->newArray(I)[Lcom/xiaomi/aicr/nlp/Entity;

    move-result-object p1

    return-object p1
.end method
