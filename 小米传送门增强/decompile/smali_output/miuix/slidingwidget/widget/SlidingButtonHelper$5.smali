.class Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;
.super Ljava/lang/Object;
.source "SlidingButtonHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)V
    .registers 2

    .line 673
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 676
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    # getter for: Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I
    invoke-static {v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$300(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I

    move-result v1

    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$5;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    # getter for: Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I
    invoke-static {v2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$400(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)I

    move-result v2

    if-lt v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    # setter for: Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z
    invoke-static {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$202(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Z)Z

    return-void
.end method
