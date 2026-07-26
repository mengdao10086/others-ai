.class public interface abstract Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnCopyRecommendReadyListener;
.super Ljava/lang/Object;
.source "ClipboardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/clipboard/ClipboardMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCopyRecommendReadyListener"
.end annotation


# virtual methods
.method public abstract onCopyRecommendDeviceReady(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;)V"
        }
    .end annotation
.end method
