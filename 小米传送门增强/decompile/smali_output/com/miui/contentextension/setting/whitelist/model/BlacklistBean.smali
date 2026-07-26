.class public Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;
.super Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;
.source "BlacklistBean.java"


# instance fields
.field private isChecked:Z

.field private final label:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private pyInfo:Lcom/miui/contentextension/setting/whitelist/model/PYInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->packageName:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->isChecked:Z

    .line 13
    iput-object p3, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPyInfo()Lcom/miui/contentextension/setting/whitelist/model/PYInfo;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->pyInfo:Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    return-object v0
.end method

.method public getViewType()I
    .registers 2

    .line 0
    const/16 v0, 0xb

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 26
    iget-boolean v0, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->isChecked:Z

    return-void
.end method

.method public setPyInfo(Lcom/miui/contentextension/setting/whitelist/model/PYInfo;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->pyInfo:Lcom/miui/contentextension/setting/whitelist/model/PYInfo;

    return-void
.end method
