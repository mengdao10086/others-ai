.class Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$1;
.super Landroid/os/AsyncTask;
.source "ClipboardCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->tryToGetNerResult(Landroid/content/Context;Ljava/lang/String;)V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$clipdata:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$1;->val$clipdata:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 3

    .line 66
    sget-object p1, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->Companion:Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;

    invoke-virtual {p1}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;->getINSTANCE()Lcom/miui/contentextension/utils/ContentExtentionNerUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$1;->val$clipdata:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->getNerType(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryToGetNerResult onPostExecute ner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.ClipboardCardUtils"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->-$$Nest$sfgetmLastNerTask()Landroid/os/AsyncTask;

    move-result-object v0

    if-ne v0, p0, :cond_23

    .line 73
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils;->-$$Nest$smonNerResultReady(I)V

    :cond_23
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 63
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/clipboard/utils/ClipboardCardUtils$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
