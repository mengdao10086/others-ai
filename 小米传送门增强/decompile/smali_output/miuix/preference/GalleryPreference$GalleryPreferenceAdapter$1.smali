.class Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "GalleryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->onBindViewHolder(Lmiuix/preference/GalleryPreference$LayoutHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;


# direct methods
.method constructor <init>(Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;)V
    .registers 2

    .line 447
    iput-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    .line 450
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 451
    iget-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p1, p1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mIndicator:Lmiuix/miuixbasewidget/widget/PageIndicator;
    invoke-static {p1}, Lmiuix/preference/GalleryPreference;->access$500(Lmiuix/preference/GalleryPreference;)Lmiuix/miuixbasewidget/widget/PageIndicator;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p1, p1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mIndicator:Lmiuix/miuixbasewidget/widget/PageIndicator;
    invoke-static {p1}, Lmiuix/preference/GalleryPreference;->access$500(Lmiuix/preference/GalleryPreference;)Lmiuix/miuixbasewidget/widget/PageIndicator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_29

    .line 452
    const-class p1, Landroid/widget/SeekBar;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 453
    const-string p1, "\u200b"

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    .line 455
    :cond_29
    iget-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p1, p1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mContentDescription:Ljava/lang/String;
    invoke-static {p1}, Lmiuix/preference/GalleryPreference;->access$100(Lmiuix/preference/GalleryPreference;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 456
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 457
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/16 v0, 0x2000

    invoke-direct {p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 459
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    .line 465
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_8

    return p3

    :cond_8
    const/16 p1, 0x1000

    if-eq p2, p1, :cond_64

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_12

    const/4 p1, 0x0

    return p1

    .line 478
    :cond_12
    iget-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p1, p1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lmiuix/preference/GalleryPreference;->access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p1, p1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lmiuix/preference/GalleryPreference;->access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 479
    iget-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p1, p1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lmiuix/preference/GalleryPreference;->access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_63

    .line 480
    iget-object p2, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p2, p2, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;
    invoke-static {p2}, Lmiuix/preference/GalleryPreference;->access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    move-result p2

    sub-int/2addr p1, p3

    if-ge p2, p1, :cond_63

    .line 481
    iget-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p1, p1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lmiuix/preference/GalleryPreference;->access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget-object p2, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p2, p2, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;
    invoke-static {p2}, Lmiuix/preference/GalleryPreference;->access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2, p3}, Landroidx/viewpager2/widget/OriginalViewPager2;->setCurrentItem(IZ)V

    :cond_63
    return p3

    .line 471
    :cond_64
    iget-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p1, p1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lmiuix/preference/GalleryPreference;->access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_94

    iget-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p1, p1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lmiuix/preference/GalleryPreference;->access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    move-result p1

    if-lez p1, :cond_94

    .line 472
    iget-object p1, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p1, p1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lmiuix/preference/GalleryPreference;->access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget-object p2, p0, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter$1;->this$1:Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    iget-object p2, p2, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;->this$0:Lmiuix/preference/GalleryPreference;

    # getter for: Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;
    invoke-static {p2}, Lmiuix/preference/GalleryPreference;->access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/viewpager2/widget/OriginalViewPager2;->getCurrentItem()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2, p3}, Landroidx/viewpager2/widget/OriginalViewPager2;->setCurrentItem(IZ)V

    :cond_94
    return p3
.end method
