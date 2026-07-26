.class public interface abstract Lcom/miui/contentextension/clipboard/ClipboardMonitor$OnDeviceReadyListener;
.super Ljava/lang/Object;
.source "ClipboardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/clipboard/ClipboardMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceReadyListener"
.end annotation


# virtual methods
.method public abstract onDeviceReady(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/clipboard/model/DeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method
