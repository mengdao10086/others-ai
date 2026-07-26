.class public interface abstract Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;->a:Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;

    sput-object v0, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;->Companion:Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;

    return-void
.end method

.method public static localLoader(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;
    .registers 2

    .line 0
    sget-object v0, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;->Companion:Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;

    invoke-virtual {v0, p0}, Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader$Companion;->localLoader(Landroid/content/Context;)Lcom/xiaomi/taiyi/sdk/core/ability/IAbilityLoader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract destroySync(Ljava/lang/String;)V
.end method

.method public abstract loadSync(Lcom/xiaomi/taiyi/sdk/transfer/data/AIRequest;Lcom/xiaomi/taiyi/sdk/base/data/AIDetail;)Lcom/xiaomi/taiyi/sdk/transfer/data/AIResponse;
.end method
