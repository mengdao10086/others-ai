.class Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "PopupAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/PopupAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field private mColorModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mEndBottom:I

.field private mEndHeight:I

.field private mEndKGB:F

.field private mEndLeft:I

.field private mEndRadius:F

.field private mEndRight:I

.field private mEndTop:I

.field private mEndWidth:I

.field private mRootView:Landroid/view/View;

.field private mStartBottom:I

.field private mStartHeight:I

.field private final mStartKGB:F

.field private mStartLeft:I

.field private mStartRadius:F

.field private mStartRight:I

.field private mStartTop:I

.field private mStartWidth:I

.field private mVGrav:F

.field final synthetic this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/PopupAnimHelper;Landroid/graphics/Rect;II)V
    .registers 6

    .line 259
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mColorModes:Ljava/util/ArrayList;

    .line 260
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndLeft:I

    .line 261
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndTop:I

    .line 262
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndRight:I

    .line 263
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndBottom:I

    .line 265
    invoke-direct {p0, p2, p3, p4}, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->getStartBounds(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p2

    .line 266
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iput p3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartLeft:I

    .line 267
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iput p3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartTop:I

    .line 268
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iput p3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartRight:I

    .line 269
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartBottom:I

    .line 271
    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndWidth:I

    .line 272
    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndHeight:I

    const p3, 0x3e4ccccd    # 0.2f

    .line 273
    iput p3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartKGB:F

    .line 274
    iget p4, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndWidth:I

    if-nez p4, :cond_4f

    const/4 p2, 0x0

    goto :goto_52

    :cond_4f
    int-to-float p2, p2

    int-to-float v0, p4

    div-float/2addr p2, v0

    :goto_52
    iput p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndKGB:F

    int-to-float p2, p4

    const p4, 0x3e19999a    # 0.15f

    mul-float/2addr p2, p4

    float-to-int p2, p2

    .line 275
    iput p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartWidth:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 276
    iput p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartHeight:I

    .line 278
    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mRootView:Landroid/view/View;

    .line 279
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/view/WindowManager$LayoutParams;

    if-eqz p2, :cond_7e

    .line 280
    iget-object p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager$LayoutParams;

    iput-object p2, p1, Lmiuix/popupwidget/widget/PopupAnimHelper;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_81

    :cond_7e
    const/4 p2, 0x0

    .line 283
    iput-object p2, p1, Lmiuix/popupwidget/widget/PopupAnimHelper;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 285
    :goto_81
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p2, p1

    .line 287
    iput p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartRadius:F

    const/high16 p2, 0x41800000    # 16.0f

    mul-float/2addr p1, p2

    .line 288
    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndRadius:F

    return-void
.end method

.method private changeWindowDimAmount(Landroid/view/View;F)V
    .registers 6

    if-eqz p1, :cond_32

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 413
    :cond_9
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    iget-object v1, v0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_10

    return-void

    .line 416
    :cond_10
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mWindowManagerFlags:I
    invoke-static {v0}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$1200(Lmiuix/popupwidget/widget/PopupAnimHelper;)I

    move-result v0

    or-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 417
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    iget-object v0, v0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    .line 420
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    iget-object v0, v0, Lmiuix/popupwidget/widget/PopupAnimHelper;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, p1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private getStartBounds(Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 11

    .line 305
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v2, v0

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 308
    div-int/lit8 v3, v2, 0x5

    .line 309
    invoke-static {p2, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    .line 310
    iput v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndWidth:I

    .line 311
    iput v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndHeight:I

    if-nez v0, :cond_1e

    const/4 v5, 0x0

    goto :goto_21

    :cond_1e
    int-to-float v5, v1

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 312
    :goto_21
    iput v5, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndKGB:F

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2d

    .line 315
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 316
    iget v5, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    sub-int/2addr v5, v0

    goto :goto_33

    .line 318
    :cond_2d
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    add-int/2addr v4, v0

    .line 319
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 322
    :goto_33
    invoke-static {p2, p3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    int-to-float p3, p2

    .line 323
    iput p3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mVGrav:F

    const/16 p3, 0x30

    if-ne p2, p3, :cond_47

    .line 325
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 326
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    sub-int/2addr p1, v1

    goto :goto_4d

    .line 328
    :cond_47
    iget p2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    add-int/2addr p2, v1

    .line 329
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 331
    :goto_4d
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v4, p2, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p3
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 6

    .line 402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_25

    const-string v0, "end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 403
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;
    invoke-static {p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 404
    iget v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndLeft:I

    iget v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndTop:I

    iget v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndRight:I

    iget v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    :cond_25
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 336
    const-string p1, "fraction"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_d0

    .line 338
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_12

    move p1, v0

    .line 342
    :cond_12
    iget v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartLeft:I

    int-to-float v2, v1

    iget v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndLeft:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 343
    iget v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartRight:I

    int-to-float v3, v2

    iget v4, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndRight:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    float-to-int v2, v3

    sub-int v3, v2, v1

    .line 345
    iget v4, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartKGB:F

    iget v5, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndKGB:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    int-to-float v3, v3

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 348
    iget v5, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mVGrav:F

    const/high16 v6, 0x42400000    # 48.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_41

    .line 349
    iget v5, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartTop:I

    add-int/2addr v4, v5

    goto :goto_48

    .line 352
    :cond_41
    iget v5, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartBottom:I

    sub-int v4, v5, v4

    move v9, v5

    move v5, v4

    move v4, v9

    .line 355
    :goto_48
    iget-object v6, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;
    invoke-static {v6}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v6, :cond_57

    return-void

    .line 360
    :cond_57
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_60

    .line 361
    invoke-virtual {v6, v1, v5, v2, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 363
    :cond_60
    iget v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndWidth:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 366
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;
    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 367
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;
    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 368
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;
    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 369
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;
    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 372
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lmiuix/smooth/SmoothFrameLayout2;

    if-eqz v1, :cond_bd

    iget v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndRadius:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_bd

    .line 373
    iget v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartRadius:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 374
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/smooth/SmoothFrameLayout2;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothFrameLayout2;->setCornerRadius(F)V

    .line 375
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 376
    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    if-eqz v1, :cond_bd

    .line 377
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    .line 382
    :cond_bd
    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_DIM:Lmiuix/animation/property/ValueProperty;
    invoke-static {}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$800()Lmiuix/animation/property/ValueProperty;

    move-result-object p1

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_d0

    .line 384
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    .line 385
    iget-object p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mRootView:Landroid/view/View;

    invoke-direct {p0, p2, p1}, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->changeWindowDimAmount(Landroid/view/View;F)V

    :cond_d0
    return-void
.end method

.method updateScaleBounds(Landroid/graphics/Rect;II)V
    .registers 4

    .line 292
    invoke-direct {p0, p1, p2, p3}, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->getStartBounds(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p2

    .line 293
    iget p3, p1, Landroid/graphics/Rect;->left:I

    iput p3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndLeft:I

    .line 294
    iget p3, p1, Landroid/graphics/Rect;->top:I

    iput p3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndTop:I

    .line 295
    iget p3, p1, Landroid/graphics/Rect;->right:I

    iput p3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndRight:I

    .line 296
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mEndBottom:I

    .line 298
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartLeft:I

    .line 299
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartTop:I

    .line 300
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartRight:I

    .line 301
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;->mStartBottom:I

    return-void
.end method
