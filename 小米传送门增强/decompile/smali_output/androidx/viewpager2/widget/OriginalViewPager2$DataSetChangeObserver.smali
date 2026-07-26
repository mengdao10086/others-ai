.class abstract Landroidx/viewpager2/widget/OriginalViewPager2$DataSetChangeObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DataSetChangeObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1656
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/viewpager2/widget/OriginalViewPager2$1;)V
    .registers 2

    .line 1656
    invoke-direct {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$DataSetChangeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onChanged()V
.end method

.method public final onItemRangeChanged(II)V
    .registers 3

    .line 1662
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    .line 1668
    invoke-virtual {p0}, Landroidx/viewpager2/widget/OriginalViewPager2$DataSetChangeObserver;->onChanged()V

    return-void
.end method
