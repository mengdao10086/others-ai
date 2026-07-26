.class public Lcom/miui/contentextension/text/cardview/TaplusCtaCard;
.super Landroid/widget/LinearLayout;
.source "TaplusCtaCard.java"

# interfaces
.implements Lcom/miui/contentextension/text/cardview/ITaplusCardView;


# instance fields
.field private mCtaAgree:Landroid/widget/TextView;

.field private mCtaDes:Landroid/widget/TextView;

.field private mCtaQuit:Landroid/widget/TextView;

.field private mCtaScroll:Lcom/miui/contentextension/view/MaxHeightScrollView;

.field private mHashCode:I

.field private mMovementMethod:Lcom/miui/contentextension/utils/TaplusLinkMovementMethod;

.field private mPrivacy:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHashCode(Lcom/miui/contentextension/text/cardview/TaplusCtaCard;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mHashCode:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d001f

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const p2, 0x7f08007f

    .line 49
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const p2, 0x7f0a00d1

    .line 51
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mCtaDes:Landroid/widget/TextView;

    const p2, 0x7f0a00cd

    .line 52
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mPrivacy:Landroid/widget/TextView;

    .line 53
    new-instance p2, Lcom/miui/contentextension/utils/TaplusLinkMovementMethod;

    invoke-direct {p2}, Lcom/miui/contentextension/utils/TaplusLinkMovementMethod;-><init>()V

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mMovementMethod:Lcom/miui/contentextension/utils/TaplusLinkMovementMethod;

    .line 54
    iget-object p3, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mPrivacy:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 56
    iget-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mCtaDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f100279

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mPrivacy:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 58
    invoke-static {}, Lcom/miui/contentextension/utils/Utils;->getUserAgreement()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/miui/contentextension/utils/Utils;->getPrivacyUrl(Z)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f100276

    .line 57
    invoke-virtual {p3, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a00d3

    .line 60
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mCtaQuit:Landroid/widget/TextView;

    .line 61
    new-instance p3, Lcom/miui/contentextension/text/cardview/TaplusCtaCard$1;

    invoke-direct {p3, p0}, Lcom/miui/contentextension/text/cardview/TaplusCtaCard$1;-><init>(Lcom/miui/contentextension/text/cardview/TaplusCtaCard;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a00cc

    .line 67
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mCtaAgree:Landroid/widget/TextView;

    .line 68
    new-instance p3, Lcom/miui/contentextension/text/cardview/TaplusCtaCard$2;

    invoke-direct {p3, p0}, Lcom/miui/contentextension/text/cardview/TaplusCtaCard$2;-><init>(Lcom/miui/contentextension/text/cardview/TaplusCtaCard;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p2, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mCtaQuit:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mCtaAgree:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    aput-object p2, v0, v1

    aput-object p3, v0, p1

    invoke-static {v0}, Lcom/miui/contentextension/utils/FolmeUtil;->doTints([Landroid/view/View;)V

    const p1, 0x7f0a00d4

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/contentextension/view/MaxHeightScrollView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mCtaScroll:Lcom/miui/contentextension/view/MaxHeightScrollView;

    .line 77
    invoke-direct {p0}, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->getMaxHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/contentextension/view/MaxHeightScrollView;->setMaxHeight(I)V

    return-void
.end method

.method private getMaxHeight()I
    .registers 4

    .line 86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/SystemBarUtil;->getNavBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 87
    invoke-static {}, Lcom/miui/contentextension/utils/DeviceConfig;->getScreenRealHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f353f7d    # 0.708f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method


# virtual methods
.method public setHashCode(I)V
    .registers 3

    .line 81
    iput p1, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mHashCode:I

    .line 82
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->mMovementMethod:Lcom/miui/contentextension/utils/TaplusLinkMovementMethod;

    invoke-virtual {v0, p1}, Lcom/miui/contentextension/utils/TaplusLinkMovementMethod;->setHashCode(I)V

    return-void
.end method
