.class public Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BlacklistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlacklistBaseHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;)V
    .registers 3

    .line 149
    const-string p1, "Taplus.BlacklistBaseHolder"

    const-string v0, "should implementation BlacklistBaseHolder bindData method"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
