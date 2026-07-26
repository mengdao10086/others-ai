.class Lmiuix/popupwidget/widget/PopupWindow$ContainerView;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lmiuix/popupwidget/widget/PopupWindow;Landroid/content/Context;)V
    .registers 3

    .line 1012
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    .line 1013
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1034
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1035
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    # getter for: Lmiuix/popupwidget/widget/PopupWindow;->mAutoDismiss:Z
    invoke-static {v0}, Lmiuix/popupwidget/widget/PopupWindow;->access$600(Lmiuix/popupwidget/widget/PopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1036
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    goto :goto_16

    .line 1038
    :cond_11
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    # invokes: Lmiuix/popupwidget/widget/PopupWindow;->configurationChanged(Landroid/content/res/Configuration;)V
    invoke-static {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->access$700(Lmiuix/popupwidget/widget/PopupWindow;Landroid/content/res/Configuration;)V

    :goto_16
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1028
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1029
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow$ContainerView;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    # invokes: Lmiuix/popupwidget/widget/PopupWindow;->detachAnchorView()V
    invoke-static {v0}, Lmiuix/popupwidget/widget/PopupWindow;->access$500(Lmiuix/popupwidget/widget/PopupWindow;)V

    return-void
.end method
