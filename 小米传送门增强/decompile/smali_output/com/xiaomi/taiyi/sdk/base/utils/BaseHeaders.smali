.class public final Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders$Companion;

.field private static volatile initialized:Z

.field private static instance:Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;


# instance fields
.field private appCode:Ljava/lang/String;

.field private appPackage:Ljava/lang/String;

.field private appSignature:Ljava/lang/String;

.field private appVersionCode:J

.field private appVersionName:Ljava/lang/String;

.field private productCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->Companion:Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders$Companion;

    .line 1
    new-instance v0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;-><init>()V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->instance:Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appPackage:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appVersionName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appCode:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->productCode:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appSignature:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getInitialized$cp()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->initialized:Z

    return v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->instance:Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;

    return-object v0
.end method

.method public static final synthetic access$setInitialized$cp(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->initialized:Z

    return-void
.end method


# virtual methods
.method public final getAppCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppPackage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSignature()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appSignature:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersionCode()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appVersionCode:J

    return-wide v0
.end method

.method public final getAppVersionName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->productCode:Ljava/lang/String;

    return-object v0
.end method

.method public final setAppCode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appCode:Ljava/lang/String;

    return-void
.end method

.method public final setAppPackage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appPackage:Ljava/lang/String;

    return-void
.end method

.method public final setAppSignature(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appSignature:Ljava/lang/String;

    return-void
.end method

.method public final setAppVersionCode(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appVersionCode:J

    return-void
.end method

.method public final setAppVersionName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->appVersionName:Ljava/lang/String;

    return-void
.end method

.method public final setProductCode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/base/utils/BaseHeaders;->productCode:Ljava/lang/String;

    return-void
.end method
