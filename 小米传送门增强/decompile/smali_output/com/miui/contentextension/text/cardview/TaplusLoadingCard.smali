.class public Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;
.super Landroid/widget/LinearLayout;
.source "TaplusLoadingCard.java"

# interfaces
.implements Lcom/miui/contentextension/text/cardview/ITaplusCardView;


# instance fields
.field private mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0020

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0243

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public getProgressBar()Lmiuix/androidbasewidget/widget/ProgressBar;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusLoadingCard;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object v0
.end method
