.class Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState$1;
.super Ljava/lang/Object;
.source "ActionBarContainer.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1317
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 1317
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;
    .registers 3

    .line 1321
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;
    .registers 4

    .line 1332
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    invoke-direct {v0, p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1317
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState$1;->newArray(I)[Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;
    .registers 2

    .line 1326
    new-array p1, p1, [Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;

    return-object p1
.end method
