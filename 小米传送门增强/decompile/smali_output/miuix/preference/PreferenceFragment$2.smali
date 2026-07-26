.class Lmiuix/preference/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/PreferenceFragment;->addWindowInsetsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lmiuix/preference/PreferenceFragment;)V
    .registers 2

    .line 490
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lmiuix/internal/util/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    .line 493
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    # invokes: Lmiuix/preference/PreferenceFragment;->isLayoutHideNavigation(Landroid/view/View;)Z
    invoke-static {p3, p1}, Lmiuix/preference/PreferenceFragment;->access$600(Lmiuix/preference/PreferenceFragment;Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_9

    return-object p2

    .line 496
    :cond_9
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    if-nez p1, :cond_10

    return-object p2

    .line 500
    :cond_10
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result p3

    invoke-virtual {p1, p3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 501
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mTempNavigationBarInsets:Landroidx/core/graphics/Insets;
    invoke-static {p3}, Lmiuix/preference/PreferenceFragment;->access$700(Lmiuix/preference/PreferenceFragment;)Landroidx/core/graphics/Insets;

    move-result-object p3

    if-eqz p3, :cond_2f

    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    .line 502
    # getter for: Lmiuix/preference/PreferenceFragment;->mTempNavigationBarInsets:Landroidx/core/graphics/Insets;
    invoke-static {p3}, Lmiuix/preference/PreferenceFragment;->access$700(Lmiuix/preference/PreferenceFragment;)Landroidx/core/graphics/Insets;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2f

    return-object p2

    .line 505
    :cond_2f
    iget-object p3, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    # setter for: Lmiuix/preference/PreferenceFragment;->mTempNavigationBarInsets:Landroidx/core/graphics/Insets;
    invoke-static {p3, p1}, Lmiuix/preference/PreferenceFragment;->access$702(Lmiuix/preference/PreferenceFragment;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    .line 506
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    iget-boolean p3, p1, Lmiuix/preference/PreferenceFragment;->mEnableNavigationBarInsets:Z

    if-eqz p3, :cond_47

    .line 507
    # getter for: Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment;->access$800(Lmiuix/preference/PreferenceFragment;)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mTempNavigationBarInsets:Landroidx/core/graphics/Insets;
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$700(Lmiuix/preference/PreferenceFragment;)Landroidx/core/graphics/Insets;

    move-result-object v0

    # invokes: Lmiuix/preference/PreferenceFragment;->applyWindowInsets(Landroid/view/View;Landroidx/core/graphics/Insets;)V
    invoke-static {p1, p3, v0}, Lmiuix/preference/PreferenceFragment;->access$900(Lmiuix/preference/PreferenceFragment;Landroid/view/View;Landroidx/core/graphics/Insets;)V

    .line 509
    :cond_47
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$2;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mTempNavigationBarInsets:Landroidx/core/graphics/Insets;
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment;->access$700(Lmiuix/preference/PreferenceFragment;)Landroidx/core/graphics/Insets;

    move-result-object p3

    # invokes: Lmiuix/preference/PreferenceFragment;->setRecyclerViewPadding(Landroidx/core/graphics/Insets;)V
    invoke-static {p1, p3}, Lmiuix/preference/PreferenceFragment;->access$1000(Lmiuix/preference/PreferenceFragment;Landroidx/core/graphics/Insets;)V

    return-object p2
.end method
