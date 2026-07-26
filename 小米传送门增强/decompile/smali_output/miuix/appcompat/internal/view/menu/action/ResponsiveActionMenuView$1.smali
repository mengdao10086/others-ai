.class Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ResponsiveActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView$1;->this$0:Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;

    # getter for: Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->mSuspendMenuBackgroundRadius:I
    invoke-static {p1}, Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;->access$000(Lmiuix/appcompat/internal/view/menu/action/ResponsiveActionMenuView;)I

    move-result p1

    int-to-float v5, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
