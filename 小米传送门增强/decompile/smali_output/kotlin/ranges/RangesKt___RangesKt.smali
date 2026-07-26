.class Lkotlin/ranges/RangesKt___RangesKt;
.super Lkotlin/ranges/RangesKt__RangesKt;
.source "_Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_Ranges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ranges.kt\nkotlin/ranges/RangesKt___RangesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1538:1\n1#2:1539\n*E\n"
.end annotation


# direct methods
.method public static coerceAtLeast(II)I
    .registers 2

    .line 0
    if-ge p0, p1, :cond_3

    move p0, p1

    :cond_3
    return p0
.end method

.method public static coerceAtLeast(JJ)J
    .registers 5

    .line 0
    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    move-wide p0, p2

    :cond_5
    return-wide p0
.end method

.method public static coerceAtMost(II)I
    .registers 2

    .line 0
    if-le p0, p1, :cond_3

    move p0, p1

    :cond_3
    return p0
.end method

.method public static coerceAtMost(JJ)J
    .registers 5

    .line 0
    cmp-long v0, p0, p2

    if-lez v0, :cond_5

    move-wide p0, p2

    :cond_5
    return-wide p0
.end method

.method public static coerceIn(III)I
    .registers 5

    if-gt p1, p2, :cond_9

    if-ge p0, p1, :cond_5

    return p1

    :cond_5
    if-le p0, p2, :cond_8

    return p2

    :cond_8
    return p0

    .line 1414
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static downTo(II)Lkotlin/ranges/IntProgression;
    .registers 4

    .line 823
    sget-object v0, Lkotlin/ranges/IntProgression;->Companion:Lkotlin/ranges/IntProgression$Companion;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/ranges/IntProgression$Companion;->fromClosedRange(III)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static until(II)Lkotlin/ranges/IntRange;
    .registers 3

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_b

    .line 1095
    sget-object p0, Lkotlin/ranges/IntRange;->Companion:Lkotlin/ranges/IntRange$Companion;

    invoke-virtual {p0}, Lkotlin/ranges/IntRange$Companion;->getEMPTY()Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0

    .line 1096
    :cond_b
    new-instance v0, Lkotlin/ranges/IntRange;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    return-object v0
.end method
