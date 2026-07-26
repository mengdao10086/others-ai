.class Lcom/miui/contentextension/setting/TaplusWorker$SingletonHolder;
.super Ljava/lang/Object;
.source "TaplusWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/TaplusWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/contentextension/setting/TaplusWorker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/miui/contentextension/setting/TaplusWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/setting/TaplusWorker;-><init>(Lcom/miui/contentextension/setting/TaplusWorker-IA;)V

    sput-object v0, Lcom/miui/contentextension/setting/TaplusWorker$SingletonHolder;->INSTANCE:Lcom/miui/contentextension/setting/TaplusWorker;

    return-void
.end method
