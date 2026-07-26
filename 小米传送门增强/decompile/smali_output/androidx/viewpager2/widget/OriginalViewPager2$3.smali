.class Landroidx/viewpager2/widget/OriginalViewPager2$3;
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

    .line 252
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$3;->this$0:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 3

    .line 255
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$3;->this$0:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 256
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$3;->this$0:Landroidx/viewpager2/widget/OriginalViewPager2;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 257
    iget-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$3;->this$0:Landroidx/viewpager2/widget/OriginalViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/OriginalViewPager2;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requestFocus(I)Z

    :cond_15
    return-void
.end method
