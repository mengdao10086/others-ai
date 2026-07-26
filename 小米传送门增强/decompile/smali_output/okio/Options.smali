.class public final Lokio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lokio/ByteString;

.field final trie:[I


# direct methods
.method private constructor <init>([Lokio/ByteString;[I)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 32
    iput-object p2, p0, Lokio/Options;->trie:[I

    return-void
.end method

.method private static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p4

    move/from16 v2, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    if-ge v2, v11, :cond_1c0

    move v3, v2

    :goto_f
    if-ge v3, v11, :cond_26

    .line 125
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    if-lt v4, v1, :cond_20

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 128
    :cond_26
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    add-int/lit8 v4, v11, -0x1

    .line 129
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    .line 133
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v1, v5, :cond_53

    .line 134
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    .line 136
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    move v6, v2

    move-object/from16 v17, v5

    move v5, v3

    move-object/from16 v3, v17

    goto :goto_55

    :cond_53
    const/4 v5, -0x1

    move v6, v2

    .line 139
    :goto_55
    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v7

    const-wide/16 v8, 0x2

    if-eq v2, v7, :cond_133

    add-int/lit8 v2, v6, 0x1

    const/4 v3, 0x1

    :goto_64
    if-ge v2, v11, :cond_83

    add-int/lit8 v4, v2, -0x1

    .line 143
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    .line 144
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/ByteString;

    invoke-virtual {v7, v1}, Lokio/ByteString;->getByte(I)B

    move-result v7

    if-eq v4, v7, :cond_80

    add-int/lit8 v3, v3, 0x1

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 150
    :cond_83
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v13, v2

    add-long v13, p0, v13

    add-long/2addr v13, v8

    mul-int/lit8 v2, v3, 0x2

    int-to-long v7, v2

    add-long/2addr v13, v7

    .line 152
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 153
    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move v2, v6

    :goto_96
    if-ge v2, v11, :cond_ba

    .line 156
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v1}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v6, :cond_b2

    add-int/lit8 v4, v2, -0x1

    .line 157
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_b7

    :cond_b2
    and-int/lit16 v3, v3, 0xff

    .line 158
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    :cond_b7
    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    .line 162
    :cond_ba
    new-instance v9, Lokio/Buffer;

    invoke-direct {v9}, Lokio/Buffer;-><init>()V

    move v7, v6

    :goto_c0
    if-ge v7, v11, :cond_126

    .line 165
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    add-int/lit8 v3, v7, 0x1

    move v4, v3

    :goto_cf
    if-ge v4, v11, :cond_e2

    .line 168
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v2, v5, :cond_df

    move v8, v4

    goto :goto_e3

    :cond_df
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    :cond_e2
    move v8, v11

    :goto_e3
    if-ne v3, v8, :cond_105

    add-int/lit8 v2, v1, 0x1

    .line 175
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-ne v2, v3, :cond_105

    .line 177
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move/from16 v16, v8

    move-object/from16 p0, v9

    goto :goto_121

    .line 180
    :cond_105
    invoke-static {v9}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v13

    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v5, v1, 0x1

    move-wide v2, v13

    move-object v4, v9

    move-object/from16 v6, p4

    move/from16 v16, v8

    move-object/from16 p0, v9

    move-object/from16 v9, p7

    .line 181
    invoke-static/range {v2 .. v9}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    :goto_121
    move-object/from16 v9, p0

    move/from16 v7, v16

    goto :goto_c0

    :cond_126
    move-object/from16 p0, v9

    .line 194
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    move-object/from16 v3, p0

    invoke-virtual {v0, v3, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto/16 :goto_1bf

    .line 199
    :cond_133
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v7, 0x0

    move v13, v1

    :goto_141
    if-ge v13, v2, :cond_152

    .line 200
    invoke-virtual {v3, v13}, Lokio/ByteString;->getByte(I)B

    move-result v14

    invoke-virtual {v4, v13}, Lokio/ByteString;->getByte(I)B

    move-result v15

    if-ne v14, v15, :cond_152

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_141

    .line 208
    :cond_152
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    int-to-long v13, v2

    add-long v13, p0, v13

    add-long/2addr v13, v8

    int-to-long v8, v7

    add-long/2addr v13, v8

    const-wide/16 v8, 0x1

    add-long/2addr v8, v13

    neg-int v2, v7

    .line 210
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 211
    invoke-virtual {v0, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move v2, v1

    :goto_167
    add-int v4, v1, v7

    if-ge v2, v4, :cond_177

    .line 214
    invoke-virtual {v3, v2}, Lokio/ByteString;->getByte(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_167

    :cond_177
    add-int/lit8 v1, v6, 0x1

    if-ne v1, v11, :cond_19b

    .line 219
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ne v4, v1, :cond_195

    .line 222
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto :goto_1bf

    .line 220
    :cond_195
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_19b
    new-instance v13, Lokio/Buffer;

    invoke-direct {v13}, Lokio/Buffer;-><init>()V

    .line 226
    invoke-static {v13}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v8

    const-wide/16 v14, -0x1

    mul-long/2addr v1, v14

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-wide v1, v8

    move-object v3, v13

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 227
    invoke-static/range {v1 .. v8}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 235
    invoke-virtual {v13}, Lokio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {v0, v13, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    :goto_1bf
    return-void

    .line 123
    :cond_1c0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static intCount(Lokio/Buffer;)I
    .registers 5

    .line 249
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .registers 12

    .line 36
    array-length v0, p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 38
    new-instance p0, Lokio/Options;

    new-array v0, v2, [Lokio/ByteString;

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object p0

    .line 43
    :cond_11
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 46
    :goto_23
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_33

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_33
    move v0, v2

    .line 49
    :goto_34
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 50
    aget-object v1, p0, v0

    invoke-static {v7, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 53
    :cond_4a
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_f6

    move v0, v2

    .line 60
    :goto_57
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_bc

    .line 61
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    add-int/lit8 v3, v0, 0x1

    move v4, v3

    .line 62
    :goto_66
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_ba

    .line 63
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    .line 64
    invoke-virtual {v5, v1}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v6

    if-nez v6, :cond_79

    goto :goto_ba

    .line 65
    :cond_79
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v8

    if-eq v6, v8, :cond_a3

    .line 68
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_a0

    .line 69
    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_66

    :cond_a0
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 66
    :cond_a3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ba
    :goto_ba
    move v0, v3

    goto :goto_57

    .line 77
    :cond_bc
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    const/4 v8, 0x0

    .line 78
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v5, v0

    invoke-static/range {v3 .. v10}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 80
    invoke-static {v0}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v1

    new-array v3, v1, [I

    :goto_d3
    if-ge v2, v1, :cond_de

    .line 82
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 84
    :cond_de
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 88
    new-instance v0, Lokio/Options;

    invoke-virtual {p0}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lokio/ByteString;

    invoke-direct {v0, p0, v3}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object v0

    .line 85
    :cond_f0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 54
    :cond_f6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "the empty byte string is not a supported option"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lokio/Options;->get(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lokio/ByteString;
    .registers 3

    .line 241
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 245
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method
