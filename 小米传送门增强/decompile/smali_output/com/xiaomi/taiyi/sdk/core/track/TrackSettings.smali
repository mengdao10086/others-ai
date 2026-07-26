.class public final Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;->a:I

    .line 10
    iput p2, p0, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;->b:I

    .line 14
    iput p3, p0, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;->c:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_a

    const/4 p2, 0x1

    :cond_a
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_10

    const/16 p3, 0xa

    .line 15
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final getNum()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;->c:I

    return v0
.end method

.method public final getPeriod()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;->b:I

    return v0
.end method

.method public final getType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;->a:I

    return v0
.end method
