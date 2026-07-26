.class Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;
.super Landroid/os/AsyncTask;
.source "CloudSyncJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/services/CloudSyncJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudSyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/job/JobParameters;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/app/job/JobParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/CloudSyncJobService;


# direct methods
.method private constructor <init>(Lcom/miui/contentextension/services/CloudSyncJobService;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;->this$0:Lcom/miui/contentextension/services/CloudSyncJobService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/services/CloudSyncJobService;Lcom/miui/contentextension/services/CloudSyncJobService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;-><init>(Lcom/miui/contentextension/services/CloudSyncJobService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 34
    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;->doInBackground([Landroid/app/job/JobParameters;)[Landroid/app/job/JobParameters;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/app/job/JobParameters;)[Landroid/app/job/JobParameters;
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;->this$0:Lcom/miui/contentextension/services/CloudSyncJobService;

    invoke-static {v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->reloadAllConfigsIfNeed()V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 34
    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;->onPostExecute([Landroid/app/job/JobParameters;)V

    return-void
.end method

.method protected onPostExecute([Landroid/app/job/JobParameters;)V
    .registers 7

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_f

    aget-object v3, p1, v2

    .line 45
    iget-object v4, p0, Lcom/miui/contentextension/services/CloudSyncJobService$CloudSyncTask;->this$0:Lcom/miui/contentextension/services/CloudSyncJobService;

    invoke-virtual {v4, v3, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method
