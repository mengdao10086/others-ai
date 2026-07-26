.class Lcom/miui/contentextension/data/http/TaplusNetworkClient$SingletonHolder;
.super Ljava/lang/Object;
.source "TaplusNetworkClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/data/http/TaplusNetworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/contentextension/data/http/TaplusNetworkClient;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/miui/contentextension/data/http/TaplusNetworkClient;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/data/http/TaplusNetworkClient$SingletonHolder;->INSTANCE:Lcom/miui/contentextension/data/http/TaplusNetworkClient;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/miui/contentextension/data/http/TaplusNetworkClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/data/http/TaplusNetworkClient;-><init>(Lcom/miui/contentextension/data/http/TaplusNetworkClient-IA;)V

    sput-object v0, Lcom/miui/contentextension/data/http/TaplusNetworkClient$SingletonHolder;->INSTANCE:Lcom/miui/contentextension/data/http/TaplusNetworkClient;

    return-void
.end method
