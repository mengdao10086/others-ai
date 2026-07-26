.class Lmiuix/popupwidget/widget/PopupWindow$6;
.super Landroid/view/ViewOutlineProvider;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/PopupWindow;->setPopupShadowAlpha(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/PopupWindow;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/widget/PopupWindow;)V
    .registers 2

    .line 564
    iput-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow$6;->this$0:Lmiuix/popupwidget/widget/PopupWindow;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 6

    .line 567
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2a

    .line 570
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/popupwidget/R$attr;->popupWindowShadowAlpha:I

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveFloat(Landroid/content/Context;IF)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_2a
    :goto_2a
    return-void
.end method
