.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 233
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    # getter for: Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mHasFirstLayout:Z
    invoke-static {p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$500(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Z

    move-result p2

    if-eqz p2, :cond_13

    if-eqz p1, :cond_13

    .line 235
    iget-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$3;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    # getter for: Lmiuix/popupwidget/internal/widget/ArrowPopupView;->mArrowLayoutTask:Ljava/lang/Runnable;
    invoke-static {p2}, Lmiuix/popupwidget/internal/widget/ArrowPopupView;->access$600(Lmiuix/popupwidget/internal/widget/ArrowPopupView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method
