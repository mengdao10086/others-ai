.class Lcom/miui/contentextension/utils/AppInfoCaches$1;
.super Landroidx/collection/LruCache;
.source "AppInfoCaches.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/AppInfoCaches;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/utils/AppInfoCaches;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/utils/AppInfoCaches;I)V
    .registers 3

    .line 31
    iput-object p1, p0, Lcom/miui/contentextension/utils/AppInfoCaches$1;->this$0:Lcom/miui/contentextension/utils/AppInfoCaches;

    invoke-direct {p0, p2}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 31
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/utils/AppInfoCaches$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return p1

    .line 37
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1
.end method
