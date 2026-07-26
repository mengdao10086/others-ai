.class Lcom/miui/contentextension/data/http/OkHttpClient$Holder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/data/http/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lcom/miui/contentextension/data/http/OkHttpClient;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Lcom/miui/contentextension/data/http/OkHttpClient;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/data/http/OkHttpClient$Holder;->sInstance:Lcom/miui/contentextension/data/http/OkHttpClient;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/miui/contentextension/data/http/OkHttpClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/data/http/OkHttpClient;-><init>(Lcom/miui/contentextension/data/http/OkHttpClient-IA;)V

    sput-object v0, Lcom/miui/contentextension/data/http/OkHttpClient$Holder;->sInstance:Lcom/miui/contentextension/data/http/OkHttpClient;

    return-void
.end method
