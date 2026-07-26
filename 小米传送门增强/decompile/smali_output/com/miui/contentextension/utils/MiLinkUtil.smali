.class public final Lcom/miui/contentextension/utils/MiLinkUtil;
.super Ljava/lang/Object;
.source "MiLinkUtil.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/contentextension/utils/MiLinkUtil;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/contentextension/utils/MiLinkUtil;

    invoke-direct {v0}, Lcom/miui/contentextension/utils/MiLinkUtil;-><init>()V

    sput-object v0, Lcom/miui/contentextension/utils/MiLinkUtil;->INSTANCE:Lcom/miui/contentextension/utils/MiLinkUtil;

    .line 15
    const-string v0, "MiLinkUtil"

    sput-object v0, Lcom/miui/contentextension/utils/MiLinkUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addMiContinuityServiceInfo(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/miui/contentextension/utils/MiLinkUtil;->TAG:Ljava/lang/String;

    const-string v1, "addMiContinuityServiceInfo"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    invoke-direct {v0}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;-><init>()V

    .line 76
    const-string v1, "ContentExtensionService"

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lcom/xiaomi/continuity/networking/NetworkingManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/networking/NetworkingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/continuity/networking/NetworkingManager;->addServiceInfo(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;)I

    return-void
.end method

.method public final checkMiLinOpenAndOpration(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/utils/MiLinkUtil;->miLinkIsOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/utils/MiLinkUtil;->addMiContinuityServiceInfo(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/miui/contentextension/utils/MiLinkUtil;->updateStaticEnabled(Landroid/content/Context;I)V

    goto :goto_1a

    .line 56
    :cond_13
    invoke-virtual {p0, p1}, Lcom/miui/contentextension/utils/MiLinkUtil;->removeMiContinuityServiceInfo(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/miui/contentextension/utils/MiLinkUtil;->updateStaticEnabled(Landroid/content/Context;I)V

    :goto_1a
    return-void
.end method

.method public final miLinkIsOpen(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 36
    const-string v1, "settings_key_interconnection_privacy_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 41
    sget-object v1, Lcom/miui/contentextension/utils/MiLinkUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "milink privacy state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_29

    return v2

    .line 46
    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "pref_key_connectivity_service_state"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "milink state:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4b

    move v2, v0

    :cond_4b
    return v2
.end method

.method public final removeMiContinuityServiceInfo(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/miui/contentextension/utils/MiLinkUtil;->TAG:Ljava/lang/String;

    const-string v1, "removeMiContinuityServiceInfo"

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;

    invoke-direct {v0}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;-><init>()V

    .line 86
    const-string v1, "ContentExtensionService"

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/networking/BusinessServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/xiaomi/continuity/networking/NetworkingManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/networking/NetworkingManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/continuity/networking/NetworkingManager;->removeServiceInfo(Lcom/xiaomi/continuity/networking/BusinessServiceInfo;)I

    return-void
.end method

.method public final updateStaticEnabled(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ContinuityEnabledByContentExtention"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
