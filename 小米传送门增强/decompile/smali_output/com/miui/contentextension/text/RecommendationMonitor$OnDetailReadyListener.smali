.class public interface abstract Lcom/miui/contentextension/text/RecommendationMonitor$OnDetailReadyListener;
.super Ljava/lang/Object;
.source "RecommendationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/text/RecommendationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDetailReadyListener"
.end annotation


# virtual methods
.method public abstract onDetailReady(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/contentextension/data/recognition/TextRecommendationInfo;",
            ">;)V"
        }
    .end annotation
.end method
