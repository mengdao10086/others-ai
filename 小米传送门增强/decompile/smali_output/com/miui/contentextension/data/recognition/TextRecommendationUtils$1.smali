.class Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;
.super Landroid/os/AsyncTask;
.source "TextRecommendationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->getTextSegmentResponse(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/miui/contentextension/data/recognition/WordBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$firstTrigger:Z

.field final synthetic val$passage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 4

    .line 90
    iput-object p1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$passage:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$firstTrigger:Z

    iput-object p3, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 90
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;"
        }
    .end annotation

    .line 93
    const-string p1, "getTextSegmentResponse: doInBackground"

    const-string v0, "Taplus.TextRecommendationUtils"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$passage:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->-$$Nest$sfputsLastSegmentPassage(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 96
    invoke-static {v1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->-$$Nest$sfputsIsSegmentingPassage(Z)V

    .line 97
    invoke-static {}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->-$$Nest$sfgetsSegmentResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-boolean v1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$firstTrigger:Z

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/contentextension/utils/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_36

    .line 102
    :cond_29
    const-string v1, "segment server"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$passage:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->segmentPassageWithServer(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_53

    .line 99
    :cond_36
    :goto_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment locally -- firstTrigger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$firstTrigger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->val$passage:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/miui/contentextension/data/recognition/SegmentUtils;->segmentPassageLocally(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :goto_53
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 90
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-static {}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->-$$Nest$sfgetsLastSegmentTask()Landroid/os/AsyncTask;

    move-result-object v0

    if-ne v0, p0, :cond_1c

    const/4 v0, 0x0

    .line 111
    invoke-static {v0}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->-$$Nest$sfputsIsSegmentingPassage(Z)V

    .line 112
    invoke-static {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->-$$Nest$sfputsSegmentResult(Ljava/util/ArrayList;)V

    .line 113
    const-string v0, "onPostExecute: track g_expose"

    const-string v1, "Taplus.TextRecommendationUtils"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "getTextSegmentResponse: onPostExecute"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p1}, Lcom/miui/contentextension/data/recognition/TextRecommendationUtils;->-$$Nest$smonSegmentReady(Ljava/util/ArrayList;)V

    :cond_1c
    return-void
.end method
