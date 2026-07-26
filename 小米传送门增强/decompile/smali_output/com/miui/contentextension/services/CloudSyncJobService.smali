.class public Lcom/miui/contentextension/services/CloudSyncJobService;
.super Landroid/app/job/JobService;
.source "CloudSyncJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;
    }
.end annotation


# instance fields
.field private cloudSyncTask:Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 18
    new-instance v0, Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;-><init>(Lcom/miui/contentextension/services/CloudSyncJobService;Lcom/miui/contentextension/services/CloudSyncJobService-IA;)V

    iput-object v0, p0, Lcom/miui/contentextension/services/CloudSyncJobService;->cloudSyncTask:Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartJob: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.CloudSyncJobService"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/miui/contentextension/services/CloudSyncJobService;->cloudSyncTask:Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_29

    .line 23
    iget-object v0, p0, Lcom/miui/contentextension/services/CloudSyncJobService;->cloudSyncTask:Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;

    filled-new-array {p1}, [Landroid/app/job/JobParameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopJob: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.CloudSyncJobService"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
