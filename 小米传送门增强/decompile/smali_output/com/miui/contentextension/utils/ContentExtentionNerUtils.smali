.class public final Lcom/miui/contentextension/utils/ContentExtentionNerUtils;
.super Ljava/lang/Object;
.source "ContentExtentionNerUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/miui/contentextension/utils/ContentExtentionNerUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final nerAbility:Lcom/xiaomi/taiyi/api/ner/NerAbility;


# direct methods
.method public static synthetic $r8$lambda$TEEoc5XA277aDpmcp3MtDG965LA()Lcom/miui/contentextension/utils/ContentExtentionNerUtils;
    .registers 1

    .line 0
    invoke-static {}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->INSTANCE_delegate$lambda$0()Lcom/miui/contentextension/utils/ContentExtentionNerUtils;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->Companion:Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;

    .line 23
    new-instance v0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "ContentExtentionNerUtils"

    iput-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/xiaomi/taiyi/api/ner/NerAbility;

    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v1

    const-string v2, "getInstance(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/taiyi/api/ner/NerAbility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->nerAbility:Lcom/xiaomi/taiyi/api/ner/NerAbility;

    .line 19
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/taiyi/sdk/base/utils/SdkLog;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method private static final INSTANCE_delegate$lambda$0()Lcom/miui/contentextension/utils/ContentExtentionNerUtils;
    .registers 1

    .line 23
    new-instance v0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;

    invoke-direct {v0}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;-><init>()V

    return-object v0
.end method

.method public static final synthetic access$getINSTANCE$delegate$cp()Lkotlin/Lazy;
    .registers 1

    .line 11
    sget-object v0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->INSTANCE$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final getExactNerResult(Ljava/lang/String;)Lcom/xiaomi/taiyi/api/ner/NerResult;
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->nerAbility:Lcom/xiaomi/taiyi/api/ner/NerAbility;

    invoke-virtual {v0, p1}, Lcom/xiaomi/taiyi/api/ner/NerAbility;->getExactNerResult(Ljava/lang/String;)Lcom/xiaomi/taiyi/api/ner/NerResult;

    move-result-object p1

    return-object p1
.end method

.method private final getExactNerResultType(Ljava/lang/String;)I
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->getExactNerResult(Ljava/lang/String;)Lcom/xiaomi/taiyi/api/ner/NerResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/taiyi/api/ner/NerResult;->getExactType()I

    move-result p1

    return p1
.end method

.method private final isSupport()Z
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->nerAbility:Lcom/xiaomi/taiyi/api/ner/NerAbility;

    invoke-virtual {v0}, Lcom/xiaomi/taiyi/sdk/core/AIAbility;->isSupport()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getNerType(Ljava/lang/String;)I
    .registers 6

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    :try_start_5
    invoke-direct {p0}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->getExactNerResultType(Ljava/lang/String;)I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use TaiYiNer type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2a

    return v0

    :catch_28
    move-exception p1

    goto :goto_55

    .line 47
    :cond_2a
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/aicr/nlp/MlKitManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/aicr/nlp/MlKitManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/aicr/nlp/MlKitManager;->getExactNerResult(Ljava/lang/String;)Lcom/xiaomi/aicr/nlp/NerResult;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/aicr/nlp/NerResult;->getExactType()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use old ner type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p1}, Lcom/xiaomi/aicr/nlp/NerResult;->getExactType()I

    move-result p1
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_54} :catch_28

    return p1

    .line 51
    :goto_55
    iget-object v0, p0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToGetNerResult error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
