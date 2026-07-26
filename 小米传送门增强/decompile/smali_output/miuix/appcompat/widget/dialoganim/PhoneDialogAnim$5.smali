.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;
.super Ljava/lang/Object;
.source "PhoneDialogAnim.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->setupImeAnimation(Landroid/view/WindowInsetsController;Landroid/view/View;Lmiuix/animation/base/AnimConfig;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

.field final synthetic val$config:Lmiuix/animation/base/AnimConfig;

.field final synthetic val$totalHeight:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;ILmiuix/animation/base/AnimConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iput-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->val$view:Landroid/view/View;

    iput p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->val$totalHeight:I

    iput-object p4, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->val$config:Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .registers 7

    .line 255
    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mAnimator:Lmiuix/animation/IFolme;
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$600(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Lmiuix/animation/IFolme;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 256
    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mAnimator:Lmiuix/animation/IFolme;
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$600(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 258
    :cond_11
    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # setter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;
    invoke-static {p2, p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$702(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/WindowInsetsAnimationController;)Landroid/view/WindowInsetsAnimationController;

    .line 259
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;
    invoke-static {p1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$700(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Landroid/view/WindowInsetsAnimationController;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object p1

    .line 260
    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mWindowInsetsAnimationController:Landroid/view/WindowInsetsAnimationController;
    invoke-static {p2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$700(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Landroid/view/WindowInsetsAnimationController;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object p2

    .line 261
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 262
    iget v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->val$totalHeight:I

    int-to-float v1, v1

    .line 263
    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->val$config:Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5$1;

    invoke-direct {v3, p0, v0, p1, p2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5$1;-><init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;FLandroid/graphics/Insets;Landroid/graphics/Insets;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lmiuix/animation/listener/TransitionListener;

    const/4 p2, 0x0

    aput-object v3, p1, p2

    invoke-virtual {v2, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 300
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->val$view:Landroid/view/View;

    invoke-static {p1}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$5;->val$config:Lmiuix/animation/base/AnimConfig;

    filled-new-array {p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method
