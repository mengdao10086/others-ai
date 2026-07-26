.class public Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;
.super Landroid/widget/LinearLayout;
.source "ArrowPopupContentWrapper.java"


# instance fields
.field density:F

.field private mArrowHorizonOffset:F

.field private mArrowMode:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mIsRtl:Z

.field private mMask1:Landroid/graphics/Bitmap;

.field private mMask2:Landroid/graphics/Bitmap;

.field private mMask3:Landroid/graphics/Bitmap;

.field private mMask4:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRtlMode:I

.field private middle:Landroid/graphics/PointF;

.field private p0:Landroid/graphics/PointF;

.field private p1:Landroid/graphics/PointF;

.field private p2:Landroid/graphics/PointF;

.field private p3:Landroid/graphics/PointF;

.field private p4:Landroid/graphics/PointF;

.field private p5:Landroid/graphics/PointF;

.field private p6:Landroid/graphics/PointF;

.field private p7:Landroid/graphics/PointF;

.field private pA:Landroid/graphics/PointF;

.field private pB:Landroid/graphics/PointF;

.field private pC:Landroid/graphics/PointF;

.field private pD:Landroid/graphics/PointF;

.field private pE:Landroid/graphics/PointF;

.field private pF:Landroid/graphics/PointF;

.field private pG:Landroid/graphics/PointF;

.field private pH:Landroid/graphics/PointF;

.field private pI:Landroid/graphics/PointF;

.field private pJ:Landroid/graphics/PointF;

.field private pK:Landroid/graphics/PointF;

.field private pL:Landroid/graphics/PointF;

.field private pM:Landroid/graphics/PointF;

.field paddingBottom:F

.field paddingEnd:F

.field paddingStart:F

.field paddingTop:F

.field radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowMode:I

    .line 68
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 78
    iput-boolean p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mIsRtl:Z

    const/4 p1, 0x2

    .line 80
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mRtlMode:I

    .line 104
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 105
    iget-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 107
    sget p2, Lmiuix/popupwidget/R$drawable;->miuix_appcompat_popup_mask_1:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask1:Landroid/graphics/Bitmap;

    .line 108
    sget p2, Lmiuix/popupwidget/R$drawable;->miuix_appcompat_popup_mask_2:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    .line 109
    sget p2, Lmiuix/popupwidget/R$drawable;->miuix_appcompat_popup_mask_3:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    .line 110
    sget p2, Lmiuix/popupwidget/R$drawable;->miuix_appcompat_popup_mask_4:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    .line 111
    invoke-direct {p0}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->init()V

    return-void
.end method

