.class public Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;
.super Ljava/lang/Object;
.source "ContinuityChannelMessageBean.java"


# instance fields
.field private clipboardData:Ljava/lang/String;

.field private nerType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipboardData()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;->clipboardData:Ljava/lang/String;

    return-object v0
.end method

.method public getNerType()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;->nerType:I

    return v0
.end method

.method public setClipboardData(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;->clipboardData:Ljava/lang/String;

    return-void
.end method

.method public setNerType(I)V
    .registers 2

    .line 8
    iput p1, p0, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;->nerType:I

    return-void
.end method
