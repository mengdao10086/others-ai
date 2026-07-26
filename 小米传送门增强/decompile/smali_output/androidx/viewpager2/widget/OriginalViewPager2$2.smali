.class Landroidx/viewpager2/widget/OriginalViewPager2$2;
.super Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager2/widget/OriginalViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;)V
    .registers 2

    .line 234
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$2;->this$0:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    if-nez p1, :cond_7

    .line 246
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$2;->this$0:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->updateCurrentItem()V

    :cond_7
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .line 237
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$2;->this$0:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget v1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    if-eq v1, p1, :cond_d

    .line 238
    iput p1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItem:I

    .line 239
    iget-object p1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mAccessibilityProvider:Landroidx/viewpager2/widget/OriginalViewPager2$AccessibilityProvider;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2$AccessibilityProvider;->onSetNewCurrentItem()V

    :cond_d
    return-void
.end method
