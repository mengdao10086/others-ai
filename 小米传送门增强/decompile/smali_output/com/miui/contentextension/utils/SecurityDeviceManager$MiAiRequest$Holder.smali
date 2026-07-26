.class Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest$Holder;
.super Ljava/lang/Object;
.source "SecurityDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest$Holder;->sInstance:Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 280
    new-instance v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;-><init>(Lcom/miui/contentextension/utils/SecurityDeviceManager-IA;)V

    sput-object v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest$Holder;->sInstance:Lcom/miui/contentextension/utils/SecurityDeviceManager$MiAiRequest;

    return-void
.end method
