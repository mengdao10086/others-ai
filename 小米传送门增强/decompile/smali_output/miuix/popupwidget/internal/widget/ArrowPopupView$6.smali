.class Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;
.super Ljava/lang/Object;
.source "ArrowPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/internal/widget/ArrowPopupView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/internal/widget/ArrowPopupView;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 951
    iput-object p1, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;->this$0:Lmiuix/popupwidget/internal/widget/ArrowPopupView;

    iput-object p2, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 954
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 955
    iget-object v0, p0, Lmiuix/popupwidget/internal/widget/ArrowPopupView$6;->val$contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
