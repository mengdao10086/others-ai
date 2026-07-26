.class public Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;
.super Ljava/lang/Object;
.source "ContentExtensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/data/common/ContentExtensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidArea"
.end annotation


# instance fields
.field validAreaBottom:F

.field validAreaTop:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;->validAreaTop:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 287
    iput v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;->validAreaBottom:F

    return-void
.end method
