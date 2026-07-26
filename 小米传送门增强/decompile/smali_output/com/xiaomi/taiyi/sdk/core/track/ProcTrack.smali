.class public final Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;


# instance fields
.field public A:J

.field public B:I

.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->Companion:Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->a:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->c:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->e:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->r:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->s:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/xiaomi/taiyi/sdk/base/utils/ExtsKt;->timestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->A:J

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->B:I

    return-void
.end method


# virtual methods
.method public final bundle()Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->a:Ljava/lang/String;

    const-string v2, "api"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->b:I

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->c:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->d:J

    const-string v3, "version"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->e:Ljava/lang/String;

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->f:I

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->g:I

    const-string v2, "specCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget-boolean v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->h:Z

    const-string v2, "enableLoad"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->i:I

    const-string v2, "loadCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->j:J

    const-string v3, "bindCost"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12
    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->k:J

    const-string v3, "loadCost"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13
    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->l:J

    const-string v3, "appPreCost"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14
    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->m:J

    const-string v3, "appPostCost"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 15
    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->n:J

    const-string v3, "servicePreCost"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 16
    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->o:J

    const-string v3, "servicePostCost"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 17
    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->p:J

    const-string v3, "totalCost"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 18
    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->q:J

    const-string v3, "runCost"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 19
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->r:Ljava/lang/String;

    const-string v2, "appProcess"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->s:Ljava/lang/String;

    const-string v2, "serviceProcess"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-boolean v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->t:Z

    const-string v2, "runInternal"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->u:I

    const-string v2, "loadAppMem"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->v:I

    const-string v2, "loadServiceMem"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->w:I

    const-string v2, "loadSysMem"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->x:I

    const-string v2, "procAppMem"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->y:I

    const-string v2, "procServiceMem"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->z:I

    const-string v2, "procSysMem"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    iget-wide v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->A:J

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    iget v1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->B:I

    const-string v2, "sample"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final computeTotalCost()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->j:J

    iget-wide v2, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->k:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->l:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->m:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->n:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->o:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->q:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final setApi(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->a:Ljava/lang/String;

    return-void
.end method

.method public final setAppPostCost(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->m:J

    return-void
.end method

.method public final setAppPreCost(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->l:J

    return-void
.end method

.method public final setAppProcess(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->r:Ljava/lang/String;

    return-void
.end method

.method public final setBindCost(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->j:J

    return-void
.end method

.method public final setCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->f:I

    return-void
.end method

.method public final setLevel(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->b:I

    return-void
.end method

.method public final setLoadAppMem(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->u:I

    return-void
.end method

.method public final setLoadCost(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->k:J

    return-void
.end method

.method public final setLoadServiceMem(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->v:I

    return-void
.end method

.method public final setLoadSysMem(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->w:I

    return-void
.end method

.method public final setMethod(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->e:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->c:Ljava/lang/String;

    return-void
.end method

.method public final setProcAppMem(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->x:I

    return-void
.end method

.method public final setProcServiceMem(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->y:I

    return-void
.end method

.method public final setProcSysMem(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->z:I

    return-void
.end method

.method public final setRunCost(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->q:J

    return-void
.end method

.method public final setRunInternal(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->t:Z

    return-void
.end method

.method public final setSample(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->B:I

    return-void
.end method

.method public final setServicePostCost(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->o:J

    return-void
.end method

.method public final setServicePreCost(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->n:J

    return-void
.end method

.method public final setServiceProcess(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->s:Ljava/lang/String;

    return-void
.end method

.method public final setSpecCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->g:I

    return-void
.end method

.method public final setTotalCost(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->p:J

    return-void
.end method

.method public final setVersion(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/core/track/ProcTrack;->d:J

    return-void
.end method
