.class Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;
.super Lmiuix/animation/property/FloatProperty;
.source "SlidingButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/slidingwidget/widget/SlidingButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Landroid/widget/CompoundButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;


# direct methods
.method constructor <init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/widget/CompoundButton;)F
    .registers 2

    .line 142
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    # getter for: Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F
    invoke-static {p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$100(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 139
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;->getValue(Landroid/widget/CompoundButton;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/widget/CompoundButton;F)V
    .registers 3

    .line 147
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;->this$0:Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    # setter for: Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F
    invoke-static {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->access$102(Lmiuix/slidingwidget/widget/SlidingButtonHelper;F)F

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 139
    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p0, p1, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$3;->setValue(Landroid/widget/CompoundButton;F)V

    return-void
.end method
