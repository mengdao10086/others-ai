.class Lcom/miui/contentextension/utils/Utils$4;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/Utils;->showPrivacyRevokeTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V
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

    .line 110
    iput-object p1, p0, Lcom/miui/contentextension/utils/Utils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/contentextension/utils/Utils$4;->val$policeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/contentextension/utils/Utils$4;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 113
    new-instance p2, Lcom/miui/contentextension/utils/Utils$4$1;

    invoke-direct {p2, p0}, Lcom/miui/contentextension/utils/Utils$4$1;-><init>(Lcom/miui/contentextension/utils/Utils$4;)V

    invoke-static {p2}, Lcom/miui/contentextension/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 120
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 121
    iget-object p1, p0, Lcom/miui/contentextension/utils/Utils$4;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    if-eqz p1, :cond_12

    .line 122
    invoke-interface {p1}, Lcom/miui/contentextension/utils/Utils$Listener;->onRefusePrivacyChange()V

    :cond_12
    return-void
.end method
