.class Lcom/miui/contentextension/data/common/ThirdContentProvider$3;
.super Lcom/xiaomi/scanner/IScannerInterface$Stub;
.source "ThirdContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/data/common/ThirdContentProvider;->doImageScan(Landroid/content/Context;ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/miui/contentextension/data/common/ThirdContentProvider$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/xiaomi/scanner/IScannerInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public detectImage()Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/miui/contentextension/data/common/ThirdContentProvider$3;->val$bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
