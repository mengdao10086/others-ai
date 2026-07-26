.class Lcom/miui/contentextension/utils/Utils$4$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/Utils$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/utils/Utils$4;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/utils/Utils$4;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/miui/contentextension/utils/Utils$4$1;->this$0:Lcom/miui/contentextension/utils/Utils$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 116
    const-string v0, "Taplus.Utils"

    const-string v1, "click showPrivacyRevokeTipDialog agree"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/miui/contentextension/utils/Utils$4$1;->this$0:Lcom/miui/contentextension/utils/Utils$4;

    iget-object v1, v0, Lcom/miui/contentextension/utils/Utils$4;->val$context:Landroid/content/Context;

    iget-object v0, v0, Lcom/miui/contentextension/utils/Utils$4;->val$policeName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/contentextension/utils/DeviceUtils;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/privacypolicy/PrivacyManager;->privacyAgree(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
