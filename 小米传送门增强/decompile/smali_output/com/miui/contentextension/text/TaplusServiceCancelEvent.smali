.class public Lcom/miui/contentextension/text/TaplusServiceCancelEvent;
.super Ljava/lang/Object;
.source "TaplusServiceCancelEvent.java"


# instance fields
.field private hashcode:I

.field private isCancel:Z

.field private moduleType:Ljava/lang/String;

.field private quitType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->isCancel:Z

    .line 17
    iput p2, p0, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->hashcode:I

    .line 18
    iput-object p3, p0, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->quitType:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->moduleType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHashcode()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->hashcode:I

    return v0
.end method

.method public getModuleType()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->moduleType:Ljava/lang/String;

    return-object v0
.end method

.method public getQuitType()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->quitType:Ljava/lang/String;

    return-object v0
.end method

.method public isCancel()Z
    .registers 2

    .line 23
    iget-boolean v0, p0, Lcom/miui/contentextension/text/TaplusServiceCancelEvent;->isCancel:Z

    return v0
.end method
