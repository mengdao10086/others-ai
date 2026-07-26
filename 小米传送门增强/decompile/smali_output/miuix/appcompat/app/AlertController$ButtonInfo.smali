.class Lmiuix/appcompat/app/AlertController$ButtonInfo;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ButtonInfo"
.end annotation


# instance fields
.field private mButton:Lmiuix/internal/widget/GroupButton;

.field private mMsg:Landroid/os/Message;

.field private final mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mStyle:I

.field private final mText:Ljava/lang/CharSequence;

.field private final mWhich:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;I)V
    .registers 5

    .line 3458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3459
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mText:Ljava/lang/CharSequence;

    .line 3460
    iput p2, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I

    const/4 p1, 0x0

    .line 3461
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;

    .line 3462
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3463
    iput p4, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mWhich:I

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;ILandroid/os/Message;)V
    .registers 4

    .line 3450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3451
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mText:Ljava/lang/CharSequence;

    .line 3452
    iput p2, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I

    .line 3453
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;

    const/4 p1, 0x0

    .line 3454
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x0

    .line 3455
    iput p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mWhich:I

    return-void
.end method

.method static synthetic access$1200(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Ljava/lang/CharSequence;
    .registers 1

    .line 3442
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I
    .registers 1

    .line 3442
    iget p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mWhich:I

    return p0
.end method

.method static synthetic access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I
    .registers 1

    .line 3442
    iget p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mStyle:I

    return p0
.end method

.method static synthetic access$1800(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;
    .registers 1

    .line 3442
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;
    .registers 1

    .line 3442
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;

    return-object p0
.end method

.method static synthetic access$602(Lmiuix/appcompat/app/AlertController$ButtonInfo;Lmiuix/internal/widget/GroupButton;)Lmiuix/internal/widget/GroupButton;
    .registers 2

    .line 3442
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mButton:Lmiuix/internal/widget/GroupButton;

    return-object p1
.end method

.method static synthetic access$700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/os/Message;
    .registers 1

    .line 3442
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$702(Lmiuix/appcompat/app/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;
    .registers 2

    .line 3442
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$ButtonInfo;->mMsg:Landroid/os/Message;

    return-object p1
.end method
