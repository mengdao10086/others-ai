.class Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;
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
            "Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field applyBlur:Z

.field expandState:I

.field expandedMenuItemId:I

.field isEndOverflowOpen:Z

.field isOverflowOpen:Z

.field userExpandState:I

.field userSetExpandState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3321
    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState$1;

    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState$1;-><init>()V

    sput-object v0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 3287
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 3289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 3290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    .line 3291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 3292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    .line 3293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    .line 3294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3f

    move v1, v2

    :cond_3f
    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5

    .line 3299
    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 3300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 3301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move p2, v1

    goto :goto_14

    :cond_13
    move p2, v0

    :goto_14
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 3302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1e

    move p2, v1

    goto :goto_1f

    :cond_1e
    move p2, v0

    :goto_1f
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    .line 3303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    .line 3304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2f

    move p2, v1

    goto :goto_30

    :cond_2f
    move p2, v0

    :goto_30
    iput-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    .line 3305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    .line 3306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3f

    move v0, v1

    :cond_3f
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    .line 3283
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 3311
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3312
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3313
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3314
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->isEndOverflowOpen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3315
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->expandState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3316
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userSetExpandState:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3317
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->userExpandState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3318
    iget-boolean p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$SavedState;->applyBlur:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
