.class public interface abstract Lcom/miui/contentextension/text/RecommendationMonitor$OnSegmentReadyListener;
.super Ljava/lang/Object;
.source "RecommendationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/text/RecommendationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSegmentReadyListener"
.end annotation


# virtual methods
.method public abstract onSegmentReady(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;Z)V"
        }
    .end annotation
.end method
