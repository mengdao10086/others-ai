.class public Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;
.super Ljava/lang/Object;
.source "TaplusQuitFloatViewEvent.java"


# instance fields
.field private from:Ljava/lang/String;

.field private hashcode:I

.field private isCancel:Z


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;->isCancel:Z

    .line 15
    iput p2, p0, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;->hashcode:I

    .line 16
    iput-object p3, p0, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;->from:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getHashcode()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;->hashcode:I

    return v0
.end method

.method public isCancel()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/miui/contentextension/text/TaplusQuitFloatViewEvent;->isCancel:Z

    return v0
.end method
