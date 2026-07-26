.class public Lcom/miui/contentextension/clipboard/ClipboardMonitor;
.super Ljava/lang/Object;
.source "ClipboardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnNerReadyListener;,
        Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnDeviceReadyListener;,
        Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnCopyRecommendReadyListener;
    }
.end annotation


# static fields
.field private static mCopyRecommendListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnCopyRecommendReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeviceListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnDeviceReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mNerListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnNerReadyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static onCopyRecommendReady(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mCopyRecommendListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    .line 59
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    sget-object p0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mCopyRecommendListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnCopyRecommendReadyListener;

    if-eqz p0, :cond_17

    .line 62
    invoke-interface {p0, v0}, Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnCopyRecommendReadyListener;->onCopyRecommendDeviceReady(Ljava/util/List;)V

    :cond_17
    return-void
.end method

.method public static onDeviceReady(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mDeviceListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    .line 42
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    sget-object p0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mDeviceListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnDeviceReadyListener;

    if-eqz p0, :cond_17

    .line 45
    invoke-interface {p0, v0}, Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnDeviceReadyListener;->onDeviceReady(Ljava/util/List;)V

    :cond_17
    return-void
.end method

.method public static onNerReady(I)V
    .registers 2

    .line 25
    sget-object v0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mNerListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    .line 26
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnNerReadyListener;

    if-eqz v0, :cond_10

    .line 28
    invoke-interface {v0, p0}, Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnNerReadyListener;->onNerReady(I)V

    :cond_10
    return-void
.end method

.method public static removeCopyRecommendListener()V
    .registers 1

    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mCopyRecommendListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static removeDeviceReadyListener()V
    .registers 1

    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mDeviceListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static removeNerReadyListener()V
    .registers 1

    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mNerListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setCopyRecommendListener(Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnCopyRecommendReadyListener;)V
    .registers 2

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mCopyRecommendListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setDeviceReadyListener(Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnDeviceReadyListener;)V
    .registers 2

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mDeviceListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setNerReadyListener(Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnNerReadyListener;)V
    .registers 2

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/contentextension/clipboard/ClipboardMonitor;->mNerListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
