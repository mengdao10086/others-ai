.class Lcom/miui/contentextension/data/http/TokenManager$Holder;
.super Ljava/lang/Object;
.source "TokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/data/http/TokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/contentextension/data/http/TokenManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/miui/contentextension/data/http/TokenManager;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/data/http/TokenManager$Holder;->sInstance:Lcom/miui/contentextension/data/http/TokenManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/miui/contentextension/data/http/TokenManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/data/http/TokenManager;-><init>(Lcom/miui/contentextension/data/http/TokenManager-IA;)V

    sput-object v0, Lcom/miui/contentextension/data/http/TokenManager$Holder;->sInstance:Lcom/miui/contentextension/data/http/TokenManager;

    return-void
.end method
