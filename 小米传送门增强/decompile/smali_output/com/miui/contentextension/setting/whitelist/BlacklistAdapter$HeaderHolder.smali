.class public Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$HeaderHolder;
.super Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;
.source "BlacklistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderHolder"
.end annotation


# instance fields
.field private final countTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 157
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a012c

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$HeaderHolder;->countTv:Landroid/widget/TextView;

    return-void
.end method

.method private getCountText(ZI)Ljava/lang/String;
    .registers 5

    .line 169
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$HeaderHolder;->countTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_10

    const p1, 0x7f0e0017

    goto :goto_13

    :cond_10
    const p1, 0x7f0e0018

    .line 171
    :goto_13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 169
    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bindData(Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;)V
    .registers 4

    .line 162
    instance-of v0, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;

    if-eqz v0, :cond_13

    .line 163
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;

    .line 164
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$HeaderHolder;->countTv:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;->isChecked:Z

    iget p1, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistHeaderBean;->mCount:I

    invoke-direct {p0, v1, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$HeaderHolder;->getCountText(ZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    return-void
.end method
