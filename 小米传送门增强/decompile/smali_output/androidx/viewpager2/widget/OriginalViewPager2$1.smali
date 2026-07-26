.class Landroidx/viewpager2/widget/OriginalViewPager2$1;
.super Landroidx/viewpager2/widget/OriginalViewPager2$DataSetChangeObserver;
.source "OriginalViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/OriginalViewPager2;
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

    .line 137
    iput-object p1, p0, Landroidx/viewpager2/widget/OriginalViewPager2$1;->this$0:Landroidx/viewpager2/widget/OriginalViewPager2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2$DataSetChangeObserver;-><init>(Landroidx/viewpager2/widget/OriginalViewPager2$1;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 140
    iget-object v0, p0, Landroidx/viewpager2/widget/OriginalViewPager2$1;->this$0:Landroidx/viewpager2/widget/OriginalViewPager2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mCurrentItemDirty:Z

    .line 141
    iget-object v0, v0, Landroidx/viewpager2/widget/OriginalViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/OriginalScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalScrollEventAdapter;->notifyDataSetChangeHappened()V

    return-void
.end method
