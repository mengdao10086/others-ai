.class public final Lcom/xiaomi/taiyi/sdk/core/connect/AIManager$Companion;
.super Lcom/xiaomi/taiyi/sdk/base/utils/SingletonHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/taiyi/sdk/base/utils/SingletonHolder<",
        "Lcom/xiaomi/taiyi/sdk/core/connect/AIManager;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    sget-object p1, Lcom/xiaomi/taiyi/sdk/core/connect/a;->a:Lcom/xiaomi/taiyi/sdk/core/connect/a;

    invoke-direct {p0, p1}, Lcom/xiaomi/taiyi/sdk/base/utils/SingletonHolder;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
