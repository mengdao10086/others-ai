.class public Lcom/miui/contentextension/setting/activity/AboutActivity;
.super Lcom/miui/contentextension/BaseActivity;
.source "AboutActivity.java"


# instance fields
.field private rootAbout:Landroid/widget/RelativeLayout;


# direct methods
.method public static synthetic $r8$lambda$UyT3U4wX71CHTgUe6yXo5lbsZKM(Lcom/miui/contentextension/setting/activity/AboutActivity;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/setting/activity/AboutActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetrootAbout(Lcom/miui/contentextension/setting/activity/AboutActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/activity/AboutActivity;->rootAbout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/miui/contentextension/BaseActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 4

    .line 42
    new-instance p1, Landroid/content/Intent;

    const-string v0, "https://beian.miit.gov.cn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private supportNavBar()V
    .registers 3

    .line 56
    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 59
    :cond_7
    iget-object v0, p0, Lcom/miui/contentextension/setting/activity/AboutActivity;->rootAbout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/miui/contentextension/setting/activity/AboutActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/contentextension/setting/activity/AboutActivity$1;-><init>(Lcom/miui/contentextension/setting/activity/AboutActivity;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Lcom/miui/contentextension/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 38
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a01ff

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/miui/contentextension/setting/activity/AboutActivity;->rootAbout:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a02a0

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/contentextension/utils/Utilities;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f100242

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a029b

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/setting/activity/AboutActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/contentextension/setting/activity/AboutActivity$$ExternalSyntheticLambda0;-><init>(Lcom/miui/contentextension/setting/activity/AboutActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_66

    const p1, 0x7f0a015a

    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 46
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 48
    :cond_66
    invoke-direct {p0}, Lcom/miui/contentextension/setting/activity/AboutActivity;->supportNavBar()V

    return-void
.end method
