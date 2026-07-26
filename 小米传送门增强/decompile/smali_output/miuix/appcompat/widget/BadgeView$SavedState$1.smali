.class Lmiuix/appcompat/widget/BadgeView$SavedState$1;
.super Ljava/lang/Object;
.source "BadgeView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/BadgeView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lmiuix/appcompat/widget/BadgeView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 308
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/BadgeView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/appcompat/widget/BadgeView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 308
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/BadgeView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/appcompat/widget/BadgeView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/appcompat/widget/BadgeView$SavedState;
    .registers 3

    .line 312
    new-instance v0, Lmiuix/appcompat/widget/BadgeView$SavedState;

    invoke-direct {v0, p1}, Lmiuix/appcompat/widget/BadgeView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/appcompat/widget/BadgeView$SavedState;
    .registers 4

    .line 323
    new-instance v0, Lmiuix/appcompat/widget/BadgeView$SavedState;

    invoke-direct {v0, p1, p2}, Lmiuix/appcompat/widget/BadgeView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 308
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/BadgeView$SavedState$1;->newArray(I)[Lmiuix/appcompat/widget/BadgeView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiuix/appcompat/widget/BadgeView$SavedState;
    .registers 2

    .line 317
    new-array p1, p1, [Lmiuix/appcompat/widget/BadgeView$SavedState;

    return-object p1
.end method
