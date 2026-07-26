.class public Lcom/miui/contentextension/setting/cta/CtaEvent;
.super Ljava/lang/Object;
.source "CtaEvent.java"


# instance fields
.field private mFromClipboard:Z

.field private mIsAgree:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/cta/CtaEvent;->mIsAgree:Z

    .line 15
    iput-boolean p2, p0, Lcom/miui/contentextension/setting/cta/CtaEvent;->mFromClipboard:Z

    return-void
.end method


# virtual methods
.method public isAgree()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Lcom/miui/contentextension/setting/cta/CtaEvent;->mIsAgree:Z

    return v0
.end method
