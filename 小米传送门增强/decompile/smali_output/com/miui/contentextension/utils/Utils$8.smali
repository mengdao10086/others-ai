.class Lcom/miui/contentextension/utils/Utils$8;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/Utils;->showPrivacyClipboardRevokeTipDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/contentextension/utils/Utils$Listener;)V
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

    .line 192
    iput-object p1, p0, Lcom/miui/contentextension/utils/Utils$8;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 195
    iget-object p2, p0, Lcom/miui/contentextension/utils/Utils$8;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    if-eqz p2, :cond_7

    .line 196
    invoke-interface {p2}, Lcom/miui/contentextension/utils/Utils$Listener;->onAgree()V

    .line 198
    :cond_7
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 199
    iget-object p1, p0, Lcom/miui/contentextension/utils/Utils$8;->val$listener:Lcom/miui/contentextension/utils/Utils$Listener;

    if-eqz p1, :cond_11

    .line 200
    invoke-interface {p1}, Lcom/miui/contentextension/utils/Utils$Listener;->finishActivity()V

    :cond_11
    return-void
.end method
