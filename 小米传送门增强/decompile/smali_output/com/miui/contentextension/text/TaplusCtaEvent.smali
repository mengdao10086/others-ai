.class public Lcom/miui/contentextension/text/TaplusCtaEvent;
.super Ljava/lang/Object;
.source "TaplusCtaEvent.java"


# instance fields
.field private hashCode:I

.field private isAgree:Z

.field private isOpenUrl:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/miui/contentextension/text/TaplusCtaEvent;->hashCode:I

    .line 12
    iput-boolean p2, p0, Lcom/miui/contentextension/text/TaplusCtaEvent;->isAgree:Z

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/miui/contentextension/text/TaplusCtaEvent;->hashCode:I

    .line 17
    iput-boolean p2, p0, Lcom/miui/contentextension/text/TaplusCtaEvent;->isOpenUrl:Z

    .line 18
    iput-object p3, p0, Lcom/miui/contentextension/text/TaplusCtaEvent;->url:Ljava/lang/String;

    return-void
.end method
