.class Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow$5;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;->setPopupShadowAlpha(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 4

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_20

    :cond_d
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_20
    :goto_20
    return-void
.end method
