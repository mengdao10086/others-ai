.class Lcom/miui/contentextension/setting/activity/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/activity/AboutActivity;->supportNavBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/activity/AboutActivity;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/miui/contentextension/setting/activity/AboutActivity$1;->this$0:Lcom/miui/contentextension/setting/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 6

    .line 63
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 64
    iget p2, p1, Landroidx/core/graphics/Insets;->bottom:I

    if-lez p2, :cond_3a

    .line 65
    iget-object p2, p0, Lcom/miui/contentextension/setting/activity/AboutActivity$1;->this$0:Lcom/miui/contentextension/setting/activity/AboutActivity;

    invoke-static {p2}, Lcom/miui/contentextension/setting/activity/AboutActivity;->-$$Nest$fgetrootAbout(Lcom/miui/contentextension/setting/activity/AboutActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/contentextension/setting/activity/AboutActivity$1;->this$0:Lcom/miui/contentextension/setting/activity/AboutActivity;

    invoke-static {v0}, Lcom/miui/contentextension/setting/activity/AboutActivity;->-$$Nest$fgetrootAbout(Lcom/miui/contentextension/setting/activity/AboutActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingStart()I

    move-result v0

    iget-object v1, p0, Lcom/miui/contentextension/setting/activity/AboutActivity$1;->this$0:Lcom/miui/contentextension/setting/activity/AboutActivity;

    invoke-static {v1}, Lcom/miui/contentextension/setting/activity/AboutActivity;->-$$Nest$fgetrootAbout(Lcom/miui/contentextension/setting/activity/AboutActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/contentextension/setting/activity/AboutActivity$1;->this$0:Lcom/miui/contentextension/setting/activity/AboutActivity;

    invoke-static {v2}, Lcom/miui/contentextension/setting/activity/AboutActivity;->-$$Nest$fgetrootAbout(Lcom/miui/contentextension/setting/activity/AboutActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingEnd()I

    move-result v2

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 67
    :cond_3a
    sget-object p1, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method
