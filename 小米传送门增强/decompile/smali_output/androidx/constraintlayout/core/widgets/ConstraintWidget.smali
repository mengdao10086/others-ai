.class public Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static DEFAULT_BIAS:F = 0.5f


# instance fields
.field private OPTIMIZE_WRAP:Z

.field private OPTIMIZE_WRAP_ON_RESOLVED:Z

.field public frame:Landroidx/constraintlayout/core/state/WidgetFrame;

.field private hasBaseline:Z

.field public horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

.field public horizontalGroup:I

.field public horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

.field private horizontalSolvingPass:Z

.field private inPlaceholder:Z

.field public isTerminalWidget:[Z

.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimated:Z

.field public mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field public mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field public mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mGroupsToSolver:Z

.field mHeight:I

.field private mHeightOverride:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field private mInVirtualLayout:Z

.field private mIsInBarrier:[Z

.field private mLastHorizontalMeasureSpec:I

.field private mLastVerticalMeasureSpec:I

.field public mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mMatchConstraintDefaultHeight:I

.field public mMatchConstraintDefaultWidth:I

.field public mMatchConstraintMaxHeight:I

.field public mMatchConstraintMaxWidth:I

.field public mMatchConstraintMinHeight:I

.field public mMatchConstraintMinWidth:I

.field public mMatchConstraintPercentHeight:F

.field public mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field private mMeasureRequested:Z

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field public mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedHasRatio:Z

.field public mResolvedMatchConstraintDefault:[I

.field public mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field public mWeight:[F

.field mWidth:I

.field private mWidthOverride:I

.field private mWrapBehaviorInParent:I

.field protected mX:I

.field protected mY:I

.field public measured:Z

.field private resolvedHorizontal:Z

.field private resolvedVertical:Z

.field public run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public stringId:Ljava/lang/String;

.field public verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

.field public verticalGroup:I

.field public verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

.field private verticalSolvingPass:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 14

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    const/4 v1, 0x2

    .line 63
    new-array v2, v1, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    const/4 v2, 0x0

    .line 67
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 68
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    const/4 v3, 0x1

    .line 70
    new-array v4, v1, [Z

    fill-array-data v4, :array_120

    iput-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 72
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    .line 74
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    const/4 v3, -0x1

    .line 76
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 77
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    .line 79
    new-instance v4, Landroidx/constraintlayout/core/state/WidgetFrame;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    .line 92
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 95
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    .line 96
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    .line 282
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 283
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 287
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    .line 289
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 290
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 291
    new-array v4, v1, [I

    iput-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 293
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 294
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 295
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 296
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 297
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 298
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 302
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 303
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    const v4, 0x7fffffff

    .line 305
    filled-new-array {v4, v4}, [I

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v4, 0x0

    .line 306
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 307
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    .line 310
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 398
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 399
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    .line 417
    new-instance v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 418
    new-instance v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 419
    new-instance v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 420
    new-instance v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 421
    new-instance v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 422
    new-instance v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 423
    new-instance v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 424
    new-instance v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v12, p0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v12, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 432
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v10, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v11, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    filled-new-array/range {v7 .. v12}, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 433
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    .line 435
    new-array v5, v1, [Z

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 440
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    filled-new-array {v5, v5}, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 443
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 446
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 447
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 448
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 449
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 452
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 453
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 454
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    .line 455
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    .line 458
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 459
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 462
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 471
    sget v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 472
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 480
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 483
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 485
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    .line 486
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 487
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 499
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 502
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 503
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 507
    new-array v0, v1, [F

    fill-array-data v0, :array_126

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 509
    filled-new-array {v2, v2}, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 510
    filled-new-array {v2, v2}, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 512
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 513
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 703
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    .line 704
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 733
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addAnchors()V

    return-void

    :array_120
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_126
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private addAnchors()V
    .registers 3

    .line 804
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V
    .registers 65

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    .line 2873
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    .line 2874
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    .line 2875
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v7

    .line 2876
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    .line 2878
    invoke-static {}, Landroidx/constraintlayout/core/LinearSystem;->getMetrics()Landroidx/constraintlayout/core/Metrics;

    .line 2882
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v16

    .line 2883
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v17

    .line 2884
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v18

    if-eqz v17, :cond_44

    add-int/lit8 v5, v16, 0x1

    goto :goto_46

    :cond_44
    move/from16 v5, v16

    :goto_46
    if-eqz v18, :cond_4a

    add-int/lit8 v5, v5, 0x1

    :cond_4a
    if-eqz p17, :cond_4f

    const/16 v19, 0x3

    goto :goto_51

    :cond_4f
    move/from16 v19, p22

    .line 2902
    :goto_51
    sget-object v20, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    aget v12, v20, v21

    const/4 v2, 0x1

    if-eq v12, v2, :cond_65

    const/4 v2, 0x2

    if-eq v12, v2, :cond_65

    const/4 v2, 0x3

    if-eq v12, v2, :cond_65

    const/4 v2, 0x4

    if-eq v12, v2, :cond_6a

    :cond_65
    move/from16 v12, v19

    :cond_67
    const/16 v19, 0x0

    goto :goto_70

    :cond_6a
    move/from16 v12, v19

    if-eq v12, v2, :cond_67

    const/16 v19, 0x1

    .line 2922
    :goto_70
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    const/4 v14, -0x1

    if-eq v2, v14, :cond_7d

    if-eqz p2, :cond_7d

    .line 2928
    iput v14, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    move/from16 p13, v2

    const/16 v19, 0x0

    .line 2930
    :cond_7d
    iget v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    if-eq v2, v14, :cond_88

    if-nez p2, :cond_88

    .line 2936
    iput v14, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    const/16 v19, 0x0

    goto :goto_8a

    :cond_88
    move/from16 v2, p13

    .line 2939
    :goto_8a
    iget v14, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    move/from16 p13, v2

    const/16 v2, 0x8

    if-ne v14, v2, :cond_96

    const/4 v14, 0x0

    const/16 v19, 0x0

    goto :goto_98

    :cond_96
    move/from16 v14, p13

    :goto_98
    if-eqz p27, :cond_ba

    if-nez v16, :cond_aa

    if-nez v17, :cond_aa

    if-nez v18, :cond_aa

    move/from16 v2, p12

    .line 2947
    invoke-virtual {v10, v9, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    :cond_a5
    move-object/from16 v24, v6

    const/16 v6, 0x8

    goto :goto_bd

    :cond_aa
    if-eqz v16, :cond_a5

    if-nez v17, :cond_a5

    .line 2949
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    move-object/from16 v24, v6

    const/16 v6, 0x8

    invoke-virtual {v10, v9, v7, v2, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_bd

    :cond_ba
    move-object/from16 v24, v6

    move v6, v2

    :goto_bd
    if-nez v19, :cond_e7

    if-eqz p9, :cond_d6

    const/4 v2, 0x3

    const/4 v6, 0x0

    .line 2956
    invoke-virtual {v10, v8, v9, v6, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    const/16 v2, 0x8

    if-lez v15, :cond_cd

    .line 2958
    invoke-virtual {v10, v8, v9, v15, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_cd
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_da

    .line 2961
    invoke-virtual {v10, v8, v9, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_da

    :cond_d6
    move v2, v6

    .line 2964
    invoke-virtual {v10, v8, v9, v14, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    :cond_da
    :goto_da
    move v1, v5

    move-object v2, v7

    move-object v14, v8

    move/from16 v25, v19

    move-object/from16 v15, v24

    move/from16 v19, p5

    :goto_e3
    move/from16 v24, v3

    goto/16 :goto_1d9

    :cond_e7
    const/4 v1, 0x2

    if-eq v5, v1, :cond_10a

    if-nez p17, :cond_10a

    const/4 v1, 0x1

    if-eq v12, v1, :cond_f1

    if-nez v12, :cond_10a

    .line 2972
    :cond_f1
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_fb

    .line 2974
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_fb
    const/16 v2, 0x8

    .line 2976
    invoke-virtual {v10, v8, v9, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    move/from16 v19, p5

    move v1, v5

    move-object v2, v7

    move-object v14, v8

    move-object/from16 v15, v24

    const/16 v25, 0x0

    goto :goto_e3

    :cond_10a
    const/4 v1, -0x2

    if-ne v3, v1, :cond_10f

    move v2, v14

    goto :goto_110

    :cond_10f
    move v2, v3

    :goto_110
    if-ne v4, v1, :cond_114

    move v1, v14

    goto :goto_115

    :cond_114
    move v1, v4

    :goto_115
    if-lez v14, :cond_11b

    const/4 v3, 0x1

    if-eq v12, v3, :cond_11b

    const/4 v14, 0x0

    :cond_11b
    const/16 v3, 0x8

    if-lez v2, :cond_126

    .line 2993
    invoke-virtual {v10, v8, v9, v2, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2994
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_126
    const/4 v4, 0x1

    if-lez v1, :cond_135

    if-eqz p3, :cond_12e

    if-ne v12, v4, :cond_12e

    goto :goto_131

    .line 3002
    :cond_12e
    invoke-virtual {v10, v8, v9, v1, v3}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3004
    :goto_131
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_135
    if-ne v12, v4, :cond_15c

    if-eqz p3, :cond_13d

    .line 3008
    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_14e

    :cond_13d
    if-eqz p19, :cond_147

    const/4 v4, 0x5

    .line 3010
    invoke-virtual {v10, v8, v9, v14, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3011
    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_14e

    :cond_147
    const/4 v4, 0x5

    .line 3013
    invoke-virtual {v10, v8, v9, v14, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3014
    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_14e
    move v4, v1

    move v1, v5

    move-object v14, v8

    move/from16 v25, v19

    move-object/from16 v15, v24

    move/from16 v19, p5

    move/from16 v24, v2

    move-object v2, v7

    goto/16 :goto_1d9

    :cond_15c
    const/4 v3, 0x2

    if-ne v12, v3, :cond_1c8

    .line 3019
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v3, v4, :cond_18b

    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-result-object v3

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne v3, v6, :cond_170

    goto :goto_18b

    .line 3024
    :cond_170
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    .line 3025
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    :goto_188
    move-object v14, v3

    move-object v6, v4

    goto :goto_1a2

    .line 3021
    :cond_18b
    :goto_18b
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    .line 3022
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    goto :goto_188

    .line 3027
    :goto_1a2
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v3

    move-object v4, v8

    move/from16 p9, v1

    move v1, v5

    move-object v5, v9

    move-object/from16 v15, v24

    move/from16 p15, v2

    move-object v2, v7

    move-object v7, v14

    move-object v14, v8

    move/from16 v8, p26

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    if-eqz p3, :cond_1bf

    const/16 v19, 0x0

    :cond_1bf
    move/from16 v4, p9

    move/from16 v24, p15

    move/from16 v25, v19

    move/from16 v19, p5

    goto :goto_1d9

    :cond_1c8
    move/from16 p9, v1

    move/from16 p15, v2

    move v1, v5

    move-object v2, v7

    move-object v14, v8

    move-object/from16 v15, v24

    move/from16 v4, p9

    move/from16 v24, p15

    move/from16 v25, v19

    const/16 v19, 0x1

    :goto_1d9
    if-eqz p27, :cond_1dd

    if-eqz p19, :cond_1e8

    :cond_1dd
    move-object/from16 v5, p7

    move-object v8, v9

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/16 v13, 0x8

    const/16 v18, 0x1

    goto/16 :goto_583

    :cond_1e8
    if-nez v16, :cond_1f3

    if-nez v17, :cond_1f3

    if-nez v18, :cond_1f3

    :cond_1ee
    :goto_1ee
    move-object v2, v15

    const/4 v1, 0x5

    const/4 v3, 0x0

    goto/16 :goto_553

    :cond_1f3
    if-eqz v16, :cond_20c

    if-nez v17, :cond_20c

    .line 3078
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz p3, :cond_204

    .line 3079
    instance-of v1, v1, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v1, :cond_204

    const/16 v2, 0x8

    goto :goto_205

    :cond_204
    const/4 v2, 0x5

    :goto_205
    move/from16 v20, p3

    move v1, v2

    :cond_208
    move-object v2, v15

    :cond_209
    const/4 v3, 0x0

    goto/16 :goto_555

    :cond_20c
    if-nez v16, :cond_23e

    if-eqz v17, :cond_23e

    .line 3083
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0x8

    invoke-virtual {v10, v14, v15, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    if-eqz p3, :cond_1ee

    .line 3085
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    if-eqz v1, :cond_234

    iget-boolean v1, v9, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v1, :cond_234

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v1, :cond_234

    .line 3086
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz p2, :cond_230

    .line 3088
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_1ee

    .line 3090
    :cond_230
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_1ee

    :cond_234
    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 3096
    invoke-virtual {v10, v9, v11, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move v3, v1

    move v1, v2

    move-object v2, v15

    goto/16 :goto_553

    :cond_23e
    const/4 v1, 0x0

    if-eqz v16, :cond_550

    if-eqz v17, :cond_550

    .line 3111
    iget-object v3, v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-object/from16 v6, p11

    move v7, v1

    .line 3112
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3113
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v3

    const/16 v16, 0x6

    if-eqz v25, :cond_3ba

    if-nez v12, :cond_2be

    if-nez v4, :cond_282

    if-nez v24, :cond_282

    .line 3122
    iget-boolean v1, v2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v1, :cond_276

    iget-boolean v1, v15, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v1, :cond_276

    .line 3123
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    const/16 v4, 0x8

    invoke-virtual {v10, v9, v2, v1, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3124
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v14, v15, v1, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    return-void

    :cond_276
    const/16 v4, 0x8

    move v1, v4

    move/from16 v17, v1

    move/from16 v18, v7

    move/from16 v23, v18

    const/16 v21, 0x1

    goto :goto_28d

    :cond_282
    const/16 v4, 0x8

    move/from16 v21, v7

    const/4 v1, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    const/16 v23, 0x1

    .line 3134
    :goto_28d
    instance-of v4, v8, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v4, :cond_2ac

    instance-of v4, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v4, :cond_296

    goto :goto_2ac

    :cond_296
    move-object/from16 v4, p7

    move/from16 v20, v16

    move/from16 v22, v17

    move/from16 v27, v18

    move/from16 v28, v21

    move/from16 v26, v23

    const/4 v7, 0x1

    const/16 v17, 0x8

    const/16 v18, 0x5

    :goto_2a7
    move/from16 v23, v1

    const/4 v1, 0x3

    goto/16 :goto_40d

    :cond_2ac
    :goto_2ac
    move-object/from16 v4, p7

    move/from16 v20, v16

    move/from16 v27, v18

    move/from16 v28, v21

    move/from16 v26, v23

    const/4 v7, 0x1

    const/16 v17, 0x8

    const/16 v18, 0x5

    const/16 v22, 0x4

    goto :goto_2a7

    :cond_2be
    const/4 v1, 0x2

    const/16 v17, 0x8

    if-ne v12, v1, :cond_2ed

    .line 3143
    instance-of v1, v8, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v1, :cond_2e0

    instance-of v1, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v1, :cond_2cc

    goto :goto_2e0

    :cond_2cc
    move-object/from16 v4, p7

    move/from16 v28, v7

    move/from16 v20, v16

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/16 v18, 0x5

    const/16 v22, 0x5

    :goto_2d8
    const/16 v23, 0x5

    :goto_2da
    const/16 v26, 0x1

    const/16 v27, 0x1

    goto/16 :goto_40d

    :cond_2e0
    :goto_2e0
    move-object/from16 v4, p7

    move/from16 v28, v7

    move/from16 v20, v16

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/16 v18, 0x5

    const/16 v22, 0x4

    goto :goto_2d8

    :cond_2ed
    const/4 v1, 0x1

    if-ne v12, v1, :cond_2ff

    move-object/from16 v4, p7

    move/from16 v28, v7

    move/from16 v20, v16

    move/from16 v23, v17

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/16 v18, 0x5

    const/16 v22, 0x4

    goto :goto_2da

    :cond_2ff
    const/4 v1, 0x3

    if-ne v12, v1, :cond_3a8

    .line 3151
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v7, -0x1

    if-ne v1, v7, :cond_32d

    if-eqz p20, :cond_322

    move-object/from16 v4, p7

    move/from16 v23, v17

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/16 v18, 0x5

    if-eqz p3, :cond_31f

    const/16 v20, 0x5

    :goto_315
    const/16 v22, 0x5

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    goto/16 :goto_40d

    :cond_31f
    const/16 v20, 0x4

    goto :goto_315

    :cond_322
    move-object/from16 v4, p7

    move/from16 v20, v17

    move/from16 v23, v20

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/16 v18, 0x5

    goto :goto_315

    :cond_32d
    if-eqz p17, :cond_352

    move/from16 v1, p23

    const/4 v7, 0x2

    if-eq v1, v7, :cond_33c

    const/4 v7, 0x1

    if-ne v1, v7, :cond_338

    goto :goto_33d

    :cond_338
    move/from16 v1, v17

    const/4 v4, 0x5

    goto :goto_33f

    :cond_33c
    const/4 v7, 0x1

    :goto_33d
    const/4 v1, 0x5

    const/4 v4, 0x4

    :goto_33f
    move/from16 v23, v1

    move/from16 v22, v4

    move/from16 v26, v7

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v20, v16

    const/4 v1, 0x3

    const/16 v18, 0x5

    move-object/from16 v4, p7

    goto/16 :goto_40d

    :cond_352
    const/4 v7, 0x1

    if-lez v4, :cond_368

    move-object/from16 v4, p7

    move/from16 v26, v7

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v20, v16

    const/4 v1, 0x3

    const/16 v18, 0x5

    const/16 v22, 0x5

    :goto_364
    const/16 v23, 0x5

    goto/16 :goto_40d

    :cond_368
    if-nez v4, :cond_398

    if-nez v24, :cond_398

    if-nez p20, :cond_37e

    move-object/from16 v4, p7

    move/from16 v26, v7

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v20, v16

    move/from16 v22, v17

    const/4 v1, 0x3

    const/16 v18, 0x5

    goto :goto_364

    :cond_37e
    if-eq v8, v3, :cond_384

    if-eq v5, v3, :cond_384

    const/4 v1, 0x4

    goto :goto_385

    :cond_384
    const/4 v1, 0x5

    :goto_385
    move-object/from16 v4, p7

    move/from16 v23, v1

    move/from16 v26, v7

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v20, v16

    const/4 v1, 0x3

    const/16 v18, 0x5

    const/16 v22, 0x4

    goto/16 :goto_40d

    :cond_398
    move-object/from16 v4, p7

    move/from16 v26, v7

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v20, v16

    const/4 v1, 0x3

    const/16 v18, 0x5

    const/16 v22, 0x4

    goto :goto_364

    :cond_3a8
    const/4 v7, 0x1

    move-object/from16 v4, p7

    move/from16 v20, v16

    const/16 v18, 0x5

    const/16 v22, 0x4

    const/16 v23, 0x5

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_3b7
    const/16 v28, 0x0

    goto :goto_40d

    :cond_3ba
    const/4 v7, 0x1

    const/16 v17, 0x8

    .line 3203
    iget-boolean v1, v2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v1, :cond_3fd

    iget-boolean v1, v15, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v1, :cond_3fd

    .line 3204
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 3205
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v2

    move/from16 p20, v1

    move/from16 p21, p16

    move-object/from16 p22, v15

    move-object/from16 p23, v14

    move/from16 p24, v3

    move/from16 p25, v4

    .line 3204
    invoke-virtual/range {p17 .. p25}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    if-eqz p3, :cond_3fc

    if-eqz v19, :cond_3fc

    .line 3208
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_3f3

    .line 3209
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move-object/from16 v4, p7

    goto :goto_3f6

    :cond_3f3
    move-object/from16 v4, p7

    const/4 v1, 0x0

    :goto_3f6
    if-eq v15, v4, :cond_3fc

    const/4 v2, 0x5

    .line 3215
    invoke-virtual {v10, v4, v14, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_3fc
    return-void

    :cond_3fd
    move-object/from16 v4, p7

    const/4 v1, 0x3

    const/16 v18, 0x5

    move/from16 v26, v7

    move/from16 v27, v26

    move/from16 v20, v16

    move/from16 v23, v18

    const/16 v22, 0x4

    goto :goto_3b7

    :goto_40d
    if-eqz v26, :cond_418

    if-ne v2, v15, :cond_418

    if-eq v8, v3, :cond_418

    const/16 v26, 0x0

    const/16 v29, 0x0

    goto :goto_41a

    :cond_418
    move/from16 v29, v7

    :goto_41a
    if-eqz v27, :cond_465

    if-nez v25, :cond_42f

    if-nez p18, :cond_42f

    if-nez p20, :cond_42f

    if-ne v2, v11, :cond_42f

    if-ne v15, v4, :cond_42f

    move/from16 v23, v17

    move/from16 v27, v23

    const/16 v20, 0x0

    const/16 v29, 0x0

    goto :goto_433

    :cond_42f
    move/from16 v27, v20

    move/from16 v20, p3

    .line 3238
    :goto_433
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v30

    .line 3239
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v31

    move v13, v1

    move-object/from16 v1, p1

    move-object/from16 p5, v2

    move/from16 v13, v17

    const/16 v17, 0x4

    move/from16 v36, v18

    move/from16 v18, v7

    move/from16 v7, v36

    move-object v2, v9

    move-object/from16 v32, v3

    move-object/from16 v3, p5

    move/from16 v4, v30

    move-object/from16 v33, v5

    move/from16 v5, p16

    move-object v6, v15

    move-object v7, v14

    move-object/from16 v34, v8

    move/from16 v8, v31

    move-object/from16 v35, v9

    move/from16 v9, v27

    .line 3238
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_462
    move/from16 v2, v29

    goto :goto_478

    :cond_465
    move-object/from16 p5, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v5

    move/from16 v18, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move/from16 v13, v17

    const/16 v17, 0x4

    move/from16 v20, p3

    goto :goto_462

    .line 3242
    :goto_478
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-ne v1, v13, :cond_483

    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v1

    if-nez v1, :cond_483

    return-void

    :cond_483
    move-object/from16 v1, p5

    if-eqz v26, :cond_4b9

    if-eqz v20, :cond_49f

    if-eq v1, v15, :cond_49f

    if-nez v25, :cond_49f

    move-object/from16 v3, v34

    .line 3249
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v4, :cond_49a

    move-object/from16 v4, v33

    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v5, :cond_4a3

    goto :goto_49c

    :cond_49a
    move-object/from16 v4, v33

    :goto_49c
    move/from16 v5, v16

    goto :goto_4a5

    :cond_49f
    move-object/from16 v4, v33

    move-object/from16 v3, v34

    :cond_4a3
    move/from16 v5, v23

    .line 3253
    :goto_4a5
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    move-object/from16 v8, v35

    invoke-virtual {v10, v8, v1, v6, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 3254
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v10, v14, v15, v6, v5}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    move/from16 v23, v5

    goto :goto_4bf

    :cond_4b9
    move-object/from16 v4, v33

    move-object/from16 v3, v34

    move-object/from16 v8, v35

    :goto_4bf
    if-eqz v20, :cond_4d5

    if-eqz p21, :cond_4d5

    .line 3257
    instance-of v5, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v5, :cond_4d5

    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v5, :cond_4d5

    move-object/from16 v5, v32

    if-eq v4, v5, :cond_4d7

    move/from16 v6, v16

    move v7, v6

    move/from16 v2, v18

    goto :goto_4db

    :cond_4d5
    move-object/from16 v5, v32

    :cond_4d7
    move/from16 v6, v22

    move/from16 v7, v23

    :goto_4db
    if-eqz v2, :cond_526

    if-eqz v28, :cond_506

    if-eqz p20, :cond_4e3

    if-eqz p4, :cond_506

    :cond_4e3
    if-eq v3, v5, :cond_4ea

    if-ne v4, v5, :cond_4e8

    goto :goto_4ea

    :cond_4e8
    move v2, v6

    goto :goto_4ec

    :cond_4ea
    :goto_4ea
    move/from16 v2, v16

    .line 3273
    :goto_4ec
    instance-of v9, v3, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v9, :cond_4f4

    instance-of v9, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v9, :cond_4f5

    :cond_4f4
    const/4 v2, 0x5

    .line 3276
    :cond_4f5
    instance-of v9, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v9, :cond_4fd

    instance-of v9, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v9, :cond_4fe

    :cond_4fd
    const/4 v2, 0x5

    :cond_4fe
    if-eqz p20, :cond_501

    const/4 v2, 0x5

    .line 3282
    :cond_501
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_507

    :cond_506
    move v2, v6

    :goto_507
    if-eqz v20, :cond_517

    .line 3286
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p17, :cond_517

    if-nez p20, :cond_517

    if-eq v3, v5, :cond_515

    if-ne v4, v5, :cond_517

    :cond_515
    move/from16 v2, v17

    .line 3293
    :cond_517
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v10, v8, v1, v3, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 3294
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v14, v15, v3, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    :cond_526
    if-eqz v20, :cond_537

    if-ne v11, v1, :cond_52f

    .line 3300
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    goto :goto_530

    :cond_52f
    const/4 v2, 0x0

    :goto_530
    if-eq v1, v11, :cond_537

    const/4 v1, 0x5

    .line 3306
    invoke-virtual {v10, v8, v11, v2, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_538

    :cond_537
    const/4 v1, 0x5

    :goto_538
    if-eqz v20, :cond_208

    if-eqz v25, :cond_208

    move-object v2, v15

    if-nez p14, :cond_209

    if-nez v24, :cond_209

    if-eqz v25, :cond_54b

    const/4 v3, 0x3

    if-ne v12, v3, :cond_54b

    const/4 v3, 0x0

    .line 3315
    invoke-virtual {v10, v14, v8, v3, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_555

    :cond_54b
    const/4 v3, 0x0

    .line 3317
    invoke-virtual {v10, v14, v8, v3, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_555

    :cond_550
    move v3, v1

    move-object v2, v15

    const/4 v1, 0x5

    :goto_553
    move/from16 v20, p3

    :goto_555
    if-eqz v20, :cond_582

    if-eqz v19, :cond_582

    move-object/from16 v4, p11

    .line 3324
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v5, :cond_563

    .line 3325
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    :cond_563
    move-object/from16 v5, p7

    if-eq v2, v5, :cond_582

    .line 3328
    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    if-eqz v2, :cond_57f

    iget-boolean v2, v14, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v2, :cond_57f

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v2, :cond_57f

    .line 3329
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz p2, :cond_57b

    .line 3331
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_57e

    .line 3333
    :cond_57b
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    :goto_57e
    return-void

    .line 3340
    :cond_57f
    invoke-virtual {v10, v5, v14, v3, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_582
    return-void

    :goto_583
    if-ge v1, v7, :cond_5bf

    if-eqz p3, :cond_5bf

    if-eqz v19, :cond_5bf

    .line 3044
    invoke-virtual {v10, v8, v11, v3, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    if-nez p2, :cond_597

    .line 3045
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v1, :cond_595

    goto :goto_597

    :cond_595
    move v2, v3

    goto :goto_599

    :cond_597
    :goto_597
    move/from16 v2, v18

    :goto_599
    if-nez p2, :cond_5ba

    .line 3046
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5ba

    .line 3049
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3050
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5b9

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v1, v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_5b9

    aget-object v1, v1, v18

    if-ne v1, v4, :cond_5b9

    move/from16 v2, v18

    goto :goto_5ba

    :cond_5b9
    move v2, v3

    :cond_5ba
    :goto_5ba
    if-eqz v2, :cond_5bf

    .line 3062
    invoke-virtual {v10, v5, v14, v3, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_5bf
    return-void
.end method

.method private getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V
    .registers 11

    .line 3639
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    const-string p2, " :  {\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3641
    const-string p2, "      size"

    const/4 p6, 0x0

    invoke-direct {p0, p1, p2, p3, p6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3642
    const-string p2, "      min"

    invoke-direct {p0, p1, p2, p4, p6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3643
    const-string p2, "      max"

    const p3, 0x7fffffff

    invoke-direct {p0, p1, p2, p5, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3644
    const-string p2, "      matchMin"

    invoke-direct {p0, p1, p2, p7, p6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3645
    const-string p2, "      matchDef"

    invoke-direct {p0, p1, p2, p8, p6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3646
    const-string p2, "      matchPercent"

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p9, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 3647
    const-string p2, "    },\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 6

    .line 3650
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v0, :cond_5

    return-void

    .line 3653
    :cond_5
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3654
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3655
    const-string p2, " : [ \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    iget-object p2, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3657
    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3658
    iget p2, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_26

    iget p2, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    if-eqz p2, :cond_3f

    .line 3659
    :cond_26
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3660
    iget v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3661
    iget v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    if-eq v1, v0, :cond_3f

    .line 3662
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    iget p3, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3664
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3667
    :cond_3f
    const-string p2, " ] ,\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private isChainHead(I)Z
    .registers 5

    mul-int/lit8 p1, p1, 0x2

    .line 2386
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v1, v0, p1

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v2, :cond_1b

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eq v2, v1, :cond_1b

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v0, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return v1
.end method

.method private serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .registers 5

    cmpl-float p4, p3, p4

    if-nez p4, :cond_5

    return-void

    .line 617
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string p2, " :   "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 620
    const-string p2, ",\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .registers 5

    if-ne p3, p4, :cond_3

    return-void

    .line 627
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string p2, " :   "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    const-string p2, ",\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private serializeDimensionRatio(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V
    .registers 6

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_6

    return-void

    .line 637
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string p2, " :  ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 640
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string p2, "],\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p5, :cond_18

    .line 3543
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_9

    return-void

    .line 3546
    :cond_9
    invoke-static {p1, p2, p0}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 3547
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    .line 3548
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    :cond_18
    if-nez p4, :cond_60

    .line 3551
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_3d

    .line 3553
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_26
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3554
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    goto :goto_26

    .line 3557
    :cond_3d
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_c9

    .line 3559
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_49
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3560
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    goto :goto_49

    .line 3564
    :cond_60
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_83

    .line 3566
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_6c
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3567
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    goto :goto_6c

    .line 3570
    :cond_83
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_a6

    .line 3572
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_8f
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3573
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    goto :goto_8f

    .line 3576
    :cond_a6
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    move-result-object p5

    if-eqz p5, :cond_c9

    .line 3578
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_b2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3579
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    goto :goto_b2

    :cond_c9
    return-void
.end method

.method addFirst()Z
    .registers 2

    .line 2777
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-nez v0, :cond_b

    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 56

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 2413
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v13

    .line 2414
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v12

    .line 2415
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    .line 2416
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v10

    .line 2417
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    .line 2421
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v8, 0x2

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_4f

    if-eqz v0, :cond_36

    .line 2422
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v6

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_36

    move v2, v7

    goto :goto_37

    :cond_36
    move v2, v6

    :goto_37
    if-eqz v0, :cond_43

    .line 2423
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v7

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_43

    move v0, v7

    goto :goto_44

    :cond_43
    move v0, v6

    .line 2425
    :goto_44
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    if-eq v3, v7, :cond_55

    if-eq v3, v8, :cond_52

    if-eq v3, v1, :cond_4f

    move v5, v0

    move v4, v2

    goto :goto_57

    :cond_4f
    move v4, v6

    move v5, v4

    goto :goto_57

    :cond_52
    move v5, v0

    move v4, v6

    goto :goto_57

    :cond_55
    move v4, v2

    move v5, v6

    .line 2439
    :goto_57
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_72

    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    if-nez v0, :cond_72

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDependencies()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aget-boolean v2, v0, v6

    if-nez v2, :cond_72

    aget-boolean v0, v0, v7

    if-nez v0, :cond_72

    return-void

    .line 2444
    :cond_72
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    const/4 v2, 0x5

    if-nez v0, :cond_7b

    iget-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v8, :cond_f8

    :cond_7b
    if-eqz v0, :cond_aa

    .line 2453
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2454
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    if-eqz v4, :cond_aa

    .line 2455
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_aa

    .line 2456
    iget-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    if-eqz v8, :cond_a1

    .line 2457
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2458
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2459
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_aa

    .line 2462
    :cond_a1
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v0, v12, v6, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2466
    :cond_aa
    :goto_aa
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v0, :cond_eb

    .line 2467
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v14, v11, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2468
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v10, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2469
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 2470
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v0, v8

    invoke-virtual {v14, v9, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    :cond_cb
    if-eqz v5, :cond_eb

    .line 2472
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_eb

    .line 2473
    iget-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    if-eqz v8, :cond_e2

    .line 2474
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2475
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 2476
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    goto :goto_eb

    .line 2479
    :cond_e2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {v14, v0, v10, v6, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2483
    :cond_eb
    :goto_eb
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-eqz v0, :cond_f8

    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v0, :cond_f8

    .line 2484
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2485
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    return-void

    .line 2495
    :cond_f8
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    if-eqz p2, :cond_180

    .line 2504
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v0, :cond_180

    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v8, :cond_180

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_180

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_180

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_180

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_180

    .line 2511
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2512
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2513
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v11, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2514
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v10, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2515
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {v14, v9, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2516
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_17b

    if-eqz v4, :cond_162

    .line 2517
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_162

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_162

    .line 2518
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 2519
    invoke-virtual {v14, v0, v12, v6, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_162
    if-eqz v5, :cond_17b

    .line 2521
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_17b

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    if-nez v0, :cond_17b

    .line 2522
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 2523
    invoke-virtual {v14, v0, v10, v6, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 2526
    :cond_17b
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2527
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    return-void

    .line 2537
    :cond_180
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_1f1

    .line 2539
    invoke-direct {v15, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 2540
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v15, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    move v0, v7

    goto :goto_197

    .line 2543
    :cond_193
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    .line 2547
    :goto_197
    invoke-direct {v15, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 2548
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v15, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    move v1, v7

    goto :goto_1aa

    .line 2551
    :cond_1a6
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v1

    :goto_1aa
    if-nez v0, :cond_1c9

    if-eqz v4, :cond_1c9

    .line 2554
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-eq v2, v3, :cond_1c9

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_1c9

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_1c9

    .line 2559
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    .line 2560
    invoke-virtual {v14, v2, v12, v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_1c9
    if-nez v1, :cond_1ec

    if-eqz v5, :cond_1ec

    .line 2563
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-eq v2, v3, :cond_1ec

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_1ec

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_1ec

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v2, :cond_1ec

    .line 2568
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    .line 2569
    invoke-virtual {v14, v2, v10, v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_1ec
    move/from16 v29, v0

    move/from16 v28, v1

    goto :goto_1f5

    :cond_1f1
    move/from16 v28, v6

    move/from16 v29, v28

    .line 2573
    :goto_1f5
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 2574
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, v1, :cond_1fc

    goto :goto_1fd

    :cond_1fc
    move v1, v0

    .line 2577
    :goto_1fd
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 2578
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, v8, :cond_204

    goto :goto_205

    :cond_204
    move v8, v2

    .line 2583
    :goto_205
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v3, v6

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v22, v1

    if-eq v7, v6, :cond_213

    const/4 v1, 0x1

    :goto_210
    const/16 v20, 0x1

    goto :goto_215

    :cond_213
    const/4 v1, 0x0

    goto :goto_210

    .line 2585
    :goto_215
    aget-object v3, v3, v20

    move/from16 v23, v8

    move-object/from16 v27, v9

    if-eq v3, v6, :cond_21f

    const/4 v8, 0x1

    goto :goto_220

    :cond_21f
    const/4 v8, 0x0

    .line 2591
    :goto_220
    iget v9, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v9, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move-object/from16 v30, v10

    .line 2592
    iget v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v31, v11

    .line 2594
    iget v11, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move-object/from16 v32, v12

    .line 2595
    iget v12, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/16 v24, 0x0

    cmpl-float v24, v10, v24

    move-object/from16 v33, v13

    if-lez v24, :cond_2a7

    .line 2597
    iget v13, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_2a7

    if-ne v7, v6, :cond_245

    if-nez v11, :cond_245

    const/4 v11, 0x3

    :cond_245
    if-ne v3, v6, :cond_24a

    if-nez v12, :cond_24a

    const/4 v12, 0x3

    :cond_24a
    if-ne v7, v6, :cond_257

    if-ne v3, v6, :cond_257

    const/4 v13, 0x3

    if-ne v11, v13, :cond_258

    if-ne v12, v13, :cond_258

    .line 2612
    invoke-virtual {v15, v4, v5, v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    goto :goto_2a0

    :cond_257
    const/4 v13, 0x3

    :cond_258
    const/4 v1, 0x4

    if-ne v7, v6, :cond_277

    if-ne v11, v13, :cond_277

    const/4 v8, 0x0

    .line 2615
    iput v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    int-to-float v0, v2

    mul-float/2addr v10, v0

    float-to-int v0, v10

    if-eq v3, v6, :cond_26e

    move/from16 v36, v1

    move/from16 v35, v12

    move/from16 v34, v23

    const/4 v14, 0x0

    move v1, v0

    goto :goto_2b0

    :cond_26e
    move v1, v0

    move/from16 v36, v11

    move/from16 v35, v12

    :goto_273
    move/from16 v34, v23

    :goto_275
    const/4 v14, 0x1

    goto :goto_2b0

    :cond_277
    if-ne v3, v6, :cond_2a0

    if-ne v12, v13, :cond_2a0

    const/4 v2, 0x1

    .line 2623
    iput v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v2, -0x1

    if-ne v9, v2, :cond_286

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v10

    .line 2626
    iput v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2628
    :cond_286
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v8, v2

    if-eq v7, v6, :cond_297

    move/from16 v35, v1

    move/from16 v34, v8

    move/from16 v36, v11

    move/from16 v1, v22

    :goto_295
    const/4 v14, 0x0

    goto :goto_2b0

    :cond_297
    move/from16 v34, v8

    move/from16 v36, v11

    move/from16 v35, v12

    move/from16 v1, v22

    goto :goto_275

    :cond_2a0
    :goto_2a0
    move/from16 v36, v11

    move/from16 v35, v12

    move/from16 v1, v22

    goto :goto_273

    :cond_2a7
    move/from16 v36, v11

    move/from16 v35, v12

    move/from16 v1, v22

    move/from16 v34, v23

    goto :goto_295

    .line 2636
    :goto_2b0
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v2, 0x0

    aput v36, v0, v2

    const/4 v2, 0x1

    .line 2637
    aput v35, v0, v2

    .line 2638
    iput-boolean v14, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    if-eqz v14, :cond_2c6

    .line 2640
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v2, -0x1

    if-eqz v0, :cond_2c3

    if-ne v0, v2, :cond_2c7

    :cond_2c3
    const/16 v18, 0x1

    goto :goto_2c9

    :cond_2c6
    const/4 v2, -0x1

    :cond_2c7
    const/16 v18, 0x0

    :goto_2c9
    if-eqz v14, :cond_2d5

    .line 2643
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2d2

    if-ne v0, v2, :cond_2d5

    :cond_2d2
    const/16 v37, 0x1

    goto :goto_2d7

    :cond_2d5
    const/16 v37, 0x0

    .line 2647
    :goto_2d7
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v13, :cond_2e6

    instance-of v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_2e6

    const/4 v9, 0x1

    goto :goto_2e7

    :cond_2e6
    const/4 v9, 0x0

    :goto_2e7
    if-eqz v9, :cond_2ec

    const/16 v22, 0x0

    goto :goto_2ee

    :cond_2ec
    move/from16 v22, v1

    .line 2654
    :goto_2ee
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v38, v0, 0x1

    .line 2658
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    const/4 v2, 0x0

    aget-boolean v23, v0, v2

    .line 2659
    aget-boolean v39, v0, v1

    .line 2661
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/16 v40, 0x0

    const/4 v8, 0x2

    if-eq v0, v8, :cond_373

    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-nez v0, :cond_373

    if-eqz p2, :cond_31b

    .line 2662
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v0, :cond_31b

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v2, :cond_31b

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v0, :cond_325

    :cond_31b
    move-object/from16 v12, p1

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    const/16 v3, 0x8

    goto/16 :goto_389

    :cond_325
    if-eqz p2, :cond_371

    .line 2670
    iget v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v12, p1

    move-object/from16 v11, v33

    invoke-virtual {v12, v11, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2671
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v10, v32

    invoke-virtual {v12, v10, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2672
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_35b

    if-eqz v4, :cond_35b

    .line 2673
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_35b

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    if-nez v0, :cond_35b

    .line 2677
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/16 v3, 0x8

    .line 2678
    invoke-virtual {v12, v0, v10, v1, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_35b
    move/from16 v46, v4

    move/from16 v47, v5

    move-object/from16 v48, v6

    move-object/from16 v52, v13

    move/from16 v32, v14

    move-object/from16 v49, v27

    move-object/from16 v50, v30

    move-object/from16 v51, v31

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    goto/16 :goto_42a

    :cond_371
    move-object/from16 v12, p1

    :cond_373
    move/from16 v46, v4

    move/from16 v47, v5

    move-object/from16 v48, v6

    move-object/from16 v52, v13

    move-object/from16 v49, v27

    move-object/from16 v50, v30

    move-object/from16 v51, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v33

    move/from16 v32, v14

    goto/16 :goto_42a

    .line 2663
    :goto_389
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_395

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    move-object v7, v0

    goto :goto_397

    :cond_395
    move-object/from16 v7, v40

    .line 2664
    :goto_397
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_3a4

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_3a6

    :cond_3a4
    move-object/from16 v16, v40

    .line 2665
    :goto_3a6
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/16 v19, 0x0

    aget-boolean v21, v0, v19

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v32, v0, v19

    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-object/from16 v33, v2

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    move/from16 v41, v2

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v43, v3, v19

    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    const/16 v20, 0x1

    aget-object v0, v0, v20

    if-ne v0, v6, :cond_3cb

    move/from16 v44, v20

    goto :goto_3cd

    :cond_3cb
    move/from16 v44, v19

    :goto_3cd
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v24, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v25, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v26, v0

    const/4 v0, 0x1

    move-object/from16 v17, v33

    move/from16 v33, v41

    move/from16 v41, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v45, v1

    move-object/from16 v1, p1

    move/from16 v42, v3

    move v3, v4

    move/from16 v46, v4

    move v4, v5

    move/from16 v47, v5

    move/from16 v5, v21

    move-object/from16 v48, v6

    move-object/from16 v6, v16

    move-object/from16 v8, v32

    move-object/from16 v49, v27

    move-object/from16 v16, v10

    move-object/from16 v50, v30

    move-object/from16 v10, v45

    move-object/from16 v19, v11

    move-object/from16 v51, v31

    move-object/from16 v11, v17

    move-object/from16 v30, v16

    move/from16 v12, v33

    move-object/from16 v52, v13

    move-object/from16 v31, v19

    move/from16 v13, v22

    move/from16 v32, v14

    move/from16 v14, v41

    move/from16 v15, v43

    move/from16 v16, v42

    move/from16 v17, v18

    move/from16 v18, v44

    move/from16 v19, v29

    move/from16 v20, v28

    move/from16 v21, v23

    move/from16 v22, v36

    move/from16 v23, v35

    move/from16 v27, v38

    invoke-direct/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    :goto_42a
    if-eqz p2, :cond_490

    move-object/from16 v15, p0

    .line 2685
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v0, :cond_483

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v2, :cond_483

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_483

    .line 2686
    iget v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v14, p1

    move-object/from16 v13, v51

    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2687
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v12, v50

    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2688
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    move-object/from16 v1, v49

    invoke-virtual {v14, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    .line 2689
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_47d

    if-nez v28, :cond_47d

    if-eqz v47, :cond_47d

    .line 2690
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_479

    .line 2694
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    .line 2695
    invoke-virtual {v14, v0, v12, v10, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto :goto_481

    :cond_479
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_481

    :cond_47d
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_481
    move v7, v10

    goto :goto_49f

    :cond_483
    move-object/from16 v14, p1

    move-object/from16 v1, v49

    move-object/from16 v12, v50

    move-object/from16 v13, v51

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_49e

    :cond_490
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v49

    move-object/from16 v12, v50

    move-object/from16 v13, v51

    :goto_49e
    move v7, v11

    .line 2700
    :goto_49f
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4a6

    move v6, v10

    goto :goto_4a7

    :cond_4a6
    move v6, v7

    :goto_4a7
    if-eqz v6, :cond_588

    .line 2709
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-nez v0, :cond_588

    .line 2711
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v11

    move-object/from16 v3, v52

    if-ne v0, v3, :cond_4bb

    instance-of v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v0, :cond_4bb

    move v9, v11

    goto :goto_4bc

    :cond_4bb
    move v9, v10

    :goto_4bc
    if-eqz v9, :cond_4c0

    move/from16 v34, v10

    .line 2717
    :cond_4c0
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_4cc

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    move-object v7, v0

    goto :goto_4ce

    :cond_4cc
    move-object/from16 v7, v40

    .line 2718
    :goto_4ce
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_4da

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    move-object v6, v0

    goto :goto_4dc

    :cond_4da
    move-object/from16 v6, v40

    .line 2720
    :goto_4dc
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v0, :cond_4e4

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-ne v0, v2, :cond_524

    .line 2722
    :cond_4e4
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_511

    .line 2723
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    .line 2724
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    .line 2725
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 2726
    invoke-virtual {v14, v1, v0, v3, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    if-eqz v47, :cond_50e

    .line 2732
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    const/4 v1, 0x5

    .line 2734
    invoke-virtual {v14, v7, v0, v10, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :cond_50e
    move/from16 v27, v10

    goto :goto_526

    .line 2736
    :cond_511
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    if-ne v3, v2, :cond_51d

    .line 2738
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_524

    .line 2740
    :cond_51d
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    :cond_524
    :goto_524
    move/from16 v27, v38

    .line 2744
    :goto_526
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v0, v11

    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v16, v10, v11

    iget v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    const/16 v17, 0x0

    aget-object v0, v0, v17

    move-object/from16 v11, v48

    if-ne v0, v11, :cond_547

    const/16 v18, 0x1

    goto :goto_549

    :cond_547
    move/from16 v18, v17

    :goto_549
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v24, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v25, v0

    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v26, v0

    const/4 v0, 0x0

    move/from16 v19, v2

    move v2, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-object v11, v3

    move/from16 v3, v47

    move-object/from16 v21, v4

    move/from16 v4, v46

    move/from16 v17, v10

    move-object/from16 v10, v21

    move-object/from16 v33, v12

    move/from16 v12, v20

    move-object/from16 v38, v13

    move/from16 v13, v34

    move/from16 v14, v19

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v37

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v39

    move/from16 v22, v35

    move/from16 v23, v36

    invoke-direct/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    goto :goto_58c

    :cond_588
    move-object/from16 v33, v12

    move-object/from16 v38, v13

    :goto_58c
    move-object/from16 v7, p0

    if-eqz v32, :cond_5b6

    .line 2752
    iget v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/16 v6, 0x8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a7

    .line 2753
    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v38

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/LinearSystem;->addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V

    goto :goto_5b6

    .line 2755
    :cond_5a7
    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v33

    move-object/from16 v4, v38

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/LinearSystem;->addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V

    .line 2759
    :cond_5b6
    :goto_5b6
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5de

    .line 2760
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    iget v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addCenterPoint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V

    :cond_5de
    const/4 v0, 0x0

    .line 2768
    iput-boolean v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 2769
    iput-boolean v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    return-void
.end method

.method public allowedInBarrier()Z
    .registers 3

    .line 1846
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public connectCircularConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .registers 10

    .line 885
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 887
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    return-void
.end method

.method public createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V
    .registers 3

    .line 997
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 998
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 999
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1000
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    .line 1001
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v0, :cond_1d

    .line 1002
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    :cond_1d
    return-void
.end method

.method public ensureWidgetRuns()V
    .registers 2

    .line 773
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-nez v0, :cond_b

    .line 774
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 776
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-nez v0, :cond_16

    .line 777
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    :cond_16
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 4

    .line 2172
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 2200
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_15
    const/4 p1, 0x0

    return-object p1

    .line 2192
    :pswitch_17
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 2189
    :pswitch_1a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 2195
    :pswitch_1d
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 2186
    :pswitch_20
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 2183
    :pswitch_23
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 2180
    :pswitch_26
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 2177
    :pswitch_29
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    .line 2174
    :pswitch_2c
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    return-object p1

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_15
    .end packed-switch
.end method

.method public getBaselineDistance()I
    .registers 2

    .line 1282
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    return v0
.end method

.method public getBiasPercent(I)F
    .registers 3

    if-nez p1, :cond_5

    .line 1259
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1261
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return p1

    :cond_b
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public getBottom()I
    .registers 3

    .line 1199
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .registers 2

    .line 1292
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-object v0
.end method

.method public getDebugName()Ljava/lang/String;
    .registers 2

    .line 950
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .registers 3

    if-nez p1, :cond_7

    .line 2229
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 2231
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object p1

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDimensionRatio()F
    .registers 2

    .line 1535
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    return v0
.end method

.method public getDimensionRatioSide()I
    .registers 2

    .line 1544
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    return v0
.end method

.method public getHeight()I
    .registers 3

    .line 1106
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1109
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    return v0
.end method

.method public getHorizontalBiasPercent()F
    .registers 2

    .line 1237
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return v0
.end method

.method public getHorizontalChainStyle()I
    .registers 2

    .line 1819
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .registers 3

    .line 2209
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHorizontalMargin()I
    .registers 3

    .line 1207
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_7

    .line 1208
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1210
    :goto_8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_f

    .line 1211
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    :cond_f
    return v0
.end method

.method public getLastHorizontalMeasureSpec()I
    .registers 2

    .line 400
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    return v0
.end method

.method public getLastVerticalMeasureSpec()I
    .registers 2

    .line 401
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    return v0
.end method

.method public getLength(I)I
    .registers 3

    if-nez p1, :cond_7

    .line 1120
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1

    :cond_7
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 1122
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public getMaxHeight()I
    .registers 3

    .line 321
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMaxWidth()I
    .registers 3

    .line 325
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMinHeight()I
    .registers 2

    .line 1163
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .line 1154
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    return v0
.end method

.method public getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 4

    if-nez p1, :cond_f

    .line 2295
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1f

    .line 2296
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p1

    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 2299
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1f

    .line 2300
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 2

    .line 829
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0
.end method

.method public getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 4

    if-nez p1, :cond_f

    .line 2276
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1f

    .line 2277
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p1

    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 2280
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1f

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, p1, :cond_1f

    .line 2281
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object p1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRight()I
    .registers 3

    .line 1190
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    move-result v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .registers 3

    if-nez p1, :cond_5

    .line 85
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    return-object p1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 87
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSceneString(Ljava/lang/StringBuilder;)V
    .registers 14

    .line 3588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    actualWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3590
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3594
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3596
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3597
    const-string v0, "left"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3598
    const-string v0, "top"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3599
    const-string v0, "right"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3600
    const-string v0, "bottom"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3601
    const-string v0, "baseline"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3602
    const-string v0, "centerX"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3603
    const-string v0, "centerY"

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    .line 3604
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v11, 0x0

    aget v5, v0, v11

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iget v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v10, v0, v11

    const-string v2, "    width"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    .line 3615
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iget v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    aget v10, v0, v1

    const-string v2, "    height"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    .line 3624
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const-string v2, "    dimensionRatio"

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeDimensionRatio(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V

    .line 3625
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    sget v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    const-string v2, "    horizontalBias"

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 3626
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    sget v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    const-string v2, "    verticalBias"

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 3627
    const-string v0, "    horizontalChainStyle"

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    invoke-direct {p0, p1, v0, v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3628
    const-string v0, "    verticalChainStyle"

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    invoke-direct {p0, p1, v0, v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 3630
    const-string v0, "  }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getVerticalBiasPercent()F
    .registers 2

    .line 1247
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return v0
.end method

.method public getVerticalChainStyle()I
    .registers 2

    .line 1839
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .registers 3

    .line 2218
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getVerticalMargin()I
    .registers 3

    .line 1221
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v0, :cond_9

    .line 1222
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1224
    :goto_a
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_13

    .line 1225
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method

.method public getVisibility()I
    .registers 2

    .line 923
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 1058
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 1061
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    return v0
.end method

.method public getX()I
    .registers 3

    .line 1034
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_10

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_10

    .line 1035
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    add-int/2addr v0, v1

    return v0

    .line 1037
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    return v0
.end method

.method public getY()I
    .registers 3

    .line 1046
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_10

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-eqz v1, :cond_10

    .line 1047
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    add-int/2addr v0, v1

    return v0

    .line 1049
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    return v0
.end method

.method public hasBaseline()Z
    .registers 2

    .line 1273
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    return v0
.end method

.method public hasDanglingDimension(I)Z
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1c

    .line 228
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_d

    move p1, v2

    goto :goto_e

    :cond_d
    move p1, v1

    :goto_e
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_16

    move v3, v2

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_1b

    move v1, v2

    :cond_1b
    return v1

    .line 231
    :cond_1c
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_24

    move p1, v2

    goto :goto_25

    :cond_24
    move p1, v1

    :goto_25
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2d

    move v3, v2

    goto :goto_2e

    :cond_2d
    move v3, v1

    :goto_2e
    add-int/2addr p1, v3

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v3, :cond_37

    move v3, v2

    goto :goto_38

    :cond_37
    move v3, v1

    :goto_38
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_3c

    move v1, v2

    :cond_3c
    return v1
.end method

.method public hasDependencies()Z
    .registers 5

    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 218
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 219
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public hasDimensionOverride()Z
    .registers 3

    .line 722
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    if-eq v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public hasResolvedTargets(II)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_40

    .line 238
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_7c

    .line 239
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 240
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result p1

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 241
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p1, v2

    if-lt p1, p2, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    return v0

    .line 244
    :cond_40
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz p1, :cond_7c

    .line 245
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 246
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result p1

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 247
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p1, v2

    if-lt p1, p2, :cond_7a

    goto :goto_7b

    :cond_7a
    move v0, v1

    :goto_7b
    return v0

    :cond_7c
    return v1
.end method

.method public immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V
    .registers 6

    .line 1864
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p1

    .line 1865
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object p2

    const/4 p3, 0x1

    .line 1866
    invoke-virtual {p1, p2, p4, p5, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    return-void
.end method

.method public isHorizontalSolvingPassDone()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    return v0
.end method

.method public isInBarrier(I)Z
    .registers 3

    .line 373
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public isInHorizontalChain()Z
    .registers 3

    .line 2261
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_a

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eq v1, v0, :cond_14

    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_16

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaceholder()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    return v0
.end method

.method public isInVerticalChain()Z
    .registers 3

    .line 2342
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_a

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eq v1, v0, :cond_14

    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_16

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-ne v1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isInVirtualLayout()Z
    .registers 2

    .line 313
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    return v0
.end method

.method public isMeasureRequested()Z
    .registers 3

    .line 381
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    if-eqz v0, :cond_c

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public isVerticalSolvingPassDone()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    return v0
.end method

.method public markHorizontalSolvingPassDone()V
    .registers 2

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    return-void
.end method

.method public markVerticalSolvingPassDone()V
    .registers 2

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    return-void
.end method

.method public oppositeDimensionsTied()Z
    .registers 5

    .line 716
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-ne v0, v3, :cond_f

    move v1, v2

    :cond_f
    return v1
.end method

.method public reset()V
    .registers 7

    .line 517
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 518
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 519
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 520
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 521
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 522
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 523
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    .line 524
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v1, 0x0

    .line 526
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/4 v2, 0x0

    .line 527
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 528
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 529
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, -0x1

    .line 530
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 531
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 532
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 533
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    .line 534
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    .line 535
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 536
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    .line 537
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    .line 538
    sget v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 539
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 540
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    .line 541
    aput-object v4, v3, v5

    .line 542
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    .line 543
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 544
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 545
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 546
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 547
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 548
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 549
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 550
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 551
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 552
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 553
    aput v3, v0, v5

    .line 554
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 555
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 556
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 557
    aput v3, v0, v5

    .line 558
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 559
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 560
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 561
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 562
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 563
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 564
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 565
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 566
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    .line 567
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 568
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 569
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 570
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v5, v0, v2

    .line 571
    aput-boolean v5, v0, v5

    .line 572
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    .line 573
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean v2, v0, v2

    .line 574
    aput-boolean v2, v0, v5

    .line 575
    iput-boolean v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    .line 576
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aput v2, v0, v2

    .line 577
    aput v2, v0, v5

    .line 578
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 579
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    return-void
.end method

.method public resetFinalResolution()V
    .registers 4

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    .line 203
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    .line 204
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    .line 205
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    .line 206
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_f
    if-ge v0, v1, :cond_1f

    .line 207
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 208
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetFinalResolution()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V
    .registers 3

    .line 790
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 791
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 792
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 793
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 794
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 795
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 796
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    .line 797
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    return-void
.end method

.method public setBaselineDistance(I)V
    .registers 2

    .line 1745
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 1746
    :goto_7
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .registers 2

    .line 1756
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .registers 2

    .line 957
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_90

    .line 1460
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_90

    .line 1466
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2c

    .line 1467
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-lez v2, :cond_39

    add-int/lit8 v6, v1, -0x1

    if-ge v2, v6, :cond_39

    .line 1469
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1470
    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    goto :goto_36

    .line 1472
    :cond_2b
    const-string v3, "H"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    move v3, v4

    goto :goto_36

    :cond_35
    move v3, v5

    :goto_36
    add-int/2addr v2, v4

    move v5, v3

    move v3, v2

    :cond_39
    const/16 v2, 0x3a

    .line 1479
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_77

    sub-int/2addr v1, v4

    if-ge v2, v1, :cond_77

    .line 1482
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v4

    .line 1483
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1484
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_86

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_86

    .line 1486
    :try_start_59
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1487
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_86

    cmpl-float v2, p1, v0

    if-lez v2, :cond_86

    if-ne v5, v4, :cond_71

    div-float/2addr p1, v1

    .line 1490
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_87

    :cond_71
    div-float/2addr v1, p1

    .line 1492
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_76} :catch_86

    goto :goto_87

    .line 1500
    :cond_77
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_86

    .line 1503
    :try_start_81
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_85} :catch_86

    goto :goto_87

    :catch_86
    :cond_86
    move p1, v0

    :goto_87
    cmpl-float v0, p1, v0

    if-lez v0, :cond_8f

    .line 1511
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 1512
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    :cond_8f
    return-void

    .line 1461
    :cond_90
    :goto_90
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    return-void
.end method

.method public setFinalBaseline(I)V
    .registers 5

    .line 181
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    if-nez v0, :cond_5

    return-void

    .line 184
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    sub-int v0, p1, v0

    .line 185
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v1, v0

    .line 186
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 187
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 189
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    return-void
.end method

.method public setFinalHorizontal(II)V
    .registers 4

    .line 148
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    if-eqz v0, :cond_5

    return-void

    .line 151
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 152
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 153
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    sub-int/2addr p2, p1

    .line 154
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    return-void
.end method

.method public setFinalLeft(I)V
    .registers 3

    .line 117
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 118
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    return-void
.end method

.method public setFinalTop(I)V
    .registers 3

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 123
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setFinalVertical(II)V
    .registers 4

    .line 163
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    if-eqz v0, :cond_5

    return-void

    .line 166
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 167
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    .line 168
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    sub-int/2addr p2, p1

    .line 169
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 170
    iget-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    if-eqz p2, :cond_20

    .line 171
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    :cond_20
    const/4 p1, 0x1

    .line 173
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    return-void
.end method

.method public setFrame(IIII)V
    .registers 7

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    .line 1622
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1623
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 1625
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_12

    .line 1626
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1627
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    return-void

    .line 1632
    :cond_12
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p1, v0

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_1f

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    if-ge p3, v1, :cond_1f

    move p3, v1

    :cond_1f
    const/4 v1, 0x1

    .line 1635
    aget-object p1, p1, v1

    if-ne p1, v0, :cond_29

    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    if-ge p4, p1, :cond_29

    move p4, p1

    .line 1639
    :cond_29
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1640
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1642
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p4, p1, :cond_33

    .line 1643
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1645
    :cond_33
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p3, p1, :cond_39

    .line 1646
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1648
    :cond_39
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez p1, :cond_49

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_49

    .line 1649
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1651
    :cond_49
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez p1, :cond_5d

    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v1

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_5d

    .line 1652
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1654
    :cond_5d
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    if-eq p3, p1, :cond_63

    .line 1655
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    .line 1657
    :cond_63
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    if-eq p4, p1, :cond_69

    .line 1658
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    :cond_69
    return-void
.end method

.method public setHasBaseline(Z)V
    .registers 2

    .line 353
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    return-void
.end method

.method public setHeight(I)V
    .registers 3

    .line 1398
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1399
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, v0, :cond_8

    .line 1400
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    :cond_8
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .registers 2

    .line 1554
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .registers 2

    .line 1809
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    return-void
.end method

.method public setHorizontalDimension(II)V
    .registers 3

    .line 1688
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    sub-int/2addr p2, p1

    .line 1689
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1690
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p2, p1, :cond_b

    .line 1691
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    :cond_b
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 4

    .line 2243
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .registers 5

    .line 1427
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 1428
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    const p2, 0x7fffffff

    if-ne p3, p2, :cond_a

    const/4 p3, 0x0

    .line 1429
    :cond_a
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 1430
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1e

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_1e

    if-nez p1, :cond_1e

    const/4 p1, 0x2

    .line 1432
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    :cond_1e
    return-void
.end method

.method public setHorizontalWeight(F)V
    .registers 4

    .line 1790
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method protected setInBarrier(IZ)V
    .registers 4

    .line 369
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setInPlaceholder(Z)V
    .registers 2

    .line 365
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    return-void
.end method

.method public setInVirtualLayout(Z)V
    .registers 2

    .line 317
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    return-void
.end method

.method public setLastMeasureSpec(II)V
    .registers 3

    .line 403
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    .line 404
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    const/4 p1, 0x0

    .line 405
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    return-void
.end method

.method public setMaxHeight(I)V
    .registers 4

    .line 333
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 4

    .line 329
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setMeasureRequested(Z)V
    .registers 2

    .line 377
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    return-void
.end method

.method public setMinHeight(I)V
    .registers 2

    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 1587
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_8

    .line 1589
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    :goto_8
    return-void
.end method

.method public setMinWidth(I)V
    .registers 2

    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 1574
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_8

    .line 1576
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    :goto_8
    return-void
.end method

.method public setOrigin(II)V
    .registers 3

    .line 1329
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    .line 1330
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setParent(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 2

    .line 838
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .registers 2

    .line 1564
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    return-void
.end method

.method public setVerticalChainStyle(I)V
    .registers 2

    .line 1829
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    return-void
.end method

.method public setVerticalDimension(II)V
    .registers 3

    .line 1702
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    sub-int/2addr p2, p1

    .line 1703
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 1704
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p2, p1, :cond_b

    .line 1705
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    :cond_b
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 4

    .line 2252
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .registers 5

    .line 1445
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 1446
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    const p2, 0x7fffffff

    if-ne p3, p2, :cond_a

    const/4 p3, 0x0

    .line 1447
    :cond_a
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 1448
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1e

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_1e

    if-nez p1, :cond_1e

    const/4 p1, 0x2

    .line 1450
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    :cond_1e
    return-void
.end method

.method public setVerticalWeight(F)V
    .registers 4

    .line 1799
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 914
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    return-void
.end method

.method public setWidth(I)V
    .registers 3

    .line 1386
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 1387
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v0, :cond_8

    .line 1388
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    :cond_8
    return-void
.end method

.method public setWrapBehaviorInParent(I)V
    .registers 3

    if-ltz p1, :cond_7

    const/4 v0, 0x3

    if-gt p1, v0, :cond_7

    .line 386
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    :cond_7
    return-void
.end method

.method public setX(I)V
    .registers 2

    .line 1310
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    return-void
.end method

.method public setY(I)V
    .registers 2

    .line 1319
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .registers 8

    .line 2790
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_20

    if-eqz p3, :cond_10

    if-nez p4, :cond_10

    .line 2792
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_20

    :cond_10
    if-nez p3, :cond_20

    if-eqz p4, :cond_20

    .line 2794
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2795
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne p1, v2, :cond_20

    .line 2797
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p1, p2, p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2802
    :cond_20
    :goto_20
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez p1, :cond_37

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-nez p1, :cond_37

    .line 2803
    :cond_34
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_4d

    .line 2804
    :cond_37
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p1, v1, :cond_4d

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-nez p1, :cond_4d

    .line 2805
    :cond_4b
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2809
    :cond_4d
    :goto_4d
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p1, v2, :cond_9c

    .line 2810
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2811
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_71

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-nez p1, :cond_9c

    .line 2813
    :cond_71
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 2814
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_9c

    .line 2815
    :cond_84
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_9c

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 2816
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p1, p2, p1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2817
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 2831
    :cond_9c
    :goto_9c
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p1, v2, :cond_b8

    .line 2832
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez p1, :cond_ab

    iget p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez p3, :cond_ab

    .line 2833
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto :goto_b8

    :cond_ab
    if-nez p1, :cond_b8

    .line 2834
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez p1, :cond_b8

    .line 2835
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr p2, p1

    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    .line 2836
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    :cond_b8
    :goto_b8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const-string v2, ""

    const-string v3, " "

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_24
    move-object v1, v2

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromRuns(ZZ)V
    .registers 10

    .line 3483
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->isResolved()Z

    move-result v0

    and-int/2addr p1, v0

    .line 3484
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->isResolved()Z

    move-result v0

    and-int/2addr p2, v0

    .line 3485
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3486
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3487
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3488
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    sub-int v4, v0, v1

    sub-int v5, v2, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_40

    if-ltz v5, :cond_40

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_40

    const v5, 0x7fffffff

    if-eq v1, v5, :cond_40

    if-eq v3, v4, :cond_40

    if-eq v3, v5, :cond_40

    if-eq v0, v4, :cond_40

    if-eq v0, v5, :cond_40

    if-eq v2, v4, :cond_40

    if-ne v2, v5, :cond_44

    :cond_40
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_44
    sub-int/2addr v0, v1

    sub-int/2addr v2, v3

    if-eqz p1, :cond_4a

    .line 3506
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    :cond_4a
    if-eqz p2, :cond_4e

    .line 3509
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    .line 3512
    :cond_4e
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_59

    .line 3513
    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3514
    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    return-void

    :cond_59
    if-eqz p1, :cond_70

    .line 3520
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v6

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v1, :cond_68

    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    if-ge v0, p1, :cond_68

    move v0, p1

    .line 3523
    :cond_68
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    .line 3524
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v0, p1, :cond_70

    .line 3525
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    :cond_70
    if-eqz p2, :cond_88

    .line 3530
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_80

    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    if-ge v2, p1, :cond_80

    move v2, p1

    .line 3533
    :cond_80
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    .line 3534
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v2, p1, :cond_88

    .line 3535
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    :cond_88
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 9

    .line 3352
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 3353
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v1

    .line 3354
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v2

    .line 3355
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_2e

    .line 3357
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v3, :cond_2e

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v5, :cond_2e

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v5, :cond_2e

    .line 3358
    iget v0, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3359
    iget v2, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    :cond_2e
    if-eqz p2, :cond_44

    .line 3361
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz p2, :cond_44

    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_44

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v4, :cond_44

    .line 3362
    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 3363
    iget p1, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    :cond_44
    sub-int p2, v2, v0

    sub-int v3, p1, v1

    if-ltz p2, :cond_61

    if-ltz v3, :cond_61

    const/high16 p2, -0x80000000

    if-eq v0, p2, :cond_61

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_61

    if-eq v1, p2, :cond_61

    if-eq v1, v3, :cond_61

    if-eq v2, p2, :cond_61

    if-eq v2, v3, :cond_61

    if-eq p1, p2, :cond_61

    if-ne p1, v3, :cond_65

    :cond_61
    const/4 v0, 0x0

    move p1, v0

    move v1, p1

    move v2, v1

    .line 3378
    :cond_65
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFrame(IIII)V

    return-void
.end method
