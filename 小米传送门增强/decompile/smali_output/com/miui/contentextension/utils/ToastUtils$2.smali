.class Lcom/miui/contentextension/utils/ToastUtils$2;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resId:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput p1, p0, Lcom/miui/contentextension/utils/ToastUtils$2;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 47
    invoke-static {}, Lcom/miui/contentextension/utils/ToastUtils;->-$$Nest$smcheckReCreateToast()V

    .line 48
    invoke-static {}, Lcom/miui/contentextension/utils/ToastUtils;->-$$Nest$sfgetsToast()Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lcom/miui/contentextension/utils/ToastUtils$2;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 49
    invoke-static {}, Lcom/miui/contentextension/utils/ToastUtils;->-$$Nest$sfgetsToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
