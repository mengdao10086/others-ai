.class Lcom/miui/contentextension/utils/DisposableHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "DisposableHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/DisposableHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/contentextension/utils/DisposableHelper;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/miui/contentextension/utils/DisposableHelper;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/utils/DisposableHelper$SingletonHolder;->INSTANCE:Lcom/miui/contentextension/utils/DisposableHelper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/miui/contentextension/utils/DisposableHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/utils/DisposableHelper;-><init>(Lcom/miui/contentextension/utils/DisposableHelper-IA;)V

    sput-object v0, Lcom/miui/contentextension/utils/DisposableHelper$SingletonHolder;->INSTANCE:Lcom/miui/contentextension/utils/DisposableHelper;

    return-void
.end method
