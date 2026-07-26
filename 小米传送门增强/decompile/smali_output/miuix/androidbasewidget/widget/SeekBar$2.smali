.class Lmiuix/androidbasewidget/widget/SeekBar$2;
.super Ljava/lang/Object;
.source "SeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field final synthetic this$0:Lmiuix/androidbasewidget/widget/SeekBar;


# direct methods
.method constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .registers 2

    .line 834
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .registers 3

    .line 838
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_11

    .line 839
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 841
    :cond_11
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 846
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mIsThumbTheme:Z
    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    const v4, 0x3f666666    # 0.9f

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    if-nez v2, :cond_c4

    .line 847
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z
    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$200(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v2

    if-eqz v2, :cond_c4

    if-eqz p3, :cond_c4

    .line 848
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    iget-object v7, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # invokes: Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I
    invoke-static {v7}, Lmiuix/androidbasewidget/widget/SeekBar;->access$300(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v7, v2

    mul-float v8, v7, v6

    .line 849
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    if-lez v2, :cond_3e

    .line 850
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # invokes: Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I
    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$300(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    goto :goto_3f

    :cond_3e
    move v2, v5

    .line 851
    :goto_3f
    iget-object v7, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F
    invoke-static {v7}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v7

    cmpl-float v7, v2, v7

    if-lez v7, :cond_59

    iget-object v7, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F
    invoke-static {v7}, Lmiuix/androidbasewidget/widget/SeekBar;->access$500(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_59

    .line 852
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # setter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgress:I
    invoke-static {v2, v8}, Lmiuix/androidbasewidget/widget/SeekBar;->access$602(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    goto :goto_7d

    .line 854
    :cond_59
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # setter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgress:I
    invoke-static {v2, p2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$602(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    .line 855
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgressAnimator:Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;
    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$800(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;->folme()Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object v2

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->PROPERTY_PROGRESS:Lmiuix/animation/property/IntValueProperty;
    invoke-static {}, Lmiuix/androidbasewidget/widget/SeekBar;->access$700()Lmiuix/animation/property/IntValueProperty;

    move-result-object v7

    iget-object v8, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgress:I
    invoke-static {v8}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Lmiuix/animation/Folme$SimpleFolmeImpl;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 857
    :goto_7d
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v7, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgress:I
    invoke-static {v7}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v7

    if-eq v2, v7, :cond_c4

    .line 858
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgressAnimator:Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;
    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$800(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;->folme()Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object v2

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->PROPERTY_PROGRESS:Lmiuix/animation/property/IntValueProperty;
    invoke-static {}, Lmiuix/androidbasewidget/widget/SeekBar;->access$700()Lmiuix/animation/property/IntValueProperty;

    move-result-object v7

    iget-object v8, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgress:I
    invoke-static {v8}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v9}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 859
    invoke-static {v4, v3}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v9

    new-instance v10, Lmiuix/androidbasewidget/widget/SeekBar$2$1;

    invoke-direct {v10, p0}, Lmiuix/androidbasewidget/widget/SeekBar$2$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar$2;)V

    new-array v11, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v10, v11, v0

    .line 860
    invoke-virtual {v9, v11}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 858
    invoke-virtual {v2, v7}, Lmiuix/animation/Folme$SimpleFolmeImpl;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 873
    :cond_c4
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMinPercentProgress:F
    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$900(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v7

    # invokes: Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I
    invoke-static {v2, v7}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;F)I

    move-result v2

    .line 874
    iget-object v7, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDraggableMaxPercentProcess:F
    invoke-static {v7}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1100(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v8

    # invokes: Lmiuix/androidbasewidget/widget/SeekBar;->getProgressForm(F)I
    invoke-static {v7, v8}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;F)I

    move-result v7

    if-ge p2, v2, :cond_e1

    .line 877
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p2, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V

    move p2, v2

    goto :goto_e9

    :cond_e1
    if-le p2, v7, :cond_e9

    .line 880
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p2, v7}, Lmiuix/androidbasewidget/widget/SeekBar;->setProgress(I)V

    move p2, v7

    .line 883
    :cond_e9
    :goto_e9
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mIsThumbTheme:Z
    invoke-static {v8}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v8

    if-eqz v8, :cond_22f

    if-eqz p3, :cond_229

    .line 885
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z
    invoke-static {v8}, Lmiuix/androidbasewidget/widget/SeekBar;->access$200(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v8

    if-eqz v8, :cond_136

    .line 886
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    iget-object v9, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # invokes: Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I
    invoke-static {v9}, Lmiuix/androidbasewidget/widget/SeekBar;->access$300(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v9, v8

    mul-float/2addr v6, v9

    .line 887
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v10, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # invokes: Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I
    invoke-static {v10}, Lmiuix/androidbasewidget/widget/SeekBar;->access$300(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v10

    add-int/2addr v6, v10

    if-lez v8, :cond_121

    .line 888
    iget-object v5, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # invokes: Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I
    invoke-static {v5}, Lmiuix/androidbasewidget/widget/SeekBar;->access$300(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v5

    sub-int v5, p2, v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    .line 889
    :cond_121
    iget-object v8, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F
    invoke-static {v8}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_136

    iget-object v8, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F
    invoke-static {v8}, Lmiuix/androidbasewidget/widget/SeekBar;->access$500(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_136

    move p2, v6

    .line 894
    :cond_136
    iget-object v5, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mIsTouchUpEvent:Z
    invoke-static {v5}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1200(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    .line 895
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # setter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgress:I
    invoke-static {v3, p2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$602(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    .line 896
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mIsTouchAnimationEnabled:Z
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1300(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v3

    if-eqz v3, :cond_186

    .line 897
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDrawProgressAnimator:Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1600(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;->folme()Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object v3

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->PROPERTY_DRAW_PROGRESS:Lmiuix/animation/property/IntValueProperty;
    invoke-static {}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1400()Lmiuix/animation/property/IntValueProperty;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const v8, 0x3f75c28f    # 0.96f

    const v9, 0x3eb33333    # 0.35f

    .line 898
    invoke-static {v8, v9}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v8

    invoke-virtual {v6, v8}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    new-instance v8, Lmiuix/androidbasewidget/widget/SeekBar$2$2;

    invoke-direct {v8, p0}, Lmiuix/androidbasewidget/widget/SeekBar$2$2;-><init>(Lmiuix/androidbasewidget/widget/SeekBar$2;)V

    new-array v9, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v8, v9, v0

    .line 899
    invoke-virtual {v6, v9}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 897
    invoke-virtual {v3, v4}, Lmiuix/animation/Folme$SimpleFolmeImpl;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto/16 :goto_223

    .line 909
    :cond_186
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgress:I
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v4

    int-to-float v4, v4

    # setter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDrawProgress:F
    invoke-static {v3, v4}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1502(Lmiuix/androidbasewidget/widget/SeekBar;F)F

    .line 910
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDrawProgressAnimator:Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1600(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;->folme()Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object v3

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->PROPERTY_DRAW_PROGRESS:Lmiuix/animation/property/IntValueProperty;
    invoke-static {}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1400()Lmiuix/animation/property/IntValueProperty;

    move-result-object v4

    iget-object v5, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDrawProgress:F
    invoke-static {v5}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1500(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/animation/Folme$SimpleFolmeImpl;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_223

    .line 913
    :cond_1b0
    iget-object v5, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # setter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgress:I
    invoke-static {v5, p2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$602(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    .line 914
    iget-object v5, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mIsDragAnimationEnabled:Z
    invoke-static {v5}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1700(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v5

    if-nez v5, :cond_1f0

    iget-object v5, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z
    invoke-static {v5}, Lmiuix/androidbasewidget/widget/SeekBar;->access$200(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v5

    if-eqz v5, :cond_1c6

    goto :goto_1f0

    .line 935
    :cond_1c6
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mProgress:I
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v4

    int-to-float v4, v4

    # setter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDrawProgress:F
    invoke-static {v3, v4}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1502(Lmiuix/androidbasewidget/widget/SeekBar;F)F

    .line 936
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDrawProgressAnimator:Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;
    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1600(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;

    move-result-object v3

    invoke-virtual {v3}, Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;->folme()Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object v3

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->PROPERTY_DRAW_PROGRESS:Lmiuix/animation/property/IntValueProperty;
    invoke-static {}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1400()Lmiuix/animation/property/IntValueProperty;

    move-result-object v4

    iget-object v5, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDrawProgress:F
    invoke-static {v5}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1500(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/animation/Folme$SimpleFolmeImpl;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_223

    .line 915
    :cond_1f0
    :goto_1f0
    iget-object v5, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDrawProgressAnimator:Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;
    invoke-static {v5}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1600(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;

    move-result-object v5

    invoke-virtual {v5}, Lmiuix/androidbasewidget/widget/SeekBar$ProgressAnimTarget;->folme()Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object v5

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->PROPERTY_DRAW_PROGRESS:Lmiuix/animation/property/IntValueProperty;
    invoke-static {}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1400()Lmiuix/animation/property/IntValueProperty;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v9}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 916
    invoke-static {v4, v3}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v9, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-instance v4, Lmiuix/androidbasewidget/widget/SeekBar$2$3;

    invoke-direct {v4, p0}, Lmiuix/androidbasewidget/widget/SeekBar$2$3;-><init>(Lmiuix/androidbasewidget/widget/SeekBar$2;)V

    new-array v9, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v4, v9, v0

    .line 917
    invoke-virtual {v3, v9}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v6, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 915
    invoke-virtual {v5, v3}, Lmiuix/animation/Folme$SimpleFolmeImpl;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 939
    :goto_223
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # setter for: Lmiuix/androidbasewidget/widget/SeekBar;->mIsTouchUpEvent:Z
    invoke-static {v3, v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1202(Lmiuix/androidbasewidget/widget/SeekBar;Z)Z

    goto :goto_22f

    .line 941
    :cond_229
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    int-to-float v4, p2

    # setter for: Lmiuix/androidbasewidget/widget/SeekBar;->mDrawProgress:F
    invoke-static {v3, v4}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1502(Lmiuix/androidbasewidget/widget/SeekBar;F)F

    :cond_22f
    :goto_22f
    if-eq p2, v2, :cond_233

    if-ne p2, v7, :cond_234

    :cond_233
    move v0, v1

    :cond_234
    if-eqz p3, :cond_277

    .line 950
    const-string v1, "2.0"

    if-eqz v0, :cond_264

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z
    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1800(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v2

    if-nez v2, :cond_264

    .line 951
    invoke-static {v1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25e

    if-ne p2, v7, :cond_254

    .line 953
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar$2;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-virtual {v1, v2}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_277

    .line 955
    :cond_254
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar$2;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    move-result-object v1

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_277

    .line 958
    :cond_25e
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p1, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    goto :goto_277

    .line 960
    :cond_264
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z
    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1800(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v2

    if-nez v2, :cond_277

    .line 961
    invoke-static {v1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_277

    .line 962
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    invoke-static {p1, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 967
    :cond_277
    :goto_277
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # setter for: Lmiuix/androidbasewidget/widget/SeekBar;->mHasEdgeReached:Z
    invoke-static {v1, v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1802(Lmiuix/androidbasewidget/widget/SeekBar;Z)Z

    .line 968
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1900(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_28d

    .line 969
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1900(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_28d
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 976
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1900(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 977
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1900(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_11
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 983
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1900(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 984
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$2;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    # getter for: Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1900(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_11
    return-void
.end method
