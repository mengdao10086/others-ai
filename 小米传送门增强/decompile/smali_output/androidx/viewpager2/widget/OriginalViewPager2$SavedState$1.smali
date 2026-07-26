.class Landroidx/viewpager2/widget/OriginalViewPager2$SavedState$1;
.super Ljava/lang/Object;
.source "OriginalViewPager2.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;
    .registers 3

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;
    .registers 4

    .line 436
    new-instance v0, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    invoke-direct {v0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 432
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 432
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;
    .registers 2

    .line 447
    new-array p1, p1, [Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 432
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$SavedState$1;->newArray(I)[Landroidx/viewpager2/widget/OriginalViewPager2$SavedState;

    move-result-object p1

    return-object p1
.end method
