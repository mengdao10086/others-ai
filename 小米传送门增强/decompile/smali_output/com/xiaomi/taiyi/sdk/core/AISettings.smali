.class public final Lcom/xiaomi/taiyi/sdk/core/AISettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;


# direct methods
.method public constructor <init>()V
    .registers 8

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/taiyi/sdk/core/AISettings;-><init>([IZZLcom/xiaomi/taiyi/sdk/core/track/TrackSettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>([IZZLcom/xiaomi/taiyi/sdk/core/track/TrackSettings;)V
    .registers 6

    const-string v0, "memoryPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackSettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/AISettings;->a:[I

    .line 4
    iput-boolean p2, p0, Lcom/xiaomi/taiyi/sdk/core/AISettings;->b:Z

    .line 5
    iput-boolean p3, p0, Lcom/xiaomi/taiyi/sdk/core/AISettings;->c:Z

    .line 6
    iput-object p4, p0, Lcom/xiaomi/taiyi/sdk/core/AISettings;->d:Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

    return-void
.end method

.method public synthetic constructor <init>([IZZLcom/xiaomi/taiyi/sdk/core/track/TrackSettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 13

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_7

    .line 7
    new-array p1, v0, [I

    :cond_7
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    move p2, v0

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_11

    const/4 p3, 0x1

    :cond_11
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_20

    .line 11
    new-instance p4, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    :cond_20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/taiyi/sdk/core/AISettings;-><init>([IZZLcom/xiaomi/taiyi/sdk/core/track/TrackSettings;)V

    return-void
.end method


# virtual methods
.method public final getEnableTrack()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/core/AISettings;->c:Z

    return v0
.end method

.method public final getMemoryPool()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/AISettings;->a:[I

    return-object v0
.end method

.method public final getRunInternal()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/core/AISettings;->b:Z

    return v0
.end method

.method public final getTrackSettings()Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/AISettings;->d:Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

    return-object v0
.end method
