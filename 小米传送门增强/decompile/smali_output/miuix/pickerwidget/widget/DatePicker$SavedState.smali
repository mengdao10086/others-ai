.class Lmiuix/pickerwidget/widget/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiuix/pickerwidget/widget/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mIsLunar:Z

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 839
    new-instance v0, Lmiuix/pickerwidget/widget/DatePicker$SavedState$1;

    invoke-direct {v0}, Lmiuix/pickerwidget/widget/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 821
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiuix/pickerwidget/widget/DatePicker$1;)V
    .registers 3

    .line 796
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZ)V
    .registers 6

    .line 810
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 811
    iput p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    .line 812
    iput p3, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    .line 813
    iput p4, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    .line 814
    iput-boolean p5, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIZLmiuix/pickerwidget/widget/DatePicker$1;)V
    .registers 7

    .line 796
    invoke-direct/range {p0 .. p5}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZ)V

    return-void
.end method

.method static synthetic access$1100(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I
    .registers 1

    .line 796
    iget p0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    return p0
.end method

.method static synthetic access$1200(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I
    .registers 1

    .line 796
    iget p0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    return p0
.end method

.method static synthetic access$1300(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I
    .registers 1

    .line 796
    iget p0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    return p0
.end method

.method static synthetic access$1400(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)Z
    .registers 1

    .line 796
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 830
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 831
    iget p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    iget p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
