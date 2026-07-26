.class public Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;
.super Ljava/lang/Object;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewBounds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$ArrowRotationProperty;,
        Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$CornerProperty;
    }
.end annotation


# static fields
.field private static final sCloseConfig:Lmiuix/animation/base/AnimConfig;

.field private static final sOpenConfig:Lmiuix/animation/base/AnimConfig;


# instance fields
.field private mArrowCloseConfig:Lmiuix/animation/base/AnimConfig;

.field private mArrowOpenConfig:Lmiuix/animation/base/AnimConfig;

.field private mArrowRotation:F

.field private final mArrowRotationProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;",
            ">;"
        }
    .end annotation
.end field

.field private final mCornerProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;",
            ">;"
        }
    .end annotation
.end field

.field private mCornerRadius:F

.field private mHeaderArrowView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureWidth:I

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 902
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sput-object v0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sOpenConfig:Lmiuix/animation/base/AnimConfig;

    .line 903
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_1a

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sCloseConfig:Lmiuix/animation/base/AnimConfig;

    return-void

    :array_1a
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;)V
    .registers 6

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 897
    iput v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mMeasureWidth:I

    const/4 v0, 0x0

    .line 898
    iput v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerRadius:F

    .line 899
    iput v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotation:F

    .line 900
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_44

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowOpenConfig:Lmiuix/animation/base/AnimConfig;

    .line 901
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_4c

    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowCloseConfig:Lmiuix/animation/base/AnimConfig;

    .line 907
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mView:Ljava/lang/ref/WeakReference;

    .line 908
    new-instance p1, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$ArrowRotationProperty;

    invoke-direct {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$ArrowRotationProperty;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotationProperty:Lmiuix/animation/property/FloatProperty;

    .line 909
    new-instance p1, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$CornerProperty;

    invoke-direct {p1}, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds$CornerProperty;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerProperty:Lmiuix/animation/property/FloatProperty;

    return-void

    nop

    :array_44
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_4c
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method static synthetic access$2500(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/property/FloatProperty;
    .registers 1

    .line 892
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerProperty:Lmiuix/animation/property/FloatProperty;

    return-object p0
.end method

.method static synthetic access$2600()Lmiuix/animation/base/AnimConfig;
    .registers 1

    .line 892
    sget-object v0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sCloseConfig:Lmiuix/animation/base/AnimConfig;

    return-object v0
.end method

.method static synthetic access$2700(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/property/FloatProperty;
    .registers 1

    .line 892
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotationProperty:Lmiuix/animation/property/FloatProperty;

    return-object p0
.end method

.method static synthetic access$2800(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/base/AnimConfig;
    .registers 1

    .line 892
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowCloseConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method

.method static synthetic access$3800()Lmiuix/animation/base/AnimConfig;
    .registers 1

    .line 892
    sget-object v0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->sOpenConfig:Lmiuix/animation/base/AnimConfig;

    return-object v0
.end method

.method static synthetic access$3900(Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;)Lmiuix/animation/base/AnimConfig;
    .registers 1

    .line 892
    iget-object p0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowOpenConfig:Lmiuix/animation/base/AnimConfig;

    return-object p0
.end method


# virtual methods
.method public getArrowRotation()F
    .registers 2

    .line 952
    iget v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotation:F

    return v0
.end method

.method public getCornerRadius()F
    .registers 2

    .line 932
    iget v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerRadius:F

    return v0
.end method

.method public setArrowRotation(F)V
    .registers 5

    .line 936
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mArrowRotation:F

    .line 937
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mHeaderArrowView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_44

    .line 938
    :cond_c
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    return-void

    .line 941
    :cond_15
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v1, Lmiuix/appcompat/R$id;->tag_secondary_popup_menu_item_head:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 942
    sget v1, Lmiuix/appcompat/R$id;->arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 943
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mHeaderArrowView:Ljava/lang/ref/WeakReference;

    .line 944
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 945
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 947
    :cond_44
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mHeaderArrowView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 948
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setCornerRadius(F)V
    .registers 6

    .line 917
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerRadius:F

    .line 918
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 919
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 920
    instance-of v2, v0, Lmiuix/smooth/SmoothFrameLayout2;

    if-eqz v2, :cond_1a

    .line 921
    move-object v2, v0

    check-cast v2, Lmiuix/smooth/SmoothFrameLayout2;

    .line 922
    iget v3, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerRadius:F

    invoke-virtual {v2, v3}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    .line 924
    :cond_1a
    instance-of v2, v1, Lmiuix/smooth/SmoothContainerDrawable2;

    if-eqz v2, :cond_25

    .line 925
    check-cast v1, Lmiuix/smooth/SmoothContainerDrawable2;

    iget v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mCornerRadius:F

    invoke-virtual {v1, v2}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    .line 927
    :cond_25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;

    .line 928
    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->setRadius(F)V

    return-void
.end method

.method public setMeasureWidth(I)V
    .registers 2

    .line 913
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mMeasureWidth:I

    return-void
.end method

.method public updateLeftTopRightBottom(IIIIIII)V
    .registers 12

    .line 957
    iget-object p4, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 958
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 960
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 961
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const p2, 0x102000a

    .line 962
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p4, 0x0

    .line 963
    :goto_1c
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p4, v0, :cond_54

    .line 964
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 965
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 966
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lmiuix/appcompat/R$id;->tag_secondary_popup_menu_item_head:I

    if-eq v2, v3, :cond_3d

    .line 967
    iget v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ViewBounds;->mMeasureWidth:I

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->width:I

    goto :goto_51

    :cond_3d
    sub-int v2, p3, p1

    .line 969
    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 970
    iput p5, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 971
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 972
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 973
    invoke-virtual {v0, v1, p6, v2, p7}, Landroid/view/View;->setPadding(IIII)V

    .line 974
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :goto_51
    add-int/lit8 p4, p4, 0x1

    goto :goto_1c

    :cond_54
    return-void
.end method
