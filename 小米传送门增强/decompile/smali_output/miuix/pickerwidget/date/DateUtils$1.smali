.class Lmiuix/pickerwidget/date/DateUtils$1;
.super Lmiuix/core/util/Pools$Manager;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/date/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/Pools$Manager<",
        "Lmiuix/pickerwidget/date/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Lmiuix/core/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .registers 2

    .line 224
    invoke-virtual {p0}, Lmiuix/pickerwidget/date/DateUtils$1;->createInstance()Lmiuix/pickerwidget/date/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public createInstance()Lmiuix/pickerwidget/date/Calendar;
    .registers 2

    .line 227
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    return-object v0
.end method
