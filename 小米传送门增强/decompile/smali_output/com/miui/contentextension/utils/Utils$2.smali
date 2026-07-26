.class Lcom/miui/contentextension/utils/Utils$2;
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

.field final synthetic val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

.field final synthetic val$policeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/miui/contentextension/utils/Utils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/contentextension/utils/Utils$2;->val$policeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/contentextension/utils/Utils$2;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 77
    const-string p2, "Taplus.Utils"

    const-string v0, "click showPrivacyUpdateDialog agree"

    invoke-static {p2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance p2, Lcom/miui/contentextension/utils/Utils$2$1;

    invoke-direct {p2, p0}, Lcom/miui/contentextension/utils/Utils$2$1;-><init>(Lcom/miui/contentextension/utils/Utils$2;)V

    invoke-static {p2}, Lcom/miui/contentextension/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    iget-object p1, p0, Lcom/miui/contentextension/utils/Utils$2;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    if-eqz p1, :cond_19

    .line 86
    invoke-interface {p1}, Lcom/miui/contentextension/utils/Utils$Listener;->onRefusePrivacyChange()V

    :cond_19
    return-void
.end method
