.class Lmiuix/popupwidget/widget/PopupAnimHelper$5;
.super Ljava/lang/Object;
.source "PopupAnimHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/PopupAnimHelper;->showWithAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

.field final synthetic val$gravity:I

.field final synthetic val$layoutDirection:I


# direct methods
.method constructor <init>(Lmiuix/popupwidget/widget/PopupAnimHelper;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    iput p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->val$gravity:I

    iput p3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->val$layoutDirection:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 148
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 149
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_133

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_133

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_35

    goto/16 :goto_133

    .line 153
    :cond_35
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 154
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v3}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 155
    iget-object v4, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v4}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 156
    iget-object v5, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v5}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 158
    iget-object v6, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mScaleListener:Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;
    invoke-static {v6}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$600(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 159
    iget-object v6, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mAnimConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {v6}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$700(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    iget-object v7, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mScaleListener:Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;
    invoke-static {v7}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$600(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;

    move-result-object v7

    new-array v8, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v7, v8, v0

    invoke-virtual {v6, v8}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 161
    :cond_78
    iget-object v6, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    new-instance v7, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->val$gravity:I

    iget v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->val$layoutDirection:I

    invoke-direct {v7, v6, v8, v2, v3}, Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;-><init>(Lmiuix/popupwidget/widget/PopupAnimHelper;Landroid/graphics/Rect;II)V

    # setter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mScaleListener:Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;
    invoke-static {v6, v7}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$602(Lmiuix/popupwidget/widget/PopupAnimHelper;Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;)Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;

    .line 162
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mAnimConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {v2}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$700(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mScaleListener:Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;
    invoke-static {v3}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$600(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/popupwidget/widget/PopupAnimHelper$ScaleListener;

    move-result-object v3

    new-array v1, v1, [Lmiuix/animation/listener/TransitionListener;

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 163
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mAnimConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$700(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_DIM:Lmiuix/animation/property/ValueProperty;
    invoke-static {}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$800()Lmiuix/animation/property/ValueProperty;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Lmiuix/animation/FolmeEase;->sinOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    new-array v4, v0, [F

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    .line 165
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$500(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v3, 0x0

    .line 166
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiuix/animation/FolmeStyle;->resetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 167
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mEnterAlphaConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {v4}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$900(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 168
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_FRACTION:Lmiuix/animation/property/ValueProperty;
    invoke-static {}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$1000()Lmiuix/animation/property/ValueProperty;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_DIM:Lmiuix/animation/property/ValueProperty;
    invoke-static {}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$800()Lmiuix/animation/property/ValueProperty;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 169
    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v3, "end"

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_FRACTION:Lmiuix/animation/property/ValueProperty;
    invoke-static {}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$1000()Lmiuix/animation/property/ValueProperty;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->POPUP_DIM:Lmiuix/animation/property/ValueProperty;
    invoke-static {}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$800()Lmiuix/animation/property/ValueProperty;

    move-result-object v3

    iget-object v4, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mDimValue:F
    invoke-static {v4}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$1100(Lmiuix/popupwidget/widget/PopupAnimHelper;)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    .line 170
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    invoke-static {v3}, Lmiuix/animation/Folme;->use(Lmiuix/animation/FolmeObject;)Lmiuix/animation/Folme$ObjectFolmeImpl;

    .line 171
    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    invoke-virtual {v3}, Lmiuix/popupwidget/widget/PopupAnimHelper;->folme()Lmiuix/animation/Folme$ObjectFolmeImpl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiuix/animation/Folme$SimpleFolmeImpl;->resetTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$5;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mAnimConfig:Lmiuix/animation/base/AnimConfig;
    invoke-static {v3}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$700(Lmiuix/popupwidget/widget/PopupAnimHelper;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return v0

    :cond_133
    :goto_133
    return v1
.end method
