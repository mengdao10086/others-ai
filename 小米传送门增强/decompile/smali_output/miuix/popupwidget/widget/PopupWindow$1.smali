.class Lmiuix/popupwidget/widget/PopupWindow$1;
.super Landroid/database/DataSetObserver;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/PopupWindow;


# direct methods
.method public static synthetic $r8$lambda$_DUh6Aa4Sz--DZMwl_HSHUIobCE(Lmiuix/popupwidget/widget/PopupWindow$1;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow$1;->lambda$onChanged$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lmiuix/popupwidget/widget/PopupWindow;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow$1;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onChanged$0(Landroid/view/View;)V
    .registers 3

    .line 116
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$1;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    iget-object v0, v0, Lmiuix/popupwidget/widget/PopupWindow;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_12

    .line 119
    :cond_d
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$1;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->updateLocation(Landroid/view/View;)V

    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    .line 105
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$1;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    # getter for: Lmiuix/popupwidget/widget/PopupWindow;->mContentSize:Lmiuix/popupwidget/widget/PopupWindow$ContentSize;
    invoke-static {v0}, Lmiuix/popupwidget/widget/PopupWindow;->access$000(Lmiuix/popupwidget/widget/PopupWindow;)Lmiuix/popupwidget/widget/PopupWindow$ContentSize;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiuix/popupwidget/widget/PopupWindow$ContentSize;->mHasContentWidth:Z

    .line 106
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$1;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 113
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$1;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 115
    new-instance v1, Lmiuix/popupwidget/widget/PopupWindow$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lmiuix/popupwidget/widget/PopupWindow$1$$ExternalSyntheticLambda0;-><init>(Lmiuix/popupwidget/widget/PopupWindow$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method
