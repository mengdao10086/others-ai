.class final Landroidx/viewpager2/widget/OriginalFakeDrag;
.super Ljava/lang/Object;
.source "OriginalFakeDrag.java"


# instance fields
.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mScrollEventAdapter:Landroidx/viewpager2/widget/OriginalScrollEventAdapter;

.field private final mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2;Landroidx/viewpager2/widget/OriginalScrollEventAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalFakeDrag;->mViewPager:Landroidx/viewpager2/widget/OriginalViewPager2;

    .line 30
    iput-object p2, p0, Landroidx/viewpager2/widget/OriginalFakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/OriginalScrollEventAdapter;

    .line 31
    iput-object p3, p0, Landroidx/viewpager2/widget/OriginalFakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method isFakeDragging()Z
    .registers 2

    .line 35
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalFakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/OriginalScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->isFakeDragging()Z

    move-result v0

    return v0
.end method
