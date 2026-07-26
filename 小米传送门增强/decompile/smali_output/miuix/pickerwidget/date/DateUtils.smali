.class public Lmiuix/pickerwidget/date/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$Pool<",
            "Lmiuix/pickerwidget/date/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 223
    new-instance v0, Lmiuix/pickerwidget/date/DateUtils$1;

    invoke-direct {v0}, Lmiuix/pickerwidget/date/DateUtils$1;-><init>()V

    const/4 v1, 0x1

    .line 224
    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    return-void
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 11

    .line 270
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-wide v3, p1

    move v5, p3

    .line 271
    invoke-static/range {v1 .. v6}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatDateTime(Landroid/content/Context;Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .registers 10

    and-int/lit8 v0, p4, 0x10

    if-nez v0, :cond_14

    and-int/lit8 v0, p4, 0x20

    if-nez v0, :cond_14

    .line 380
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x20

    goto :goto_13

    :cond_11
    const/16 v0, 0x10

    :goto_13
    or-int/2addr p4, v0

    .line 383
    :cond_14
    invoke-static {p4}, Lmiuix/pickerwidget/date/DateUtils;->getFormatResId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 387
    sget-object v2, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {v2}, Lmiuix/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/pickerwidget/date/Calendar;

    .line 388
    invoke-virtual {v2, p5}, Lmiuix/pickerwidget/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiuix/pickerwidget/date/Calendar;

    .line 389
    invoke-virtual {v2, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)Lmiuix/pickerwidget/date/Calendar;

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    :goto_39
    if-ge p3, p2, :cond_75

    .line 392
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p5

    const/16 v3, 0x44

    if-eq p5, v3, :cond_67

    const/16 v3, 0x54

    if-eq p5, v3, :cond_5b

    const/16 v3, 0x57

    if-eq p5, v3, :cond_4f

    .line 404
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 395
    :cond_4f
    invoke-static {p4}, Lmiuix/pickerwidget/date/DateUtils;->getWeekdayPatternResId(I)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 401
    :cond_5b
    invoke-static {v2, p4}, Lmiuix/pickerwidget/date/DateUtils;->getTimePatternResId(Lmiuix/pickerwidget/date/Calendar;I)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 398
    :cond_67
    invoke-static {p4}, Lmiuix/pickerwidget/date/DateUtils;->getDatePatternResId(I)I

    move-result p5

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_72
    add-int/lit8 p3, p3, 0x1

    goto :goto_39

    .line 408
    :cond_75
    invoke-virtual {v2, p0, p1, v1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 409
    invoke-static {}, Lmiuix/core/util/Pools;->getStringBuilderPool()Lmiuix/core/util/Pools$Pool;

    move-result-object p0

    invoke-interface {p0, v1}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    .line 410
    sget-object p0, Lmiuix/pickerwidget/date/DateUtils;->CALENDAR_POOL:Lmiuix/core/util/Pools$Pool;

    invoke-interface {p0, v2}, Lmiuix/core/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static getDatePatternResId(I)I
    .registers 7

    const v0, 0x8000

    and-int v1, p0, v0

    .line 525
    const-string v2, "no any time date"

    const/16 v3, 0x200

    const/16 v4, 0x100

    const/16 v5, 0x80

    if-ne v1, v0, :cond_42

    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_26

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_22

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_1e

    .line 529
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_year_month_day:I

    goto/16 :goto_9b

    .line 531
    :cond_1e
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_year_month:I

    goto/16 :goto_9b

    .line 534
    :cond_22
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_year:I

    goto/16 :goto_9b

    :cond_26
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_35

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_31

    .line 539
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_month_day:I

    goto/16 :goto_9b

    .line 541
    :cond_31
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_month:I

    goto/16 :goto_9b

    :cond_35
    and-int/2addr p0, v5

    if-ne p0, v5, :cond_3c

    .line 545
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_numeric_day:I

    goto/16 :goto_9b

    .line 547
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    and-int/lit16 v0, p0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_75

    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_5c

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_59

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_56

    .line 555
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_year_month_day:I

    goto :goto_9b

    .line 557
    :cond_56
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_year_month:I

    goto :goto_9b

    .line 560
    :cond_59
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_year:I

    goto :goto_9b

    :cond_5c
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_69

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_66

    .line 565
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_month_day:I

    goto :goto_9b

    .line 567
    :cond_66
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_short_month:I

    goto :goto_9b

    :cond_69
    and-int/2addr p0, v5

    if-ne p0, v5, :cond_6f

    .line 571
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_day:I

    goto :goto_9b

    .line 573
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_89

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_86

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_83

    .line 581
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_year_month_day:I

    goto :goto_9b

    .line 583
    :cond_83
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_year_month:I

    goto :goto_9b

    .line 586
    :cond_86
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_year:I

    goto :goto_9b

    :cond_89
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_96

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_93

    .line 591
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_month_day:I

    goto :goto_9b

    .line 593
    :cond_93
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_long_month:I

    goto :goto_9b

    :cond_96
    and-int/2addr p0, v5

    if-ne p0, v5, :cond_9c

    .line 597
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_day:I

    :goto_9b
    return p0

    .line 599
    :cond_9c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getFormatResId(I)I
    .registers 4

    and-int/lit16 v0, p0, 0x400

    const/16 v1, 0x800

    const/16 v2, 0x400

    if-ne v0, v2, :cond_38

    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_22

    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_19

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_16

    .line 631
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date_time_timezone:I

    goto :goto_67

    :cond_16
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date_time:I

    goto :goto_67

    :cond_19
    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1f

    .line 633
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date_timezone:I

    goto :goto_67

    :cond_1f
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_date:I

    goto :goto_67

    :cond_22
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_2f

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_2c

    .line 637
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_time_timezone:I

    goto :goto_67

    :cond_2c
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_time:I

    goto :goto_67

    :cond_2f
    and-int/2addr p0, v1

    if-ne p0, v1, :cond_35

    .line 639
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_timezone:I

    goto :goto_67

    :cond_35
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday:I

    goto :goto_67

    :cond_38
    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_52

    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_49

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_46

    .line 645
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_time_timezone:I

    goto :goto_67

    :cond_46
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_time:I

    goto :goto_67

    :cond_49
    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4f

    .line 647
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date_timezone:I

    goto :goto_67

    :cond_4f
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_date:I

    goto :goto_67

    :cond_52
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_5f

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_5c

    .line 651
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_timezone:I

    goto :goto_67

    :cond_5c
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time:I

    goto :goto_67

    :cond_5f
    and-int/2addr p0, v1

    if-ne p0, v1, :cond_65

    .line 653
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_timezone:I

    goto :goto_67

    :cond_65
    sget p0, Lmiuix/pickerwidget/R$string;->empty:I

    :goto_67
    return p0
.end method

.method private static getTimePatternResId(Lmiuix/pickerwidget/date/Calendar;I)I
    .registers 6

    and-int/lit16 v0, p1, 0x4000

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x4000

    if-ne v0, v3, :cond_3c

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_14

    const/16 v0, 0x16

    .line 426
    invoke-virtual {p0, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_3c

    :cond_14
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_3c

    and-int/lit8 v0, p1, -0x2

    and-int/lit8 v3, p1, 0x2

    if-ne v3, v1, :cond_26

    const/16 v3, 0x15

    .line 429
    invoke-virtual {p0, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_3b

    :cond_26
    and-int/lit8 v3, p1, 0xc

    if-eqz v3, :cond_3b

    and-int/lit8 v0, p1, -0x4

    const/16 v3, 0x14

    .line 432
    invoke-virtual {p0, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_3b

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_3b

    and-int/lit8 p1, p1, -0x8

    goto :goto_3c

    :cond_3b
    move p1, v0

    :cond_3c
    :goto_3c
    and-int/lit8 p0, p1, 0x8

    const/16 v0, 0x8

    const/4 v3, 0x4

    if-ne p0, v0, :cond_9b

    and-int/lit8 p0, p1, 0x10

    const/16 v0, 0x10

    if-ne p0, v0, :cond_83

    and-int/lit8 p0, p1, 0x40

    const/16 v0, 0x40

    if-ne p0, v0, :cond_6b

    and-int/lit8 p0, p1, 0x4

    if-ne p0, v3, :cond_67

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v1, :cond_63

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v2, :cond_5f

    .line 446
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second_millis:I

    goto/16 :goto_c4

    .line 448
    :cond_5f
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second:I

    goto/16 :goto_c4

    .line 451
    :cond_63
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute:I

    goto/16 :goto_c4

    .line 454
    :cond_67
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour:I

    goto/16 :goto_c4

    :cond_6b
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v3, :cond_80

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v1, :cond_7d

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v2, :cond_7a

    .line 460
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second_millis_pm:I

    goto :goto_c4

    .line 462
    :cond_7a
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_second_pm:I

    goto :goto_c4

    .line 465
    :cond_7d
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_minute_pm:I

    goto :goto_c4

    .line 468
    :cond_80
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_12hour_pm:I

    goto :goto_c4

    :cond_83
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v3, :cond_98

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v1, :cond_95

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v2, :cond_92

    .line 475
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour_minute_second_millis:I

    goto :goto_c4

    .line 477
    :cond_92
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour_minute_second:I

    goto :goto_c4

    .line 480
    :cond_95
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour_minute:I

    goto :goto_c4

    .line 483
    :cond_98
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_24hour:I

    goto :goto_c4

    :cond_9b
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v3, :cond_b0

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v1, :cond_ad

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v2, :cond_aa

    .line 490
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_minute_second_millis:I

    goto :goto_c4

    .line 492
    :cond_aa
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_minute_second:I

    goto :goto_c4

    .line 495
    :cond_ad
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_minute:I

    goto :goto_c4

    :cond_b0
    and-int/lit8 p0, p1, 0x2

    if-ne p0, v1, :cond_be

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v2, :cond_bb

    .line 500
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_second_millis:I

    goto :goto_c4

    .line 502
    :cond_bb
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_second:I

    goto :goto_c4

    :cond_be
    and-int/lit8 p0, p1, 0x1

    if-ne p0, v2, :cond_c5

    .line 506
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_time_millis:I

    :goto_c4
    return p0

    .line 508
    :cond_c5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no any time date"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getWeekdayPatternResId(I)I
    .registers 2

    const/16 v0, 0x2000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    .line 609
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_short:I

    goto :goto_a

    .line 610
    :cond_8
    sget p0, Lmiuix/pickerwidget/R$string;->fmt_weekday_long:I

    :goto_a
    return p0
.end method
