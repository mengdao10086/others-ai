.class Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field actionBarApplyBlur:Z

.field actionBarEnableBlur:Z

.field actionBarSupportBlur:Z

.field userActionBarApplyBlur:I

.field userSplitActionBarApplyBlur:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1316
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState$1;

    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState$1;-><init>()V

    sput-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 1288
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userActionBarApplyBlur:I

    .line 1290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userSplitActionBarApplyBlur:I

    .line 1291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarSupportBlur:Z

    .line 1292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarEnableBlur:Z

    .line 1293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2e

    move v1, v2

    :cond_2e
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5

    .line 1298
    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userActionBarApplyBlur:I

    .line 1300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userSplitActionBarApplyBlur:I

    .line 1301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_19

    move p2, v1

    goto :goto_1a

    :cond_19
    move p2, v0

    :goto_1a
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarSupportBlur:Z

    .line 1302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_24

    move p2, v1

    goto :goto_25

    :cond_24
    move p2, v0

    :goto_25
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarEnableBlur:Z

    .line 1303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2e

    move v0, v1

    :cond_2e
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 1284
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1308
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1309
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userActionBarApplyBlur:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->userSplitActionBarApplyBlur:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1311
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarSupportBlur:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1312
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarEnableBlur:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1313
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer$SavedState;->actionBarApplyBlur:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
