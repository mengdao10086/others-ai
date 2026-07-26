.class Lmiuix/internal/widget/AlertActionSheet$1;
.super Ljava/lang/Object;
.source "AlertActionSheet.java"

# interfaces
.implements Lmiuix/internal/widget/ActionSheet$ContentController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/AlertActionSheet;->setContentController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/widget/AlertActionSheet;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/AlertActionSheet;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calcContentPanelHeight(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILandroid/view/WindowInsets;)I
    .registers 6

    .line 0
    const/4 p1, -0x2

    return p1
.end method

.method public calcContentPanelWidth(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILandroid/view/WindowInsets;)I
    .registers 11

    const/4 p2, 0x0

    if-eqz p5, :cond_41

    .line 133
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p3, v0, :cond_41

    .line 134
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p3

    invoke-virtual {p5, p3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p3

    .line 135
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p5

    .line 136
    iget v0, p3, Landroid/graphics/Insets;->left:I

    iget v1, p3, Landroid/graphics/Insets;->right:I

    add-int/2addr v1, v0

    iget v2, p5, Landroid/graphics/Insets;->left:I

    iget v3, p5, Landroid/graphics/Insets;->right:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 137
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 138
    iget v2, p5, Landroid/graphics/Insets;->left:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2f

    move v2, v3

    goto :goto_30

    :cond_2f
    move v2, p2

    .line 139
    :goto_30
    iget p3, p3, Landroid/graphics/Insets;->right:I

    iget v4, p5, Landroid/graphics/Insets;->right:I

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 140
    iget p5, p5, Landroid/graphics/Insets;->right:I

    if-ne p3, p5, :cond_3d

    move p2, v3

    :cond_3d
    move p5, p3

    move p3, p2

    move p2, v1

    goto :goto_45

    :cond_41
    move p3, p2

    move p5, p3

    move v0, p5

    move v2, v0

    :goto_45
    sub-int p2, p4, p2

    int-to-float p2, p2

    .line 142
    invoke-static {p1, p2}, Lmiuix/core/util/MiuixUIUtils;->px2dp(Landroid/content/Context;F)I

    move-result p1

    const/16 p2, 0x168

    if-lez p1, :cond_8d

    if-gt p1, p2, :cond_8d

    if-eqz v2, :cond_67

    .line 145
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mIsFlipTinyScreen:Z
    invoke-static {p1}, Lmiuix/internal/widget/AlertActionSheet;->access$000(Lmiuix/internal/widget/AlertActionSheet;)Z

    move-result p1

    if-nez p1, :cond_67

    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mSmallMargin:I
    invoke-static {p1}, Lmiuix/internal/widget/AlertActionSheet;->access$100(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_6e

    :cond_67
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mSmallMargin:I
    invoke-static {p1}, Lmiuix/internal/widget/AlertActionSheet;->access$100(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p1

    add-int/2addr p1, v0

    :goto_6e
    if-eqz p3, :cond_83

    .line 146
    iget-object p2, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mIsFlipTinyScreen:Z
    invoke-static {p2}, Lmiuix/internal/widget/AlertActionSheet;->access$000(Lmiuix/internal/widget/AlertActionSheet;)Z

    move-result p2

    if-nez p2, :cond_83

    iget-object p2, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mSmallMargin:I
    invoke-static {p2}, Lmiuix/internal/widget/AlertActionSheet;->access$100(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p2

    invoke-static {p5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_8a

    :cond_83
    iget-object p2, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mSmallMargin:I
    invoke-static {p2}, Lmiuix/internal/widget/AlertActionSheet;->access$100(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p2

    :goto_89
    add-int/2addr p2, p5

    :goto_8a
    sub-int/2addr p4, p1

    sub-int/2addr p4, p2

    goto :goto_d1

    :cond_8d
    if-ge p2, p1, :cond_cb

    const/16 p2, 0x18a

    if-gt p1, p2, :cond_cb

    if-eqz v2, :cond_a8

    .line 149
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mIsFlipTinyScreen:Z
    invoke-static {p1}, Lmiuix/internal/widget/AlertActionSheet;->access$000(Lmiuix/internal/widget/AlertActionSheet;)Z

    move-result p1

    if-nez p1, :cond_a8

    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mNormalMargin:I
    invoke-static {p1}, Lmiuix/internal/widget/AlertActionSheet;->access$200(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_af

    :cond_a8
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mNormalMargin:I
    invoke-static {p1}, Lmiuix/internal/widget/AlertActionSheet;->access$200(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p1

    add-int/2addr p1, v0

    :goto_af
    if-eqz p3, :cond_c4

    .line 150
    iget-object p2, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mIsFlipTinyScreen:Z
    invoke-static {p2}, Lmiuix/internal/widget/AlertActionSheet;->access$000(Lmiuix/internal/widget/AlertActionSheet;)Z

    move-result p2

    if-nez p2, :cond_c4

    iget-object p2, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mNormalMargin:I
    invoke-static {p2}, Lmiuix/internal/widget/AlertActionSheet;->access$200(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p2

    invoke-static {p5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_8a

    :cond_c4
    iget-object p2, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mNormalMargin:I
    invoke-static {p2}, Lmiuix/internal/widget/AlertActionSheet;->access$200(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p2

    goto :goto_89

    .line 153
    :cond_cb
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mMaxFixedWidth:I
    invoke-static {p1}, Lmiuix/internal/widget/AlertActionSheet;->access$300(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p4

    :goto_d1
    return p4
.end method

.method public calcHorizontalMargin(Landroid/content/Context;Landroid/view/WindowInsets;)[I
    .registers 9

    .line 166
    sget-boolean v0, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz v0, :cond_11

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mSmallMargin:I
    invoke-static {p1}, Lmiuix/internal/widget/AlertActionSheet;->access$100(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p1

    goto :goto_17

    :cond_11
    iget-object p1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mNormalMargin:I
    invoke-static {p1}, Lmiuix/internal/widget/AlertActionSheet;->access$200(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result p1

    :goto_17
    if-eqz p2, :cond_7f

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_7f

    .line 172
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 173
    iget v1, v0, Landroid/graphics/Insets;->left:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 174
    iget v2, v0, Landroid/graphics/Insets;->right:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 176
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    .line 177
    iget v3, p2, Landroid/graphics/Insets;->left:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 178
    iget v3, p2, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 180
    iget v3, p2, Landroid/graphics/Insets;->left:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_4f

    move v3, v5

    goto :goto_50

    :cond_4f
    move v3, v4

    .line 181
    :goto_50
    iget p2, p2, Landroid/graphics/Insets;->right:I

    if-ne v2, p2, :cond_55

    move v4, v5

    :cond_55
    if-eqz v3, :cond_60

    .line 183
    iget-object p2, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mIsFlipTinyScreen:Z
    invoke-static {p2}, Lmiuix/internal/widget/AlertActionSheet;->access$000(Lmiuix/internal/widget/AlertActionSheet;)Z

    move-result p2

    if-eqz p2, :cond_60

    add-int/2addr v1, p1

    :cond_60
    if-eqz v4, :cond_6b

    .line 187
    iget-object p2, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mIsFlipTinyScreen:Z
    invoke-static {p2}, Lmiuix/internal/widget/AlertActionSheet;->access$000(Lmiuix/internal/widget/AlertActionSheet;)Z

    move-result p2

    if-eqz p2, :cond_6b

    add-int/2addr v2, p1

    :cond_6b
    if-nez v3, :cond_75

    .line 192
    iget p2, v0, Landroid/graphics/Insets;->left:I

    if-ne v1, p2, :cond_74

    add-int/2addr p2, p1

    move v1, p2

    goto :goto_75

    :cond_74
    move v1, p1

    :cond_75
    :goto_75
    if-nez v4, :cond_7d

    .line 195
    iget p2, v0, Landroid/graphics/Insets;->right:I

    if-ne v2, p2, :cond_7c

    add-int/2addr p1, p2

    :cond_7c
    move v2, p1

    :cond_7d
    move p1, v1

    goto :goto_80

    :cond_7f
    move v2, p1

    .line 199
    :goto_80
    filled-new-array {p1, v2}, [I

    move-result-object p1

    return-object p1
.end method

.method public calcVerticalMargin(Landroid/content/Context;Landroid/view/WindowInsets;)[I
    .registers 7

    .line 205
    sget-boolean v0, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz v0, :cond_11

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mSmallMargin:I
    invoke-static {v0}, Lmiuix/internal/widget/AlertActionSheet;->access$100(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result v0

    goto :goto_17

    :cond_11
    iget-object v0, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mNormalMargin:I
    invoke-static {v0}, Lmiuix/internal/widget/AlertActionSheet;->access$200(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result v0

    :goto_17
    if-nez p2, :cond_1e

    .line 210
    filled-new-array {v0, v0}, [I

    move-result-object p1

    return-object p1

    .line 213
    :cond_1e
    iget-object v1, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    iget-object v1, v1, Lmiuix/internal/widget/AlertActionSheet;->mActionController:Lmiuix/internal/widget/ActionSheetController;

    if-eqz v1, :cond_31

    iget-boolean v1, v1, Lmiuix/internal/widget/ActionSheetController;->mIsAssociatedActivityNavigationBarHidden:Z

    if-eqz v1, :cond_31

    .line 214
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_39

    .line 216
    :cond_31
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 218
    :goto_39
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    .line 219
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result p1

    .line 220
    iget v2, v1, Landroid/graphics/Insets;->top:I

    iget v3, p2, Landroid/graphics/Insets;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 221
    sget-boolean v3, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mFreeFormTabletCompatHeight:I
    invoke-static {v3}, Lmiuix/internal/widget/AlertActionSheet;->access$400(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result v3

    goto :goto_62

    :cond_5c
    iget-object v3, p0, Lmiuix/internal/widget/AlertActionSheet$1;->this$0:Lmiuix/internal/widget/AlertActionSheet;

    # getter for: Lmiuix/internal/widget/AlertActionSheet;->mFreeFormPhoneCompatHeight:I
    invoke-static {v3}, Lmiuix/internal/widget/AlertActionSheet;->access$500(Lmiuix/internal/widget/AlertActionSheet;)I

    move-result v3

    .line 222
    :goto_62
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    if-nez v1, :cond_69

    if-eqz p1, :cond_69

    goto :goto_6a

    :cond_69
    move v3, v1

    :goto_6a
    iget p1, p2, Landroid/graphics/Insets;->bottom:I

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v0, p1

    .line 224
    filled-new-array {v2, v0}, [I

    move-result-object p1

    return-object p1
.end method

.method public computeContentPosition(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/graphics/Point;
    .registers 10

    .line 114
    iget p4, p2, Landroid/graphics/Point;->x:I

    iget p5, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    .line 115
    new-instance p5, Landroid/graphics/Point;

    invoke-direct {p5}, Landroid/graphics/Point;-><init>()V

    .line 116
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 117
    iget v0, p2, Landroid/graphics/Point;->x:I

    sub-int v1, v0, p4

    iget v2, p3, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v3, :cond_20

    sub-int/2addr v0, v3

    sub-int p4, v0, v2

    .line 120
    :cond_20
    iput p4, p5, Landroid/graphics/Point;->x:I

    .line 121
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p1

    sub-int/2addr p2, p3

    iput p2, p5, Landroid/graphics/Point;->y:I

    return-object p5
.end method

.method public getArrowAnchor()Landroid/view/View;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArrowMode()Lmiuix/internal/widget/ActionSheet$ArrowMode;
    .registers 2

    .line 101
    sget-object v0, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_MODE_NONE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    return-object v0
.end method
