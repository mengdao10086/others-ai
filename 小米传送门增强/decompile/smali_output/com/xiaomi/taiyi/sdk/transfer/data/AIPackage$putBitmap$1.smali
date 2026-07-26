.class public final Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage$putBitmap$1;
.super Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $value:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage$putBitmap$1;->$value:Landroid/graphics/Bitmap;

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/taiyi/sdk/transfer/data/IBitmap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/taiyi/sdk/transfer/data/AIPackage$putBitmap$1;->$value:Landroid/graphics/Bitmap;

    return-object v0
.end method
