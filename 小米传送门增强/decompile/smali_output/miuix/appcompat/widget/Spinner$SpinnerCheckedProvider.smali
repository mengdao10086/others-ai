.class Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpinnerCheckedProvider"
.end annotation


# instance fields
.field private mSpinner:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .registers 2

    .line 1402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1403
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    return-void
.end method


# virtual methods
.method public isChecked(I)Z
    .registers 3

    .line 1408
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;->mSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
