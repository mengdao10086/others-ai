.class public final Lcom/xiaomi/taiyi/sdk/common/AIVersion$VERSION_CODES;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/taiyi/sdk/common/AIVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VERSION_CODES"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/xiaomi/taiyi/sdk/common/AIVersion$VERSION_CODES;

.field public static final INVALID:I = -0x1

.field public static final OS_3_1_0:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/xiaomi/taiyi/sdk/common/AIVersion$VERSION_CODES;

    invoke-direct {v0}, Lcom/xiaomi/taiyi/sdk/common/AIVersion$VERSION_CODES;-><init>()V

    sput-object v0, Lcom/xiaomi/taiyi/sdk/common/AIVersion$VERSION_CODES;->INSTANCE:Lcom/xiaomi/taiyi/sdk/common/AIVersion$VERSION_CODES;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
