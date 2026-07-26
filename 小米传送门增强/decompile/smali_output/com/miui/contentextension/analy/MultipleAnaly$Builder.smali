.class public Lcom/miui/contentextension/analy/MultipleAnaly$Builder;
.super Ljava/lang/Object;
.source "MultipleAnaly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/analy/MultipleAnaly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/contentextension/analy/MultipleAnaly;
    .registers 3

    .line 30
    new-instance v0, Lcom/miui/contentextension/analy/MultipleAnaly;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/analy/MultipleAnaly;-><init>(Lcom/miui/contentextension/analy/MultipleAnaly-IA;)V

    return-object v0
.end method

.method public setEntryType()Lcom/miui/contentextension/analy/MultipleAnaly$Builder;
    .registers 1

    .line 0
    return-object p0
.end method
