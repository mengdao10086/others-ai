.class Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$4;
.super Ljava/lang/Object;
.source "MainSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->handleOperationMode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

.field final synthetic val$mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$4;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    iput-object p2, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$4;->val$mode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 247
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$4;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    iget-object p2, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$4;->val$mode:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->-$$Nest$msetOperationMode(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$4;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->-$$Nest$fgetmContext(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->closeXiaoaiLongPressMode(Landroid/content/Context;)V

    return-void
.end method
