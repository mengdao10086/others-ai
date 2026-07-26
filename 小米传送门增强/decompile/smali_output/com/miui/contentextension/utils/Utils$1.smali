.class Lcom/miui/contentextension/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/Utils;->showPrivacyUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

.field final synthetic val$policeName:Ljava/lang/String;

.field final synthetic val$privacyUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/miui/contentextension/utils/Utils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/contentextension/utils/Utils$1;->val$functionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/contentextension/utils/Utils$1;->val$policeName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/contentextension/utils/Utils$1;->val$privacyUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/contentextension/utils/Utils$1;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 93
    const-string p2, "Taplus.Utils"

    const-string v0, "click showPrivacyUpdateDialog cancel"

    invoke-static {p2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 95
    iget-object p1, p0, Lcom/miui/contentextension/utils/Utils$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/miui/contentextension/utils/Utils$1;->val$functionName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/contentextension/utils/Utils$1;->val$policeName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/contentextension/utils/Utils$1;->val$privacyUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/contentextension/utils/Utils$1;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/miui/contentextension/utils/Utils;->showPrivacyRevokeTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V

    return-void
.end method
