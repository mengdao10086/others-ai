.class Lcom/miui/contentextension/services/SuperImageService$1;
.super Ljava/lang/Object;
.source "SuperImageService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/services/SuperImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/services/SuperImageService;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/services/SuperImageService;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$1;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 56
    iget-object p1, p0, Lcom/miui/contentextension/services/SuperImageService$1;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {p2}, Laidl/com/miui/mediafeature/superimage/ISuperImageService$Stub;->asInterface(Landroid/os/IBinder;)Laidl/com/miui/mediafeature/superimage/ISuperImageService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$fputmImageService(Lcom/miui/contentextension/services/SuperImageService;Laidl/com/miui/mediafeature/superimage/ISuperImageService;)V

    .line 57
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 58
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_18

    :cond_14
    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getBackupBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 59
    :goto_18
    const-string p2, "Taplus.SuperImageService"

    if-nez p1, :cond_22

    .line 60
    const-string p1, "onServiceConnected: src bitmap is null"

    invoke-static {p2, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", byte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {p2, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p2, p0, Lcom/miui/contentextension/services/SuperImageService$1;->this$0:Lcom/miui/contentextension/services/SuperImageService;

    invoke-static {p2, p1}, Lcom/miui/contentextension/services/SuperImageService;->-$$Nest$mdoSuperImage(Lcom/miui/contentextension/services/SuperImageService;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 72
    const-string p1, "Taplus.SuperImageService"

    const-string v0, "onServiceDisconnected: "

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
