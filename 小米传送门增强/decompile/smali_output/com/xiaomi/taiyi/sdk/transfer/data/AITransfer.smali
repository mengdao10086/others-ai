.class public Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer$CREATOR;


# instance fields
.field public body:Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

.field public headers:Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->CREATOR:Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->setHeaders$base_release(Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;)V

    .line 3
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->setBody$base_release(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->setHeaders$base_release(Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;)V

    .line 6
    new-instance p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    invoke-direct {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->setBody$base_release(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->body:Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "body"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->headers:Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "headers"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class v0, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_36

    .line 3
    const-class v1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    if-nez v1, :cond_20

    new-instance v1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    invoke-direct {v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;-><init>()V

    :cond_20
    invoke-virtual {p0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->setHeaders$base_release(Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;)V

    .line 4
    const-class v1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    if-nez p1, :cond_32

    new-instance p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    invoke-direct {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;-><init>()V

    :cond_32
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->setBody$base_release(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;)V

    return-void

    .line 6
    :cond_36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    if-nez v1, :cond_43

    new-instance v1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    invoke-direct {v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;-><init>()V

    :cond_43
    invoke-virtual {p0, v1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->setHeaders$base_release(Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    if-nez p1, :cond_53

    new-instance p1, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    invoke-direct {p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;-><init>()V

    :cond_53
    invoke-virtual {p0, p1}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->setBody$base_release(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;)V

    return-void
.end method

.method public final setBody$base_release(Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->body:Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    return-void
.end method

.method public final setHeaders$base_release(Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->headers:Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getHeaders()Lcom/xiaomi/taiyi/sdk/transfer/data/AIHeaders;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/AITransfer;->getBody()Lcom/xiaomi/taiyi/sdk/transfer/data/AIBody;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
