.class public final Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;
.super Ljava/lang/Object;
.source "ActivityWhitelistSettingBinding.java"


# instance fields
.field public final emptyView:Landroid/widget/TextView;

.field public final listview:Lmiuix/recyclerview/widget/RecyclerView;

.field public final loadingView:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final searchView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lmiuix/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 6

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->emptyView:Landroid/widget/TextView;

    .line 41
    iput-object p3, p0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->listview:Lmiuix/recyclerview/widget/RecyclerView;

    .line 42
    iput-object p4, p0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->loadingView:Landroid/widget/LinearLayout;

    .line 43
    iput-object p5, p0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->searchView:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;
    .registers 9

    const v0, 0x7f0a010a

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_37

    const v0, 0x7f0a0160

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_37

    const v0, 0x7f0a0161

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_37

    const v0, 0x7f0a020b

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_37

    .line 97
    new-instance v0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lmiuix/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-object v0

    .line 100
    :cond_37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;
    .registers 5

    const v0, 0x7f0d001d

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_d

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_d
    invoke-static {p0}, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->bind(Landroid/view/View;)Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/miui/contentextension/databinding/ActivityWhitelistSettingBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
