.class public Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;
.super Ljava/lang/Object;
.source "ContentExtensionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/data/common/ContentExtensionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityConfigInfo"
.end annotation


# instance fields
.field mActivityName:Ljava/lang/String;

.field mPresentationType:Ljava/lang/String;

.field mValidAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const-string v0, "normal"

    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;->mPresentationType:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;->mValidAreas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPresentationType(ILandroid/content/Context;Landroid/graphics/Point;)Ljava/lang/String;
    .registers 10

    .line 296
    const-string v0, "Taplus.Content.presentationConfig"

    if-eqz p3, :cond_b4

    iget v1, p3, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_a

    goto/16 :goto_b4

    .line 301
    :cond_a
    const-string v1, "window"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 302
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 304
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/contentextension/utils/Utilities;->isForceFullScreenGesture(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 305
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_45

    .line 307
    :cond_29
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 312
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 313
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 314
    iget-object p2, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p2, :cond_45

    .line 316
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p2

    goto :goto_46

    :cond_45
    :goto_45
    const/4 p2, 0x0

    .line 320
    :goto_46
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr p2, v1

    .line 321
    iget-object v1, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;->mValidAreas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "forbidden"

    if-eqz v2, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;

    .line 322
    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float v2, p3

    int-to-float p2, p2

    iget v4, v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;->validAreaTop:F

    mul-float/2addr v4, p2

    cmpl-float v2, v2, v4

    const-string v4, "normal"

    const/4 v5, 0x1

    if-lez v2, :cond_91

    int-to-float p3, p3

    iget v1, v1, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ValidArea;->validAreaBottom:F

    mul-float/2addr p2, v1

    cmpg-float p2, p3, p2

    if-gez p2, :cond_91

    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "touch point inside top and bottom type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_81

    move-object p3, v3

    goto :goto_82

    :cond_81
    move-object p3, v4

    :goto_82
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v5, :cond_8f

    goto :goto_90

    :cond_8f
    move-object v3, v4

    :goto_90
    return-object v3

    .line 326
    :cond_91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "touch point outside top and bottom type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_9f

    move-object p3, v4

    goto :goto_a0

    :cond_9f
    move-object p3, v3

    :goto_a0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v5, :cond_ad

    move-object v3, v4

    :cond_ad
    return-object v3

    .line 330
    :cond_ae
    const-string p1, "touch point no valid areas return forbidden"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 297
    :cond_b4
    :goto_b4
    const-string p1, "getPresentationType p=null || p.y<0"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p1, p0, Lcom/miui/contentextension/data/common/ContentExtensionConfig$ActivityConfigInfo;->mPresentationType:Ljava/lang/String;

    return-object p1
.end method
