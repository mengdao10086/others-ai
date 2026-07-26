.class public abstract Landroidx/viewpager/widget/PagerAdapter;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# instance fields
.field private final mObservable:Landroid/database/DataSetObservable;

.field private mViewPagerObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public abstract destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end method

.method public finishUpdate(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .registers 2

    .line 154
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 2

    .line 0
    const/4 p1, -0x1

    return p1
.end method

.method public getPageWidth(I)F
    .registers 2

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public abstract instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 0
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method setViewPagerObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    .line 316
    monitor-enter p0

    .line 317
    :try_start_1
    iput-object p1, p0, Landroidx/viewpager/widget/PagerAdapter;->mViewPagerObserver:Landroid/database/DataSetObserver;

    .line 318
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public startUpdate(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .registers 2

    .line 99
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/View;)V

    return-void
.end method
