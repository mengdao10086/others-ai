.class Lcom/miui/contentextension/data/cms/ConfigDataManager$Holder;
.super Ljava/lang/Object;
.source "ConfigDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/data/cms/ConfigDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/contentextension/data/cms/ConfigDataManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/miui/contentextension/data/cms/ConfigDataManager;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/data/cms/ConfigDataManager$Holder;->sInstance:Lcom/miui/contentextension/data/cms/ConfigDataManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/miui/contentextension/data/cms/ConfigDataManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/data/cms/ConfigDataManager;-><init>(Lcom/miui/contentextension/data/cms/ConfigDataManager-IA;)V

    sput-object v0, Lcom/miui/contentextension/data/cms/ConfigDataManager$Holder;->sInstance:Lcom/miui/contentextension/data/cms/ConfigDataManager;

    return-void
.end method
