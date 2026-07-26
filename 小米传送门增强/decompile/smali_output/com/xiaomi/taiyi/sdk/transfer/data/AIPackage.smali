.class public Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage$CREATOR;


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private final customMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->customMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic getBitmap$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;Ljava/lang/String;Landroid/graphics/Bitmap;ZILjava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x1

    .line 1
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getBitmap"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic putBitmap$default(Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;Ljava/lang/String;Landroid/graphics/Bitmap;ZILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_b

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x1

    .line 1
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: putBitmap"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getBinder(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1e

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getBinder(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_1d

    .line 2
    :cond_f
    invoke-static {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap;->get()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    return-object p1

    :cond_1d
    :goto_1d
    return-object p2

    .line 4
    :cond_1e
    const-class p3, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->getParcelable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final getBooleanArray(Ljava/lang/String;[Z)[Z
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getByte(Ljava/lang/String;B)B
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p1

    const-string p2, "getByte(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    return p1
.end method

.method public final getByteArray(Ljava/lang/String;[B)[B
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getChar(Ljava/lang/String;C)C
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result p1

    return p1
.end method

.method public final getCharArray(Ljava/lang/String;[C)[C
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getCustomData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->customMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getDouble(Ljava/lang/String;D)D
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public final getDoubleArray(Ljava/lang/String;[D)[D
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public final getFloatArray(Ljava/lang/String;[F)[F
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getInt(Ljava/lang/String;I)I
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getIntArray(Ljava/lang/String;[I)[I
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getIntArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getLong(Ljava/lang/String;J)J
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getLongArray(Ljava/lang/String;[J)[J
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getParcelable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_17

    .line 3
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1d

    .line 5
    :cond_17
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :goto_1d
    if-nez p1, :cond_20

    return-object p3

    :cond_20
    return-object p1
.end method

.method public final getParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)[Landroid/os/Parcelable;
    .registers 3

    const-string p2, "key"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public final getParcelableArray(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[TT;)[TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_17

    .line 2
    iget-object p3, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_17
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    if-nez p1, :cond_24

    return-object p3

    :cond_24
    return-object p1
.end method

.method public final getSerializable(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getSerializable(Ljava/lang/String;Ljava/lang/Class;Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_26

    :cond_19
    return-object p1

    .line 5
    :cond_1a
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    if-nez p1, :cond_27

    :goto_26
    return-object p3

    :cond_27
    return-object p1
.end method

.method public final getShort(Ljava/lang/String;S)S
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result p1

    return p1
.end method

.method public final getShortArray(Ljava/lang/String;[S)[S
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getSize(Ljava/lang/String;Landroid/util/Size;)Landroid/util/Size;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getSizeF(Ljava/lang/String;Landroid/util/SizeF;)Landroid/util/SizeF;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSizeF(Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final getStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_e

    return-object p2

    :cond_e
    return-object p1
.end method

.method public final hasCustomKey(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->customMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hasKey(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final putAll(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public final putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_10

    .line 1
    new-instance p3, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage$putBitmap$1;

    invoke-direct {p3, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage$putBitmap$1;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    .line 7
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final putBooleanArray(Ljava/lang/String;[Z)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-void
.end method

.method public final putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final putByte(Ljava/lang/String;B)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-void
.end method

.method public final putByteArray(Ljava/lang/String;[B)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public final putChar(Ljava/lang/String;C)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-void
.end method

.method public final putCharArray(Ljava/lang/String;[C)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-void
.end method

.method public final putCustomData(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->customMap:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final putDouble(Ljava/lang/String;D)V
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public final putDoubleArray(Ljava/lang/String;[D)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void
.end method

.method public final putFloat(Ljava/lang/String;F)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public final putFloatArray(Ljava/lang/String;[F)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final putIntArray(Ljava/lang/String;[I)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method

.method public final putIntArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final putLong(Ljava/lang/String;J)V
    .registers 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final putLongArray(Ljava/lang/String;[J)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-void
.end method

.method public final putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void
.end method

.method public final putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public final putShort(Ljava/lang/String;S)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-void
.end method

.method public final putShortArray(Ljava/lang/String;[S)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-void
.end method

.method public final putSize(Ljava/lang/String;Landroid/util/Size;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    return-void
.end method

.method public final putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_16

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_16
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public final removeCustomKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->customMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public final setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 3

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "ai_app_signature"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v2, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    const-string v5, "ai_app_code"

    invoke-static {v4, v5, v2, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    goto :goto_21

    .line 9
    :cond_43
    const-string v5, "\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v5, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2d

    if-le v5, v6, :cond_90

    const/16 v5, 0x14

    .line 12
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "substring(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v6, "***"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 17
    :cond_90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :goto_93
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x19

    if-lt v3, v4, :cond_21

    .line 22
    const-string v1, "...\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_a3
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
