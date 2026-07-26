.class public final Lkotlin/io/TextStreamsKt;
.super Ljava/lang/Object;
.source "ReadWrite.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadWrite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,157:1\n54#1,4:158\n1#2:162\n1#2:165\n1317#3,2:163\n*S KotlinDebug\n*F\n+ 1 ReadWrite.kt\nkotlin/io/TextStreamsKt\n*L\n35#1:158,4\n35#1:162\n35#1:163,2\n*E\n"
.end annotation


# direct methods
.method public static final copyTo(Ljava/io/Reader;Ljava/io/Writer;I)J
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-array p2, p2, [C

    .line 128
    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v0

    const-wide/16 v1, 0x0

    :goto_12
    if-ltz v0, :cond_1f

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p1, p2, v3, v0}, Ljava/io/Writer;->write([CII)V

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 132
    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v0

    goto :goto_12

    :cond_1f
    return-wide v1
.end method

.method public static synthetic copyTo$default(Ljava/io/Reader;Ljava/io/Writer;IILjava/lang/Object;)J
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const/16 p2, 0x2000

    .line 125
    :cond_6
    invoke-static {p0, p1, p2}, Lkotlin/io/TextStreamsKt;->copyTo(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final forEachLine(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_11

    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_19

    :cond_11
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x2000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p0, v0

    :goto_19
    :try_start_19
    invoke-static {p0}, Lkotlin/io/TextStreamsKt;->lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 1317
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :catchall_2f
    move-exception p1

    goto :goto_38

    .line 35
    :cond_31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_2f

    const/4 p1, 0x0

    .line 57
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :goto_38
    :try_start_38
    throw p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final lineSequence(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lkotlin/io/LinesSequence;

    invoke-direct {v0, p0}, Lkotlin/io/LinesSequence;-><init>(Ljava/io/BufferedReader;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->constrainOnce(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static final readText(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 112
    invoke-static {p0, v0, v3, v1, v2}, Lkotlin/io/TextStreamsKt;->copyTo$default(Ljava/io/Reader;Ljava/io/Writer;IILjava/lang/Object;)J

    .line 113
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
