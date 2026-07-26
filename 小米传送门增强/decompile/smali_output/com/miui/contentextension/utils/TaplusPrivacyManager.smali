.class public Lcom/miui/contentextension/utils/TaplusPrivacyManager;
.super Ljava/lang/Object;
.source "TaplusPrivacyManager.java"


# direct methods
.method public static privacyAgree(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-static {}, Lcom/miui/contentextension/setting/TaplusWorker;->getInstance()Lcom/miui/contentextension/setting/TaplusWorker;

    move-result-object v0

    new-instance v1, Lcom/miui/contentextension/utils/TaplusPrivacyManager$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/utils/TaplusPrivacyManager$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/setting/TaplusWorker;->postToWorker(Ljava/lang/Runnable;)V

    return-void
.end method
