.class Lmiuix/preference/PreferenceFragment$1;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/PreferenceFragment;


# direct methods
.method public static synthetic $r8$lambda$8bM5_uXNa17viDFFdDBokM1Z_YU(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lmiuix/preference/PreferenceFragment$1;->lambda$onLayoutChange$0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method constructor <init>(Lmiuix/preference/PreferenceFragment;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onLayoutChange$0(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 1

    .line 439
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 441
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_9
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 414
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_88

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    if-ne p4, p8, :cond_10

    if-eq p5, p9, :cond_88

    .line 421
    :cond_10
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$100(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceFragment$FrameDecoration;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 422
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$100(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceFragment$FrameDecoration;

    move-result-object p2

    invoke-virtual {p2, p5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateContainerHeight(I)V

    .line 424
    :cond_21
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$200(Lmiuix/preference/PreferenceFragment;)Lmiuix/container/ExtraPaddingPolicy;

    move-result-object p2

    if-eqz p2, :cond_88

    .line 425
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lmiuix/container/ExtraPaddingPolicy;
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$200(Lmiuix/preference/PreferenceFragment;)Lmiuix/container/ExtraPaddingPolicy;

    move-result-object p3

    # invokes: Lmiuix/preference/PreferenceFragment;->updateExtraPaddingHorizontal(Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z
    invoke-static {p2, p1, p3, p4, p5}, Lmiuix/preference/PreferenceFragment;->access$300(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/container/ExtraPaddingPolicy;II)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 426
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {p1}, Lmiuix/preference/PreferenceFragment;->getExtraHorizontalPadding()I

    move-result p1

    .line 427
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$400(Lmiuix/preference/PreferenceFragment;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_62

    const/4 p2, 0x0

    .line 428
    :goto_44
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;
    invoke-static {p3}, Lmiuix/preference/PreferenceFragment;->access$400(Lmiuix/preference/PreferenceFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_62

    .line 429
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;
    invoke-static {p3}, Lmiuix/preference/PreferenceFragment;->access$400(Lmiuix/preference/PreferenceFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/container/ExtraPaddingObserver;

    invoke-interface {p3, p1}, Lmiuix/container/ExtraPaddingObserver;->onExtraPaddingChanged(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_44

    .line 432
    :cond_62
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {p2, p1}, Lmiuix/preference/PreferenceFragment;->onExtraPaddingChanged(I)V

    .line 433
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_88

    .line 435
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {p3}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p3

    if-eqz p3, :cond_80

    .line 436
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$1;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {p3}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lmiuix/preference/PreferenceGroupAdapter;->onExtraPaddingChanged(I)V

    .line 438
    :cond_80
    new-instance p1, Lmiuix/preference/PreferenceFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lmiuix/preference/PreferenceFragment$1$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_88
    return-void
.end method
