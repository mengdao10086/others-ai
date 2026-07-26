.class Lcom/miui/contentextension/utils/Utils$2$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/Utils$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/utils/Utils$2;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/utils/Utils$2;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/miui/contentextension/utils/Utils$2$1;->this$0:Lcom/miui/contentextension/utils/Utils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/miui/contentextension/utils/Utils$2$1;->this$0:Lcom/miui/contentextension/utils/Utils$2;

    iget-object v1, v0, Lcom/miui/contentextension/utils/Utils$2;->val$context:Landroid/content/Context;

    iget-object v0, v0, Lcom/miui/contentextension/utils/Utils$2;->val$policeName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/contentextension/utils/DeviceUtils;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/privacypolicy/PrivacyManager;->privacyAgree(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
