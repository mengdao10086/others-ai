.class public final Lcom/xiaomi/taiyi/sdk/core/track/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

.field public final b:J

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;)V
    .registers 5

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/taiyi/sdk/core/track/a;->a:Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;

    .line 2
    invoke-virtual {p2}, Lcom/xiaomi/taiyi/sdk/core/track/TrackSettings;->getPeriod()I

    move-result p1

    int-to-long p1, p1

    const-wide/32 v0, 0xea60

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/a;->b:J

    return-void
.end method
