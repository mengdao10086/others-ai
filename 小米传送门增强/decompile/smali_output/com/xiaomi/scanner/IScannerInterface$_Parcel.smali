.class public Lcom/xiaomi/scanner/IScannerInterface$_Parcel;
.super Ljava/lang/Object;
.source "IScannerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/IScannerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_Parcel"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/scanner/IScannerInterface$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    return-void
.end method

.method private static writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_a
    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    return-void
.end method
