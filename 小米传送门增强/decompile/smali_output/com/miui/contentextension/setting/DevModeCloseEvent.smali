.class public Lcom/miui/contentextension/setting/DevModeCloseEvent;
.super Ljava/lang/Object;
.source "DevModeCloseEvent.java"


# instance fields
.field private mIsClosed:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/DevModeCloseEvent;->mIsClosed:Z

    return-void
.end method


# virtual methods
.method public isClosed()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/miui/contentextension/setting/DevModeCloseEvent;->mIsClosed:Z

    return v0
.end method
