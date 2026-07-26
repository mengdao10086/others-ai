.class Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;
.super Ljava/lang/Object;
.source "FloatingActivitySwitcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivitySpec"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityClassName:Ljava/lang/String;

.field private identity:Ljava/lang/String;

.field private index:I

.field private isOpenEnterAnimExecuted:Z

.field private isPreDestroy:Z

.field private taskId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 638
    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec$1;

    invoke-direct {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec$1;-><init>()V

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 614
    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    .line 616
    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 618
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    .line 620
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isPreDestroy:Z

    .line 631
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 7

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isPreDestroy:Z

    .line 623
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    .line 624
    iput p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    .line 625
    iput-object p3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    .line 626
    iput p4, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    .line 627
    iput-boolean p5, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I
    .registers 1

    .line 612
    iget p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    return p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)Z
    .registers 1

    .line 612
    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    return p0
.end method

.method static synthetic access$102(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Z)Z
    .registers 2

    .line 612
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    return p1
.end method

.method static synthetic access$202(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 612
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 612
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I
    .registers 1

    .line 612
    iget p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    return p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ activityClassName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; identity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; taskId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; isOpenEnterAnimExecuted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 657
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 658
    iget p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 660
    iget p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget-boolean p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
