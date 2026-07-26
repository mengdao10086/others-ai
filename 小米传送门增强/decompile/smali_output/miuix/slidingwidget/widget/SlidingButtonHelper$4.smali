.class Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(ZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

.field final synthetic val$callBack:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 626
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    iput-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->val$callBack:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lmiuix/animation/physics/DynamicAnimation;ZFF)V
    .registers 5

    .line 629
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$4;->val$callBack:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
