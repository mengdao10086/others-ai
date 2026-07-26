.class Lcom/miui/contentextension/utils/ToastUtils$5;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/ToastUtils;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 76
    invoke-static {}, Lcom/miui/contentextension/utils/ToastUtils;->-$$Nest$sfgetsToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method
