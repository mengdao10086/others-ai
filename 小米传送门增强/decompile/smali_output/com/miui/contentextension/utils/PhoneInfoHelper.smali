.class public Lcom/miui/contentextension/utils/PhoneInfoHelper;
.super Ljava/lang/Object;
.source "PhoneInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/utils/PhoneInfoHelper$InstanceHolder;
    }
.end annotation


# instance fields
.field private mTotalMem:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/miui/contentextension/utils/PhoneInfoHelper;->mTotalMem:I

    return-void
.end method

.method public static getInstance()Lcom/miui/contentextension/utils/PhoneInfoHelper;
    .registers 1

    .line 19
    invoke-static {}, Lcom/miui/contentextension/utils/PhoneInfoHelper$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/miui/contentextension/utils/PhoneInfoHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public lowTotalMemory()Z
    .registers 3

    .line 41
    iget v0, p0, Lcom/miui/contentextension/utils/PhoneInfoHelper;->mTotalMem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
