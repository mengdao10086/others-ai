.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "PhoneDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefUpdateListener"
.end annotation


# instance fields
.field mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Landroid/view/View;)V
    .registers 3

    .line 750
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 751
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 756
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez p1, :cond_b

    return-void

    .line 761
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_9e

    .line 762
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 764
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    .line 765
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 766
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    if-eqz v1, :cond_44

    .line 767
    iget-object v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mDiscardImeAnimEnabled:Z
    invoke-static {v3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$800(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 768
    iget-object v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iget v4, v2, Landroid/graphics/Insets;->bottom:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    # setter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I
    invoke-static {v3, v4}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$102(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    goto :goto_4a

    .line 770
    :cond_44
    iget-object v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    const/4 v4, 0x0

    # setter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I
    invoke-static {v3, v4}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$102(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    .line 772
    :goto_4a
    iget-object v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mIsDebugMode:Z
    invoke-static {v3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$300(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationEnd: isImeVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImeHeight = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I
    invoke-static {v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PhoneDialogAnim"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationEnd: imeInsets = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd: navigationBarInsets = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_9e
    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->DIALOG_ANIM_Y:Lmiuix/animation/property/ValueProperty;
    invoke-static {}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$1000()Lmiuix/animation/property/ValueProperty;

    move-result-object v0

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p2

    if-eqz p2, :cond_b7

    .line 782
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p2

    .line 783
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefUpdateListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    # getter for: Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->mImeHeight:I
    invoke-static {v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_b7
    return-void
.end method
