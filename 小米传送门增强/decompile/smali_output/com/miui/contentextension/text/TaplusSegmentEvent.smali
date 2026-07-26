.class public Lcom/miui/contentextension/text/TaplusSegmentEvent;
.super Ljava/lang/Object;
.source "TaplusSegmentEvent.java"


# instance fields
.field private hashCode:I

.field private isUpdateCache:Z

.field private reSelectedWay:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/miui/contentextension/text/TaplusSegmentEvent;->hashCode:I

    .line 11
    iput-object p2, p0, Lcom/miui/contentextension/text/TaplusSegmentEvent;->reSelectedWay:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/miui/contentextension/text/TaplusSegmentEvent;->hashCode:I

    .line 16
    iput-boolean p2, p0, Lcom/miui/contentextension/text/TaplusSegmentEvent;->isUpdateCache:Z

    return-void
.end method


# virtual methods
.method public getHashCode()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/miui/contentextension/text/TaplusSegmentEvent;->hashCode:I

    return v0
.end method

.method public getReSelectedWay()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/miui/contentextension/text/TaplusSegmentEvent;->reSelectedWay:Ljava/lang/String;

    return-object v0
.end method

.method public isUpdateCache()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/miui/contentextension/text/TaplusSegmentEvent;->isUpdateCache:Z

    return v0
.end method
