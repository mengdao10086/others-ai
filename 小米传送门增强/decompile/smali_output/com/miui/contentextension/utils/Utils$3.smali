.class Lcom/miui/contentextension/utils/Utils$3;
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
.field final synthetic val$listener:Lcom/miui/contentextension/utils/Utils$Listener;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/utils/Utils$Listener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/miui/contentextension/utils/Utils$3;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 129
    const-string p2, "Taplus.Utils"

    const-string v0, "click showPrivacyRevokeTipDialog exit"

    invoke-static {p2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 131
    iget-object p1, p0, Lcom/miui/contentextension/utils/Utils$3;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    if-eqz p1, :cond_11

    .line 132
    invoke-interface {p1}, Lcom/miui/contentextension/utils/Utils$Listener;->onRefusePrivacyChange()V

    :cond_11
    return-void
.end method
