.class Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "ClearableEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/ClearableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessHelper"
.end annotation


# instance fields
.field private final forView:Landroid/view/View;

.field private final mTempParentBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/ClearableEditText;Landroid/view/View;)V
    .registers 3

    .line 237
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 238
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 234
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    .line 239
    iput-object p2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    return-void
.end method

.method private getChildRect(Landroid/graphics/Rect;)V
    .registers 6

    .line 303
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 304
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 305
    :goto_1b
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-static {v1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 306
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4e

    .line 308
    :cond_39
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    :goto_4e
    return-void
.end method

.method private getDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 299
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/androidbasewidget/R$string;->clearable_edittext_clear_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isVirtualView(FF)Z
    .registers 7

    .line 313
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_b

    move p2, v0

    goto :goto_15

    :cond_b
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p2}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 314
    :goto_15
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-static {v1}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    .line 315
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2d

    move v0, v2

    :cond_2d
    return v0

    .line 317
    :cond_2e
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    iget-object v3, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr v1, p2

    int-to-float p2, v1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_44

    move v0, v2

    :cond_44
    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 4

    .line 244
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->isVirtualView(FF)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .registers 3

    .line 260
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    const/high16 p3, -0x80000000

    const/4 v0, 0x0

    if-ne p1, p3, :cond_6

    return v0

    :cond_6
    const/16 p1, 0x10

    if-eq p2, p1, :cond_b

    return v0

    .line 289
    :cond_b
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    # invokes: Lmiuix/androidbasewidget/widget/ClearableEditText;->onClearButtonClick()V
    invoke-static {p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$100(Lmiuix/androidbasewidget/widget/ClearableEditText;)V

    .line 290
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    if-eqz p1, :cond_28

    iget-object p2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->isTalkBackActive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 291
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    const p2, 0x8000

    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 267
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    .line 252
    invoke-super {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 253
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    # getter for: Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 254
    const-class v0, Lmiuix/androidbasewidget/widget/ClearableEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    :cond_14
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    const/4 p1, 0x1

    .line 272
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 273
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    .line 274
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 275
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->getChildRect(Landroid/graphics/Rect;)V

    .line 277
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 278
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    return-void
.end method