.method private drawBottomArrow(FFFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 33

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    .line 438
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->middle:Landroid/graphics/PointF;

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, p1, v13

    invoke-virtual {v12, v13, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 439
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->middle:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    const/high16 v15, 0x41600000    # 14.0f

    mul-float v15, v15, p3

    add-float/2addr v14, v15

    iget v15, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowHorizonOffset:F

    add-float/2addr v14, v15

    iget v13, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 440
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v14, 0x40131f8a    # 2.2988f

    mul-float v14, v14, p3

    sub-float/2addr v13, v14

    invoke-virtual {v12, v13, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 441
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v14, 0x40908a72    # 4.5169f

    mul-float v14, v14, p3

    sub-float/2addr v13, v14

    const v14, 0x3f60902e    # 0.8772f

    mul-float v14, v14, p3

    add-float/2addr v14, v4

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 442
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v15, 0x40c75810

    mul-float v15, v15, p3

    sub-float/2addr v13, v15

    const v15, 0x401dab9f    # 2.4636f

    mul-float v15, v15, p3

    add-float/2addr v15, v4

    invoke-virtual {v12, v13, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 443
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x414c10cb

    mul-float v16, v16, p3

    sub-float v13, v13, v16

    const v16, 0x41081de7

    mul-float v16, v16, p3

    add-float v11, v4, v16

    invoke-virtual {v12, v13, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 444
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x415769ad

    mul-float v16, v16, p3

    sub-float v13, v13, v16

    const v16, 0x4112a090

    mul-float v16, v16, p3

    add-float v1, v4, v16

    invoke-virtual {v12, v13, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 445
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x41689653

    mul-float v16, v16, p3

    sub-float v13, v13, v16

    invoke-virtual {v12, v13, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 446
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v13, 0x4173ef35

    mul-float v13, v13, p3

    sub-float/2addr v12, v13

    invoke-virtual {v1, v12, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 447
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v12, 0x41ae29fc

    mul-float v12, v12, p3

    sub-float/2addr v11, v12

    invoke-virtual {v1, v11, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 448
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v12, 0x41bbdd64

    mul-float v12, v12, p3

    sub-float/2addr v11, v12

    invoke-virtual {v1, v11, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 449
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v12, 0x41cd9c0f

    mul-float v12, v12, p3

    sub-float/2addr v11, v12

    invoke-virtual {v1, v11, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 450
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x41e00000    # 28.0f

    mul-float v12, v12, p3

    sub-float/2addr v11, v12

    invoke-virtual {v1, v11, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 451
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1c1

    .line 452
    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 453
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    sub-float v11, v2, p2

    invoke-virtual {v1, v11, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v11, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 455
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v6, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 456
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v6, v8, Landroid/graphics/PointF;->x:F

    iget v7, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 457
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 458
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget v12, v1, Landroid/graphics/PointF;->x:F

    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move/from16 v16, v2

    move/from16 v17, v1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 459
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 460
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget v12, v1, Landroid/graphics/PointF;->x:F

    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move/from16 v16, v2

    move/from16 v17, v1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 461
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 462
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget v12, v1, Landroid/graphics/PointF;->x:F

    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move/from16 v16, v2

    move/from16 v17, v1

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 463
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v2, v9, Landroid/graphics/PointF;->x:F

    iget v6, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 464
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v2, v10, Landroid/graphics/PointF;->x:F

    iget v6, v10, Landroid/graphics/PointF;->y:F

    move/from16 v7, p4

    invoke-virtual {v1, v7, v4, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 465
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v2, p14

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 466
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v4, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v7, v3, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 467
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_1c1
    return-void
.end method

.method private drawBottomLeftArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    .line 472
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    add-float v11, v1, p1

    const/high16 v12, 0x41e00000    # 28.0f

    mul-float v12, v12, p2

    add-float/2addr v11, v12

    invoke-virtual {v10, v11, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 473
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v13, 0x40131f8a    # 2.2988f

    mul-float v13, v13, p2

    sub-float/2addr v11, v13

    invoke-virtual {v10, v11, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 474
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v13, 0x40908a72    # 4.5169f

    mul-float v13, v13, p2

    sub-float/2addr v11, v13

    const v13, 0x3f60902e    # 0.8772f

    mul-float v13, v13, p2

    add-float/2addr v13, v4

    invoke-virtual {v10, v11, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 475
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v14, 0x40c75810

    mul-float v14, v14, p2

    sub-float/2addr v11, v14

    const v14, 0x401dab9f    # 2.4636f

    mul-float v14, v14, p2

    add-float/2addr v14, v4

    invoke-virtual {v10, v11, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 476
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v15, 0x414c10cb

    mul-float v15, v15, p2

    sub-float/2addr v11, v15

    const v15, 0x41081de7

    mul-float v15, v15, p2

    add-float/2addr v15, v4

    invoke-virtual {v10, v11, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 477
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v16, 0x415769ad

    mul-float v16, v16, p2

    sub-float v11, v11, v16

    const v16, 0x4112a090

    mul-float v16, v16, p2

    add-float v9, v4, v16

    invoke-virtual {v10, v11, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 478
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v16, 0x41689653

    mul-float v16, v16, p2

    sub-float v11, v11, v16

    invoke-virtual {v10, v11, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 479
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v11, 0x4173ef35

    mul-float v11, v11, p2

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 480
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v11, 0x41ae29fc

    mul-float v11, v11, p2

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 481
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v11, 0x41bbdd64

    mul-float v11, v11, p2

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 482
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v11, 0x41cd9c0f

    mul-float v11, v11, p2

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 483
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v12

    invoke-virtual {v9, v10, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 484
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    if-eqz v9, :cond_18e

    .line 485
    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 486
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    sub-float v10, v2, p1

    invoke-virtual {v9, v10, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 487
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v2, v3, v10, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 488
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v9, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 489
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v7, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v2, v4, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 490
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 491
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget v11, v2, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v14, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 492
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 493
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget v11, v2, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v14, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 494
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 495
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget v11, v2, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v14, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 496
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    sub-float v6, v4, p1

    invoke-virtual {v2, v1, v4, v1, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 497
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v4, p11

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 498
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v4, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 499
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_18e
    return-void
.end method

.method private drawBottomRightArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    .line 406
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    sub-float v11, v2, p1

    invoke-virtual {v10, v11, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 407
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v13, 0x40131f8a    # 2.2988f

    mul-float v13, v13, p2

    sub-float/2addr v12, v13

    invoke-virtual {v10, v12, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 408
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v13, 0x40908a72    # 4.5169f

    mul-float v13, v13, p2

    sub-float/2addr v12, v13

    const v13, 0x3f60902e    # 0.8772f

    mul-float v13, v13, p2

    add-float/2addr v13, v4

    invoke-virtual {v10, v12, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 409
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v14, 0x40c75810

    mul-float v14, v14, p2

    sub-float/2addr v12, v14

    const v14, 0x401dab9f    # 2.4636f

    mul-float v14, v14, p2

    add-float/2addr v14, v4

    invoke-virtual {v10, v12, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 410
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v15, 0x414c10cb

    mul-float v15, v15, p2

    sub-float/2addr v12, v15

    const v15, 0x41081de7

    mul-float v15, v15, p2

    add-float/2addr v15, v4

    invoke-virtual {v10, v12, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 411
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v16, 0x415769ad

    mul-float v16, v16, p2

    sub-float v12, v12, v16

    const v16, 0x4112a090

    mul-float v16, v16, p2

    add-float v9, v4, v16

    invoke-virtual {v10, v12, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 412
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v16, 0x41689653

    mul-float v16, v16, p2

    sub-float v12, v12, v16

    invoke-virtual {v10, v12, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 413
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v12, 0x4173ef35

    mul-float v12, v12, p2

    sub-float/2addr v10, v12

    invoke-virtual {v9, v10, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 414
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v12, 0x41ae29fc

    mul-float v12, v12, p2

    sub-float/2addr v10, v12

    invoke-virtual {v9, v10, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 415
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v12, 0x41bbdd64

    mul-float v12, v12, p2

    sub-float/2addr v10, v12

    invoke-virtual {v9, v10, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 416
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v12, 0x41cd9c0f

    mul-float v12, v12, p2

    sub-float/2addr v10, v12

    invoke-virtual {v9, v10, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 417
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x41e00000    # 28.0f

    mul-float v12, v12, p2

    sub-float/2addr v10, v12

    invoke-virtual {v9, v10, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 418
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    if-eqz v9, :cond_197

    .line 419
    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 420
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v9, v11, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 421
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v2, v3, v10, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 422
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v9, p9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float v10, v4, p1

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 423
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v2, v4, v10, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 424
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget v12, v2, Landroid/graphics/PointF;->x:F

    iget v13, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget v14, v2, Landroid/graphics/PointF;->x:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move/from16 v16, v6

    move/from16 v17, v2

    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 425
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v9, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 426
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget v11, v2, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v14, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget v15, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move/from16 v16, v2

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 427
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v9, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 428
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget v11, v2, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v14, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget v15, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move/from16 v16, v2

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 429
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v6, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 430
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v6, v8, Landroid/graphics/PointF;->x:F

    iget v7, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v4, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 431
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v4, p12

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v4, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 433
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_197
    return-void
.end method

.method private drawLeftArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 33

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    .line 354
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    sub-float v13, v4, v3

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v3

    invoke-virtual {v12, v1, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 355
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    iget v13, v13, Landroid/graphics/PointF;->y:F

    const/high16 v15, 0x41000000    # 8.0f

    mul-float v15, v15, p2

    add-float/2addr v13, v15

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 356
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x40e43e42

    mul-float v16, v16, p2

    sub-float v14, v14, v16

    iget v13, v13, Landroid/graphics/PointF;->y:F

    const v16, 0x3fe2c3ca    # 1.7716f

    mul-float v16, v16, p2

    add-float v13, v13, v16

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 357
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    const v17, 0x4104a090

    mul-float v17, v17, p2

    sub-float v14, v14, v17

    iget v13, v13, Landroid/graphics/PointF;->y:F

    const v18, 0x3f42e48f    # 0.7613f

    mul-float v18, v18, p2

    add-float v13, v13, v18

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 358
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    sub-float v14, v14, v17

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float v13, v13, v18

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 359
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    const v17, 0x40e43bcd    # 7.1323f

    mul-float v17, v17, p2

    sub-float v14, v14, v17

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float v13, v13, v16

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 360
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v15

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 361
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    if-eqz v12, :cond_128

    .line 362
    iget v13, v5, Landroid/graphics/PointF;->x:F

    iget v14, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 363
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    sub-float v13, v2, p1

    invoke-virtual {v12, v13, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 364
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v2, v3, v13, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 365
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v12, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 366
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v7, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v2, v4, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 367
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v6, v9, Landroid/graphics/PointF;->x:F

    iget v7, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 368
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v6, v10, Landroid/graphics/PointF;->x:F

    iget v7, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v4, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 369
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 370
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 371
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v14, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    iget v15, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move/from16 v16, v2

    move/from16 v17, v6

    move/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 372
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 373
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v6, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 374
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v4, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 375
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_128
    return-void
.end method

.method private drawRightArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 35

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    .line 380
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    sub-float v13, v4, v3

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v3

    invoke-virtual {v12, v2, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 381
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    iget v13, v13, Landroid/graphics/PointF;->y:F

    const/high16 v15, 0x41000000    # 8.0f

    mul-float v15, v15, p2

    sub-float/2addr v13, v15

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 382
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x40e43bcd    # 7.1323f

    mul-float v16, v16, p2

    add-float v14, v14, v16

    iget v13, v13, Landroid/graphics/PointF;->y:F

    const v16, 0x3fe2c3ca    # 1.7716f

    mul-float v16, v16, p2

    sub-float v13, v13, v16

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 383
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    const v17, 0x4104a090

    mul-float v17, v17, p2

    add-float v14, v14, v17

    iget v13, v13, Landroid/graphics/PointF;->y:F

    const v18, 0x3f42e48f    # 0.7613f

    mul-float v18, v18, p2

    sub-float v13, v13, v18

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 384
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    add-float v14, v14, v17

    iget v13, v13, Landroid/graphics/PointF;->y:F

    add-float v13, v13, v18

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 385
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    const v17, 0x40e43e42

    mul-float v17, v17, p2

    add-float v14, v14, v17

    iget v13, v13, Landroid/graphics/PointF;->y:F

    add-float v13, v13, v16

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 386
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v14, v13, Landroid/graphics/PointF;->x:F

    iget v13, v13, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v15

    invoke-virtual {v12, v14, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 387
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    if-eqz v12, :cond_130

    .line 388
    iget v13, v5, Landroid/graphics/PointF;->x:F

    iget v14, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 389
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    sub-float v13, v2, p1

    invoke-virtual {v12, v13, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 390
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v13, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v2, v3, v13, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 391
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 392
    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v13, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    iget-object v14, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v6, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget v15, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move/from16 v16, v6

    move/from16 v17, v13

    move/from16 v18, v12

    move/from16 v19, v5

    move/from16 v20, v3

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 394
    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 395
    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v5, v7, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 396
    iget-object v3, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v5, v8, Landroid/graphics/PointF;->x:F

    iget v6, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 397
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v3, v9, Landroid/graphics/PointF;->x:F

    iget v5, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 398
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v3, v10, Landroid/graphics/PointF;->x:F

    iget v5, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 399
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v3, v11, Landroid/graphics/PointF;->x:F

    iget v4, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 400
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v3, p7

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move/from16 v5, p5

    invoke-virtual {v2, v1, v5, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 401
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_130
    return-void
.end method

.method private drawTopArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 35

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    .line 287
    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->middle:Landroid/graphics/PointF;

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, p1, v14

    invoke-virtual {v13, v14, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 288
    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget-object v14, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->middle:Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->x:F

    const/high16 v16, 0x41600000    # 14.0f

    mul-float v16, v16, p2

    sub-float v15, v15, v16

    iget v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowHorizonOffset:F

    add-float/2addr v15, v11

    iget v11, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v15, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 289
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v14, 0x40131f8a    # 2.2988f

    mul-float v14, v14, p2

    add-float/2addr v13, v14

    invoke-virtual {v11, v13, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 290
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v14, 0x40908a72    # 4.5169f

    mul-float v14, v14, p2

    add-float/2addr v13, v14

    const v14, 0x3f60902e    # 0.8772f

    mul-float v14, v14, p2

    sub-float v14, v3, v14

    invoke-virtual {v11, v13, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 291
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v15, 0x40c75810

    mul-float v15, v15, p2

    add-float/2addr v13, v15

    const v15, 0x401dab9f    # 2.4636f

    mul-float v15, v15, p2

    sub-float v15, v3, v15

    invoke-virtual {v11, v13, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 292
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x414c10cb

    mul-float v16, v16, p2

    add-float v13, v13, v16

    const v16, 0x41081de7

    mul-float v16, v16, p2

    sub-float v1, v3, v16

    invoke-virtual {v11, v13, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 293
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x415769ad

    mul-float v16, v16, p2

    add-float v13, v13, v16

    const v16, 0x4112a090

    mul-float v16, v16, p2

    sub-float v10, v3, v16

    invoke-virtual {v11, v13, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 294
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x41689653

    mul-float v16, v16, p2

    add-float v13, v13, v16

    invoke-virtual {v11, v13, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 295
    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v13, 0x4173ef35

    mul-float v13, v13, p2

    add-float/2addr v11, v13

    invoke-virtual {v10, v11, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 296
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v11, 0x41ae29fc

    mul-float v11, v11, p2

    add-float/2addr v10, v11

    invoke-virtual {v1, v10, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 297
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v11, 0x41bbdd64

    mul-float v11, v11, p2

    add-float/2addr v10, v11

    invoke-virtual {v1, v10, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 298
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v11, 0x41cd9c0f

    mul-float v11, v11, p2

    add-float/2addr v10, v11

    invoke-virtual {v1, v10, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 299
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pM:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const/high16 v11, 0x41e00000    # 28.0f

    mul-float v11, v11, p2

    add-float/2addr v10, v11

    invoke-virtual {v1, v10, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 300
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1d8

    .line 301
    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 302
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 303
    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget v10, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v11, v11, Landroid/graphics/PointF;->y:F

    move/from16 v16, v10

    move/from16 v17, v1

    move/from16 v18, v5

    move/from16 v19, v11

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 304
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v10, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 305
    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    move/from16 v16, v5

    move/from16 v17, v1

    move/from16 v18, v11

    move/from16 v19, v10

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 306
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v10, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 307
    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pM:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    move/from16 v16, v5

    move/from16 v17, v1

    move/from16 v18, v11

    move/from16 v19, v10

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 308
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v5, v12, Landroid/graphics/PointF;->x:F

    iget v10, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 309
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 310
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v5, v7, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v5, v8, Landroid/graphics/PointF;->x:F

    iget v6, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 312
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v2, v9, Landroid/graphics/PointF;->x:F

    iget v5, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 313
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v2, p12

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move/from16 v6, p3

    invoke-virtual {v1, v6, v4, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 314
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v2, p13

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 315
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v2, p7

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v3, v4, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 316
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_1d8
    return-void
.end method

.method private drawTopLeftArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 34

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    .line 321
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    add-float v13, v1, p1

    invoke-virtual {v12, v13, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 322
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v14, 0x40131f8a    # 2.2988f

    mul-float v14, v14, p2

    add-float/2addr v13, v14

    invoke-virtual {v12, v13, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 323
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v14, 0x40908a72    # 4.5169f

    mul-float v14, v14, p2

    add-float/2addr v13, v14

    const v14, 0x3f60902e    # 0.8772f

    mul-float v14, v14, p2

    sub-float v14, v3, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 324
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v15, 0x40c75810

    mul-float v15, v15, p2

    add-float/2addr v13, v15

    const v15, 0x401dab9f    # 2.4636f

    mul-float v15, v15, p2

    sub-float v15, v3, v15

    invoke-virtual {v12, v13, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 325
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x414c10cb

    mul-float v16, v16, p2

    add-float v13, v13, v16

    const v16, 0x41081de7

    mul-float v16, v16, p2

    sub-float v9, v3, v16

    invoke-virtual {v12, v13, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 326
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x415769ad

    mul-float v16, v16, p2

    add-float v13, v13, v16

    const v16, 0x4112a090

    mul-float v16, v16, p2

    sub-float v8, v3, v16

    invoke-virtual {v12, v13, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 327
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const v16, 0x41689653

    mul-float v16, v16, p2

    add-float v13, v13, v16

    invoke-virtual {v12, v13, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 328
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v13, 0x4173ef35

    mul-float v13, v13, p2

    add-float/2addr v12, v13

    invoke-virtual {v8, v12, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 329
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const v12, 0x41ae29fc

    mul-float v12, v12, p2

    add-float/2addr v9, v12

    invoke-virtual {v8, v9, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 330
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const v12, 0x41bbdd64

    mul-float v12, v12, p2

    add-float/2addr v9, v12

    invoke-virtual {v8, v9, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 331
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const v12, 0x41cd9c0f

    mul-float v12, v12, p2

    add-float/2addr v9, v12

    invoke-virtual {v8, v9, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 332
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pM:Landroid/graphics/PointF;

    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x41e00000    # 28.0f

    mul-float v12, v12, p2

    add-float/2addr v9, v12

    invoke-virtual {v8, v9, v3}, Landroid/graphics/PointF;->set(FF)V

    add-float v8, v3, p1

    .line 333
    invoke-virtual {v10, v1, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 334
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    if-eqz v8, :cond_1b8

    .line 335
    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v12, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 336
    iget-object v13, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget v14, v8, Landroid/graphics/PointF;->x:F

    iget v15, v8, Landroid/graphics/PointF;->y:F

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget v10, v12, Landroid/graphics/PointF;->x:F

    iget v12, v12, Landroid/graphics/PointF;->y:F

    move/from16 v16, v9

    move/from16 v17, v8

    move/from16 v18, v10

    move/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 337
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 338
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/PointF;->x:F

    iget v14, v8, Landroid/graphics/PointF;->y:F

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget v15, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move/from16 v16, v8

    move/from16 v17, v10

    move/from16 v18, v9

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 339
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 340
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/PointF;->x:F

    iget v14, v8, Landroid/graphics/PointF;->y:F

    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget v15, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pM:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    move/from16 v16, v8

    move/from16 v17, v10

    move/from16 v18, v9

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 341
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v9, v11, Landroid/graphics/PointF;->x:F

    iget v10, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 342
    iget-object v8, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v2, v3, v9, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 343
    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 344
    iget-object v5, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v6, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v2, v4, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 345
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v5, p10

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 346
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v5, p11

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v4, v6, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 347
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v4, p12

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 348
    iget-object v2, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v4, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 349
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_1b8
    return-void
.end method

.method private drawTopRightArrow(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 255
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    sub-float v12, v2, v12

    const/high16 v13, 0x41e00000    # 28.0f

    mul-float v13, v13, p1

    sub-float/2addr v12, v13

    invoke-virtual {v11, v12, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 256
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v14, 0x40131f8a    # 2.2988f

    mul-float v14, v14, p1

    add-float/2addr v12, v14

    invoke-virtual {v11, v12, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 257
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v14, 0x40908a72    # 4.5169f

    mul-float v14, v14, p1

    add-float/2addr v12, v14

    const v14, 0x3f60902e    # 0.8772f

    mul-float v14, v14, p1

    sub-float v14, v3, v14

    invoke-virtual {v11, v12, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 258
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v15, 0x40c75810

    mul-float v15, v15, p1

    add-float/2addr v12, v15

    const v15, 0x401dab9f    # 2.4636f

    mul-float v15, v15, p1

    sub-float v15, v3, v15

    invoke-virtual {v11, v12, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 259
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v16, 0x414c10cb

    mul-float v16, v16, p1

    add-float v12, v12, v16

    const v16, 0x41081de7

    mul-float v16, v16, p1

    sub-float v10, v3, v16

    invoke-virtual {v11, v12, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 260
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v16, 0x415769ad

    mul-float v16, v16, p1

    add-float v12, v12, v16

    const v16, 0x4112a090

    mul-float v16, v16, p1

    sub-float v1, v3, v16

    invoke-virtual {v11, v12, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 261
    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    const v16, 0x41689653

    mul-float v16, v16, p1

    add-float v12, v12, v16

    invoke-virtual {v11, v12, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 262
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget-object v11, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const v12, 0x4173ef35

    mul-float v12, v12, p1

    add-float/2addr v11, v12

    invoke-virtual {v1, v11, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 263
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v11, 0x41ae29fc

    mul-float v11, v11, p1

    add-float/2addr v10, v11

    invoke-virtual {v1, v10, v15}, Landroid/graphics/PointF;->set(FF)V

    .line 264
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v11, 0x41bbdd64

    mul-float v11, v11, p1

    add-float/2addr v10, v11

    invoke-virtual {v1, v10, v14}, Landroid/graphics/PointF;->set(FF)V

    .line 265
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const v11, 0x41cd9c0f

    mul-float v11, v11, p1

    add-float/2addr v10, v11

    invoke-virtual {v1, v10, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 266
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pM:Landroid/graphics/PointF;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v13

    invoke-virtual {v1, v10, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 267
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1ad

    .line 268
    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 269
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 270
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    iget v15, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    move/from16 v16, v1

    move/from16 v17, v11

    move/from16 v18, v10

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 271
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    iget v15, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    move/from16 v16, v1

    move/from16 v17, v11

    move/from16 v18, v10

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 273
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    iget-object v12, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    iget v15, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pM:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    move/from16 v16, v1

    move/from16 v17, v11

    move/from16 v18, v10

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 275
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v10, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    add-float/2addr v10, v3

    invoke-virtual {v1, v2, v3, v2, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 276
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v10, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 277
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v6, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v4, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 278
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v2, v8, Landroid/graphics/PointF;->x:F

    iget v6, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 279
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v2, v9, Landroid/graphics/PointF;->x:F

    iget v6, v9, Landroid/graphics/PointF;->y:F

    move/from16 v7, p2

    invoke-virtual {v1, v7, v4, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 280
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    move-object/from16 v2, p11

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 281
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v4, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v7, v3, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 282
    iget-object v1, v0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :cond_1ad
    return-void
.end method

.method private init()V
    .registers 4

    .line 121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 125
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    .line 130
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p0:Landroid/graphics/PointF;

    .line 131
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p1:Landroid/graphics/PointF;

    .line 132
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p2:Landroid/graphics/PointF;

    .line 133
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p3:Landroid/graphics/PointF;

    .line 134
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p4:Landroid/graphics/PointF;

    .line 135
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p5:Landroid/graphics/PointF;

    .line 136
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p6:Landroid/graphics/PointF;

    .line 137
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p7:Landroid/graphics/PointF;

    .line 138
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pA:Landroid/graphics/PointF;

    .line 139
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pB:Landroid/graphics/PointF;

    .line 140
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pC:Landroid/graphics/PointF;

    .line 141
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pD:Landroid/graphics/PointF;

    .line 142
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pE:Landroid/graphics/PointF;

    .line 143
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pF:Landroid/graphics/PointF;

    .line 144
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pG:Landroid/graphics/PointF;

    .line 145
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pH:Landroid/graphics/PointF;

    .line 146
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pI:Landroid/graphics/PointF;

    .line 147
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pJ:Landroid/graphics/PointF;

    .line 148
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pK:Landroid/graphics/PointF;

    .line 149
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pL:Landroid/graphics/PointF;

    .line 150
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->pM:Landroid/graphics/PointF;

    .line 151
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->middle:Landroid/graphics/PointF;

    .line 153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_paddingStart:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->paddingStart:F

    .line 154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_paddingEnd:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->paddingEnd:F

    .line 155
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_paddingTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->paddingTop:F

    .line 156
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_paddingBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->paddingBottom:F

    .line 157
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$dimen;->miuix_appcompat_arrow_popup_view_round_corners:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    .line 158
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->density:F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 175
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 176
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 177
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask1:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 180
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mMask4:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPaint:Landroid/graphics/Paint;

    .line 180
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 189
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mIsRtl:Z

    .line 192
    iget-object v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_18

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 196
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v2, v0

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 198
    iget v6, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->paddingTop:F

    .line 199
    iget v3, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->paddingBottom:F

    sub-float v7, v0, v3

    .line 200
    iget v4, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->paddingStart:F

    .line 201
    iget v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->paddingEnd:F

    sub-float v5, v2, v0

    .line 204
    iget v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowMode:I

    const/16 v3, 0x10

    const/16 v8, 0x8

    if-eq v0, v8, :cond_38

    if-ne v0, v3, :cond_66

    .line 205
    :cond_38
    iget v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowHorizonOffset:F

    iget v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    add-float v10, v4, v9

    iget v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->density:F

    const/high16 v12, 0x41600000    # 14.0f

    mul-float v13, v11, v12

    add-float/2addr v10, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v2, v13

    sub-float/2addr v10, v13

    cmpg-float v10, v0, v10

    if-gez v10, :cond_55

    add-float/2addr v9, v4

    mul-float/2addr v11, v12

    add-float/2addr v9, v11

    sub-float/2addr v9, v13

    .line 206
    iput v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowHorizonOffset:F

    goto :goto_66

    :cond_55
    sub-float v10, v5, v9

    mul-float v14, v11, v12

    sub-float/2addr v10, v14

    sub-float/2addr v10, v13

    cmpl-float v0, v0, v10

    if-lez v0, :cond_66

    sub-float v0, v5, v9

    mul-float/2addr v11, v12

    sub-float/2addr v0, v11

    sub-float/2addr v0, v13

    .line 208
    iput v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowHorizonOffset:F

    .line 212
    :cond_66
    :goto_66
    iget-object v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p0:Landroid/graphics/PointF;

    iget v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    add-float/2addr v9, v4

    invoke-virtual {v0, v9, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 213
    iget-object v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p1:Landroid/graphics/PointF;

    iget v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    add-float/2addr v9, v6

    invoke-virtual {v0, v5, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 214
    iget-object v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p2:Landroid/graphics/PointF;

    iget v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    sub-float v9, v7, v9

    invoke-virtual {v0, v5, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 215
    iget-object v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p3:Landroid/graphics/PointF;

    iget v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    sub-float v9, v5, v9

    invoke-virtual {v0, v9, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 216
    iget-object v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p4:Landroid/graphics/PointF;

    iget v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    add-float/2addr v9, v4

    invoke-virtual {v0, v9, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 217
    iget-object v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p5:Landroid/graphics/PointF;

    iget v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    sub-float v9, v7, v9

    invoke-virtual {v0, v4, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 218
    iget-object v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p6:Landroid/graphics/PointF;

    iget v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    add-float/2addr v9, v6

    invoke-virtual {v0, v4, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 219
    iget-object v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p7:Landroid/graphics/PointF;

    iget v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    sub-float v9, v5, v9

    invoke-virtual {v0, v9, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 221
    iget-boolean v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mIsRtl:Z

    const/16 v9, 0xa

    if-nez v0, :cond_b4

    iget v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowMode:I

    if-eq v10, v9, :cond_bc

    :cond_b4
    const/16 v10, 0x9

    if-eqz v0, :cond_db

    iget v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowMode:I

    if-ne v11, v10, :cond_db

    .line 222
    :cond_bc
    iget v1, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->density:F

    iget-object v8, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p0:Landroid/graphics/PointF;

    iget-object v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p2:Landroid/graphics/PointF;

    iget-object v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p3:Landroid/graphics/PointF;

    iget-object v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p4:Landroid/graphics/PointF;

    iget-object v12, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p5:Landroid/graphics/PointF;

    iget-object v13, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p6:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->drawTopRightArrow(FFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/16 :goto_22c

    .line 223
    :cond_db
    iget v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowMode:I

    if-ne v11, v8, :cond_109

    .line 224
    iget v3, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->density:F

    iget-object v8, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p0:Landroid/graphics/PointF;

    iget-object v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p1:Landroid/graphics/PointF;

    iget-object v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p2:Landroid/graphics/PointF;

    iget-object v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p3:Landroid/graphics/PointF;

    iget-object v12, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p4:Landroid/graphics/PointF;

    iget-object v13, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p5:Landroid/graphics/PointF;

    iget-object v14, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p6:Landroid/graphics/PointF;

    iget-object v1, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p7:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move-object/from16 v16, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->drawTopArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/16 :goto_22c

    :cond_109
    if-nez v0, :cond_10d

    if-eq v11, v10, :cond_111

    :cond_10d
    if-eqz v0, :cond_135

    if-ne v11, v9, :cond_135

    .line 226
    :cond_111
    iget v1, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    iget v2, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->density:F

    iget-object v8, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p1:Landroid/graphics/PointF;

    iget-object v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p2:Landroid/graphics/PointF;

    iget-object v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p3:Landroid/graphics/PointF;

    iget-object v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p4:Landroid/graphics/PointF;

    iget-object v12, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p5:Landroid/graphics/PointF;

    iget-object v13, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p6:Landroid/graphics/PointF;

    iget-object v14, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p7:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    invoke-direct/range {v0 .. v13}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->drawTopLeftArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/16 :goto_22c

    :cond_135
    const/16 v8, 0x20

    if-nez v0, :cond_13f

    if-ne v11, v8, :cond_13f

    .line 227
    iget v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mRtlMode:I

    if-ne v9, v1, :cond_159

    :cond_13f
    const/16 v9, 0x40

    if-eqz v0, :cond_149

    if-ne v11, v9, :cond_149

    iget v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mRtlMode:I

    if-nez v10, :cond_159

    :cond_149
    if-eqz v0, :cond_151

    if-ne v11, v8, :cond_151

    iget v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mRtlMode:I

    if-eqz v10, :cond_159

    :cond_151
    if-nez v0, :cond_17d

    if-ne v11, v9, :cond_17d

    iget v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mRtlMode:I

    if-ne v10, v1, :cond_17d

    .line 233
    :cond_159
    iget v1, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    iget v2, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->density:F

    iget-object v8, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p0:Landroid/graphics/PointF;

    iget-object v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p1:Landroid/graphics/PointF;

    iget-object v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p2:Landroid/graphics/PointF;

    iget-object v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p3:Landroid/graphics/PointF;

    iget-object v12, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p4:Landroid/graphics/PointF;

    iget-object v13, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p5:Landroid/graphics/PointF;

    iget-object v14, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p6:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    invoke-direct/range {v0 .. v13}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->drawLeftArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/16 :goto_22c

    :cond_17d
    if-nez v0, :cond_181

    if-eq v11, v9, :cond_191

    :cond_181
    if-eqz v0, :cond_189

    if-ne v11, v8, :cond_189

    .line 234
    iget v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mRtlMode:I

    if-ne v10, v1, :cond_191

    :cond_189
    if-eqz v0, :cond_18d

    if-eq v11, v9, :cond_191

    :cond_18d
    if-nez v0, :cond_1b5

    if-ne v11, v8, :cond_1b5

    .line 240
    :cond_191
    iget v1, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    iget v2, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->density:F

    iget-object v8, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p0:Landroid/graphics/PointF;

    iget-object v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p1:Landroid/graphics/PointF;

    iget-object v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p2:Landroid/graphics/PointF;

    iget-object v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p3:Landroid/graphics/PointF;

    iget-object v12, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p4:Landroid/graphics/PointF;

    iget-object v13, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p5:Landroid/graphics/PointF;

    iget-object v14, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p6:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    invoke-direct/range {v0 .. v13}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->drawRightArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto/16 :goto_22c

    :cond_1b5
    const/16 v1, 0x11

    if-nez v0, :cond_1bb

    if-eq v11, v1, :cond_1c1

    :cond_1bb
    const/16 v8, 0x12

    if-eqz v0, :cond_1e1

    if-ne v11, v8, :cond_1e1

    .line 242
    :cond_1c1
    iget v1, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    iget v2, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->density:F

    iget-object v8, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p0:Landroid/graphics/PointF;

    iget-object v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p1:Landroid/graphics/PointF;

    iget-object v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p2:Landroid/graphics/PointF;

    iget-object v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p4:Landroid/graphics/PointF;

    iget-object v12, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p5:Landroid/graphics/PointF;

    iget-object v13, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p6:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    invoke-direct/range {v0 .. v12}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->drawBottomRightArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_22c

    :cond_1e1
    if-ne v11, v3, :cond_208

    .line 244
    iget v3, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    iget v8, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->density:F

    iget-object v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p0:Landroid/graphics/PointF;

    iget-object v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p1:Landroid/graphics/PointF;

    iget-object v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p2:Landroid/graphics/PointF;

    iget-object v12, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p3:Landroid/graphics/PointF;

    iget-object v13, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p4:Landroid/graphics/PointF;

    iget-object v14, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p5:Landroid/graphics/PointF;

    iget-object v1, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p6:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move-object/from16 v16, v1

    move v1, v2

    move v2, v3

    move v3, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->drawBottomArrow(FFFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_22c

    :cond_208
    if-nez v0, :cond_20c

    if-eq v11, v8, :cond_210

    :cond_20c
    if-eqz v0, :cond_22c

    if-ne v11, v1, :cond_22c

    .line 246
    :cond_210
    iget v1, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->radius:F

    iget v2, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->density:F

    iget-object v8, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p0:Landroid/graphics/PointF;

    iget-object v9, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p1:Landroid/graphics/PointF;

    iget-object v10, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p2:Landroid/graphics/PointF;

    iget-object v11, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p3:Landroid/graphics/PointF;

    iget-object v12, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->p6:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->drawBottomLeftArrow(FFFFFFLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 249
    :cond_22c
    :goto_22c
    iget-object v0, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_239

    iget-object v1, v15, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mPath:Landroid/graphics/Path;

    if-eqz v1, :cond_239

    move-object/from16 v2, p1

    .line 250
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_239
    return-void
.end method

.method public setArrowBackgroundPaintColor(I)V
    .registers 3

    .line 115
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    .line 116
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_7
    return-void
.end method

.method public setArrowHorizonOffset(F)V
    .registers 2

    .line 166
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowHorizonOffset:F

    return-void
.end method

.method public setArrowMode(I)V
    .registers 2

    .line 162
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mArrowMode:I

    return-void
.end method

.method public setRtlMode(I)V
    .registers 2

    .line 170
    iput p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupContentWrapper;->mRtlMode:I

    return-void
.end method
