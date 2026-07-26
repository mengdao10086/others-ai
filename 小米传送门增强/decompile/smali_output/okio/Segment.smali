.class final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field final data:[B

.field limit:I

.field next:Lokio/Segment;

.field owner:Z

.field pos:I

.field prev:Lokio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 63
    new-array v0, v0, [B

    iput-object v0, p0, Lokio/Segment;->data:[B

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lokio/Segment;->owner:Z

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    return-void
.end method

.method constructor <init>([BIIZZ)V
    .registers 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lokio/Segment;->data:[B

    .line 70
    iput p2, p0, Lokio/Segment;->pos:I

    .line 71
    iput p3, p0, Lokio/Segment;->limit:I

    .line 72
    iput-boolean p4, p0, Lokio/Segment;->shared:Z

    .line 73
    iput-boolean p5, p0, Lokio/Segment;->owner:Z

    return-void
.end method


# virtual methods
.method public final compact()V
    .registers 5

    .line 151
    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-eq v0, p0, :cond_28

    .line 152
    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-nez v1, :cond_9

    return-void

    .line 153
    :cond_9
    iget v1, p0, Lokio/Segment;->limit:I

    iget v2, p0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    .line 154
    iget v2, v0, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    iget-boolean v3, v0, Lokio/Segment;->shared:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_1a

    :cond_18
    iget v3, v0, Lokio/Segment;->pos:I

    :goto_1a
    add-int/2addr v2, v3

    if-le v1, v2, :cond_1e

    return-void

    .line 156
    :cond_1e
    invoke-virtual {p0, v0, v1}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 157
    invoke-virtual {p0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 158
    invoke-static {p0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    return-void

    .line 151
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final pop()Lokio/Segment;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 96
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_7

    move-object v2, v0

    goto :goto_8

    :cond_7
    move-object v2, v1

    .line 97
    :goto_8
    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v0, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 98
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 99
    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 100
    iput-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    return-object v2
.end method

.method public final push(Lokio/Segment;)Lokio/Segment;
    .registers 3

    .line 109
    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 110
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 111
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 112
    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;

    return-object p1
.end method

.method final sharedCopy()Lokio/Segment;
    .registers 8

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    .line 83
    new-instance v0, Lokio/Segment;

    iget-object v2, p0, Lokio/Segment;->data:[B

    iget v3, p0, Lokio/Segment;->pos:I

    iget v4, p0, Lokio/Segment;->limit:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lokio/Segment;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final split(I)Lokio/Segment;
    .registers 7

    if-lez p1, :cond_30

    .line 125
    iget v0, p0, Lokio/Segment;->limit:I

    iget v1, p0, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_30

    const/16 v0, 0x400

    if-lt p1, v0, :cond_12

    .line 134
    invoke-virtual {p0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v0

    goto :goto_20

    .line 136
    :cond_12
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lokio/Segment;->data:[B

    iget v2, p0, Lokio/Segment;->pos:I

    iget-object v3, v0, Lokio/Segment;->data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :goto_20
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/Segment;->limit:I

    .line 141
    iget v1, p0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/Segment;->pos:I

    .line 142
    iget-object p1, p0, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {p1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    return-object v0

    .line 125
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final writeTo(Lokio/Segment;I)V
    .registers 7

    .line 163
    iget-boolean v0, p1, Lokio/Segment;->owner:Z

    if-eqz v0, :cond_4a

    .line 164
    iget v0, p1, Lokio/Segment;->limit:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_34

    .line 166
    iget-boolean v1, p1, Lokio/Segment;->shared:Z

    if-nez v1, :cond_2e

    add-int v1, v0, p2

    .line 167
    iget v3, p1, Lokio/Segment;->pos:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_28

    .line 168
    iget-object v1, p1, Lokio/Segment;->data:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v0, p1, Lokio/Segment;->limit:I

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/Segment;->limit:I

    .line 170
    iput v2, p1, Lokio/Segment;->pos:I

    goto :goto_34

    .line 167
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 166
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 173
    :cond_34
    :goto_34
    iget-object v0, p0, Lokio/Segment;->data:[B

    iget v1, p0, Lokio/Segment;->pos:I

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/Segment;->limit:I

    .line 175
    iget p1, p0, Lokio/Segment;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lokio/Segment;->pos:I

    return-void

    .line 163
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
