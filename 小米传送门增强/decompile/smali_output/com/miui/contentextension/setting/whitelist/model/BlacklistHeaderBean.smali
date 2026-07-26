.class public Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;
.super Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;
.source "BlacklistHeaderBean.java"


# instance fields
.field public isChecked:Z

.field public mCount:I


# direct methods
.method public constructor <init>(ZI)V
    .registers 3

    .line 7
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;->isChecked:Z

    .line 9
    iput p2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;->mCount:I

    return-void
.end method


# virtual methods
.method public getViewType()I
    .registers 2

    .line 0
    const/16 v0, 0xa

    return v0
.end method
