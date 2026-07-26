.class Lcom/miui/contentextension/utils/SecurityDeviceManager$Holder;
.super Ljava/lang/Object;
.source "SecurityDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/SecurityDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/contentextension/utils/SecurityDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/miui/contentextension/utils/SecurityDeviceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/utils/SecurityDeviceManager;-><init>(Lcom/miui/contentextension/utils/SecurityDeviceManager-IA;)V

    sput-object v0, Lcom/miui/contentextension/utils/SecurityDeviceManager$Holder;->INSTANCE:Lcom/miui/contentextension/utils/SecurityDeviceManager;

    return-void
.end method
