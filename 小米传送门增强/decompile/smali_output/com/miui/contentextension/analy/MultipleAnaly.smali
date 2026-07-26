.class public Lcom/miui/contentextension/analy/MultipleAnaly;
.super Ljava/lang/Object;
.source "MultipleAnaly.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/analy/MultipleAnaly$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/contentextension/analy/MultipleAnaly-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/analy/MultipleAnaly;-><init>()V

    return-void
.end method


# virtual methods
.method public trackApiReceiveErrorEvent(Ljava/lang/String;ZIJ)V
    .registers 6

    .line 20
    invoke-static {p1, p2, p3, p4, p5}, Lcom/miui/contentextension/analy/Analy;->trackApiReceiveErrorEvent(Ljava/lang/String;ZIJ)V

    return-void
.end method

.method public trackApiReceiveSuccessEvent(Ljava/lang/String;J)V
    .registers 4

    .line 16
    invoke-static {p1, p2, p3}, Lcom/miui/contentextension/analy/Analy;->trackApiReceiveSuccessEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public trackApiSendEvent(Ljava/lang/String;)V
    .registers 2

    .line 12
    invoke-static {p1}, Lcom/miui/contentextension/analy/Analy;->trackApiSendEvent(Ljava/lang/String;)V

    return-void
.end method
