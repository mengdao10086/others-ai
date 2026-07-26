.class public final synthetic Lcom/xiaomi/taiyi/sdk/core/k;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lcom/xiaomi/taiyi/sdk/core/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/core/k;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/core/k;-><init>()V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/core/k;->a:Lcom/xiaomi/taiyi/sdk/core/k;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 1
    const-string v4, "<init>(Landroid/content/Context;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lcom/xiaomi/taiyi/sdk/core/m;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Landroid/content/Context;

    .line 2
    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/xiaomi/taiyi/sdk/core/m;

    .line 33
    invoke-direct {v0, p1}, Lcom/xiaomi/taiyi/sdk/core/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
