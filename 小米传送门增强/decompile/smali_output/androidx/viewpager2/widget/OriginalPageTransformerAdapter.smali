.class final Landroidx/viewpager2/widget/OriginalPageTransformerAdapter;
.super Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;
.source "OriginalPageTransformerAdapter.java"


# instance fields
.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;-><init>()V

    .line 21
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalPageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method getPageTransformer()Landroidx/viewpager2/widget/OriginalViewPager2$PageTransformer;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .line 0
    return-void
.end method

.method setPageTransformer(Landroidx/viewpager2/widget/OriginalViewPager2$PageTransformer;)V
    .registers 2

    .line 0
    return-void
.end method
