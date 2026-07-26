.class Lcom/google/gson/internal/bind/TypeAdapters$26;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 703
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$26;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 713
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_e

    .line 714
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 717
    :cond_e
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 724
    :goto_17
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v7, v8, :cond_84

    .line 725
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 726
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v8

    .line 727
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_8e

    goto :goto_74

    :sswitch_33
    const-string v10, "hourOfDay"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    goto :goto_74

    :cond_3c
    const/4 v9, 0x5

    goto :goto_74

    :sswitch_3e
    const-string v10, "month"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_47

    goto :goto_74

    :cond_47
    const/4 v9, 0x4

    goto :goto_74

    :sswitch_49
    const-string v10, "year"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_52

    goto :goto_74

    :cond_52
    const/4 v9, 0x3

    goto :goto_74

    :sswitch_54
    const-string v10, "second"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    goto :goto_74

    :cond_5d
    const/4 v9, 0x2

    goto :goto_74

    :sswitch_5f
    const-string v10, "minute"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    goto :goto_74

    :cond_68
    const/4 v9, 0x1

    goto :goto_74

    :sswitch_6a
    const-string v10, "dayOfMonth"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_73

    goto :goto_74

    :cond_73
    move v9, v0

    :goto_74
    packed-switch v9, :pswitch_data_a8

    goto :goto_17

    :pswitch_78
    move v4, v8

    goto :goto_17

    :pswitch_7a
    move v2, v8

    goto :goto_17

    :pswitch_7c
    move v1, v8

    goto :goto_17

    :pswitch_7e
    move v6, v8

    goto :goto_17

    :pswitch_80
    move v5, v8

    goto :goto_17

    :pswitch_82
    move v3, v8

    goto :goto_17

    .line 750
    :cond_84
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 751
    new-instance p1, Ljava/util/GregorianCalendar;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p1

    :sswitch_data_8e
    .sparse-switch
        -0x4667c053 -> :sswitch_6a
        -0x400459ec -> :sswitch_5f
        -0x3604bb8c -> :sswitch_54
        0x38883d -> :sswitch_49
        0x6342280 -> :sswitch_3e
        0x3ab9c2c1 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_80
        :pswitch_7e
        :pswitch_7c
        :pswitch_7a
        :pswitch_78
    .end packed-switch
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$26;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 757
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 760
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 761
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/4 v0, 0x1

    .line 762
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 763
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/4 v0, 0x2

    .line 764
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 765
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/4 v0, 0x5

    .line 766
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 767
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0xb

    .line 768
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 769
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0xc

    .line 770
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 771
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0xd

    .line 772
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 773
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
