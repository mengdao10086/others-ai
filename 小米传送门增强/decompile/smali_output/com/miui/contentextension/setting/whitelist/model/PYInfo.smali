.class public Lcom/miui/contentextension/setting/whitelist/model/PYInfo;
.super Ljava/lang/Object;
.source "PYInfo.java"


# instance fields
.field public py:Ljava/lang/StringBuffer;

.field public pyFirst:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/PYInfo;->py:Ljava/lang/StringBuffer;

    .line 5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/PYInfo;->pyFirst:Ljava/lang/StringBuffer;

    return-void
.end method
