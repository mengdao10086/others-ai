.class public final Lcom/xiaomi/taiyi/sdk/base/data/AILibrary;
.super Lcom/xiaomi/taiyi/sdk/base/data/AIRes;
.source "SourceFile"


# instance fields
.field private required:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/base/data/AIRes;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AILibrary;->required:Z

    return-void
.end method


# virtual methods
.method public final getRequired()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/taiyi/sdk/base/data/AILibrary;->required:Z

    return v0
.end method

.method public final setRequired(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/taiyi/sdk/base/data/AILibrary;->required:Z

    return-void
.end method
