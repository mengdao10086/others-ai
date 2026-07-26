.class Lcom/miui/contentextension/utils/SecurityDeviceManager$FidSignException;
.super Ljava/lang/Exception;
.source "SecurityDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/SecurityDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FidSignException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 236
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
