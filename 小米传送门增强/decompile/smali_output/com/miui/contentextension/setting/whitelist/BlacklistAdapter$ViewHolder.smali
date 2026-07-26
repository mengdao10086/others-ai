.class public Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;
.super Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;
.source "BlacklistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final appInfoCaches:Lcom/miui/contentextension/utils/AppInfoCaches;

.field public imageView:Landroid/widget/ImageView;

.field public slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field public summaryView:Landroid/widget/TextView;

.field public titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/CompoundButton$OnCheckedChangeListener;Lcom/miui/contentextension/utils/AppInfoCaches;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 185
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$BlacklistBaseHolder;-><init>(Landroid/view/View;)V

    .line 186
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p4, 0x7f0a0138

    .line 187
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const p4, 0x7f0a0285

    .line 188
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    const p4, 0x7f0a025d

    .line 189
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->summaryView:Landroid/widget/TextView;

    const p4, 0x7f0a0236

    .line 190
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 191
    iput-object p3, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->appInfoCaches:Lcom/miui/contentextension/utils/AppInfoCaches;

    .line 192
    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;)V
    .registers 6

    .line 196
    instance-of v0, p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;

    if-nez v0, :cond_5

    return-void

    .line 199
    :cond_5
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;

    .line 200
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 202
    invoke-static {}, Lcom/miui/contentextension/App;->getInstance()Lcom/miui/contentextension/App;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->getInstance(Landroid/content/Context;)Lcom/miui/contentextension/data/common/ContentExtensionConfig;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/data/common/ContentExtensionConfig;->needShowBottomRemind(Ljava/lang/String;)Z

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_34

    const/16 v2, 0x50

    goto :goto_36

    :cond_34
    const/16 v2, 0x10

    :goto_36
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 205
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_3f

    const/4 v2, 0x0

    goto :goto_41

    :cond_3f
    const/16 v2, 0x8

    :goto_41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->appInfoCaches:Lcom/miui/contentextension/utils/AppInfoCaches;

    iget-object v2, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/contentextension/utils/AppInfoCaches;->loadAppInfoByThread(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$ViewHolder;->slidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBean;->isChecked()Z

    move-result p1

    invoke-virtual {v1, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 208
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 209
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_6e

    const v0, 0x7f0700a7

    goto :goto_71

    :cond_6e
    const v0, 0x7f0700a5

    :goto_71
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 210
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
