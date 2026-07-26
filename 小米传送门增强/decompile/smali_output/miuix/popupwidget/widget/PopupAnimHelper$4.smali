.class Lmiuix/popupwidget/widget/PopupAnimHelper$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "PopupAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/PopupAnimHelper;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/widget/PopupAnimHelper;Landroid/view/View;)V
    .registers 3

    .line 99
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    iput-object p2, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .registers 4

    .line 102
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;
    invoke-static {p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_16

    .line 103
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;
    invoke-static {p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 105
    :cond_16
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->val$contentView:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .registers 4

    .line 119
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->val$contentView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 120
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # setter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mInAnimation:Z
    invoke-static {p1, v1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$402(Lmiuix/popupwidget/widget/PopupAnimHelper;Z)Z

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 4

    .line 110
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;
    invoke-static {p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 111
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # getter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mSpringBackLayout:Landroid/view/View;
    invoke-static {p1}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$300(Lmiuix/popupwidget/widget/PopupAnimHelper;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 113
    :cond_16
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->val$contentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 114
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupAnimHelper$4;->this$0:Lmiuix/popupwidget/widget/PopupAnimHelper;

    # setter for: Lmiuix/popupwidget/widget/PopupAnimHelper;->mInAnimation:Z
    invoke-static {p1, v0}, Lmiuix/popupwidget/widget/PopupAnimHelper;->access$402(Lmiuix/popupwidget/widget/PopupAnimHelper;Z)Z

    return-void
.end method
