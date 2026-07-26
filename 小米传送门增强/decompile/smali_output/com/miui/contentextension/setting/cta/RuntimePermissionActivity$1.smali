.class Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$1;
.super Ljava/lang/Object;
.source "RuntimePermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;->showRequestPermissionRationaleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$1;->this$0:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 130
    const-string p2, "Taplus.RuntimePermissionActivity"

    const-string v0, "cancel"

    invoke-static {p2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 132
    iget-object p1, p0, Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity$1;->this$0:Lcom/miui/contentextension/setting/cta/RuntimePermissionActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
