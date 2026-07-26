.class Lmiuix/appcompat/widget/BadgeView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "BadgeView.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lmiuix/appcompat/widget/BadgeView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field hasNumber:Z

.field isBgVisible:Z

.field number:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 307
    new-instance v0, Lmiuix/appcompat/widget/BadgeView$SavedState$1;

    invoke-direct {v0}, Lmiuix/appcompat/widget/BadgeView$SavedState$1;-><init>()V

    sput-object v0, Lmiuix/appcompat/widget/BadgeView$SavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 285
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lmiuix/appcompat/widget/BadgeView$SavedState;->isBgVisible:Z

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v1, v2

    :cond_17
    iput-boolean v1, p0, Lmiuix/appcompat/widget/BadgeView$SavedState;->hasNumber:Z

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/widget/BadgeView$SavedState;->number:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5

    .line 293
    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_d

    move p2, v1

    goto :goto_e

    :cond_d
    move p2, v0

    :goto_e
    iput-boolean p2, p0, Lmiuix/appcompat/widget/BadgeView$SavedState;->isBgVisible:Z

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_17

    move v0, v1

    :cond_17
    iput-boolean v0, p0, Lmiuix/appcompat/widget/BadgeView$SavedState;->hasNumber:Z

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/widget/BadgeView$SavedState;->number:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 301
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 302
    iget-boolean p2, p0, Lmiuix/appcompat/widget/BadgeView$SavedState;->isBgVisible:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-boolean p2, p0, Lmiuix/appcompat/widget/BadgeView$SavedState;->hasNumber:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget p2, p0, Lmiuix/appcompat/widget/BadgeView$SavedState;->number:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
