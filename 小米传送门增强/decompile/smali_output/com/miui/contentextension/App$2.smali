.class Lcom/miui/contentextension/App$2;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/App;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/App;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/App;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/miui/contentextension/App$2;->this$0:Lcom/miui/contentextension/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/miui/contentextension/App$2;->this$0:Lcom/miui/contentextension/App;

    invoke-static {v0}, Lcom/miui/contentextension/App;->-$$Nest$mregisterGlobalReceiver(Lcom/miui/contentextension/App;)V

    return-void
.end method
