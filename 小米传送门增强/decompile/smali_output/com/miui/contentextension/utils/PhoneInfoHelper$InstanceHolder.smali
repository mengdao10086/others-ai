.class Lcom/miui/contentextension/utils/PhoneInfoHelper$InstanceHolder;
.super Ljava/lang/Object;
.source "PhoneInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/PhoneInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/miui/contentextension/utils/PhoneInfoHelper;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/miui/contentextension/utils/PhoneInfoHelper;
    .registers 1

    .line 0
    sget-object v0, Lcom/miui/contentextension/utils/PhoneInfoHelper$InstanceHolder;->INSTANCE:Lcom/miui/contentextension/utils/PhoneInfoHelper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/miui/contentextension/utils/PhoneInfoHelper;

    invoke-direct {v0}, Lcom/miui/contentextension/utils/PhoneInfoHelper;-><init>()V

    sput-object v0, Lcom/miui/contentextension/utils/PhoneInfoHelper$InstanceHolder;->INSTANCE:Lcom/miui/contentextension/utils/PhoneInfoHelper;

    return-void
.end method
