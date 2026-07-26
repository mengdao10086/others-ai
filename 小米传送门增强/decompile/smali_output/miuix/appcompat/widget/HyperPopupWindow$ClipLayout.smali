.class public Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;
.super Landroid/widget/FrameLayout;
.source "HyperPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/HyperPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipLayout"
.end annotation


# instance fields
.field private backCallBack:Landroid/window/OnBackInvokedCallback;

.field dispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private interceptedTouchEvent:Z

.field private mClipPath:Landroid/graphics/Path;

.field private mClipRoundRect:Landroid/graphics/RectF;

.field private mIsClip:Z

.field private mRadius:F

.field final synthetic this$0:Lmiuix/appcompat/widget/HyperPopupWindow;


# direct methods
.method public static synthetic $r8$lambda$R4ZmVxmm2w2znsfWccjIe4HO5VE(Lmiuix/appcompat/widget/HyperPopupWindow;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->lambda$onAttachedToWindow$0(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/widget/HyperPopupWindow;Landroid/content/Context;)V
    .registers 3

    .line 1065
    iput-object p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    .line 1066
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1057
    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mIsClip:Z

    .line 1058
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipRoundRect:Landroid/graphics/RectF;

    .line 1059
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipPath:Landroid/graphics/Path;

    .line 1063
    iput-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->interceptedTouchEvent:Z

    return-void
.end method

.method private static synthetic lambda$onAttachedToWindow$0(Lmiuix/appcompat/widget/HyperPopupWindow;)V
    .registers 1

    .line 1110
    # invokes: Lmiuix/appcompat/widget/HyperPopupWindow;->collapseSecondaryMenu()V
    invoke-static {p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->access$900(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1094
    iget-boolean v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mIsClip:Z

    if-eqz v0, :cond_9

    .line 1095
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1097
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 1107
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_22

    .line 1109
    invoke-virtual {p0}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->dispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 1110
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->this$0:Lmiuix/appcompat/widget/HyperPopupWindow;

    new-instance v1, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/widget/HyperPopupWindow;)V

    iput-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->backCallBack:Landroid/window/OnBackInvokedCallback;

    .line 1111
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->dispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_22

    const v2, 0xf4240

    .line 1112
    invoke-static {v0, v2, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticApiModelOutline0;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_22
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 1119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_12

    .line 1121
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->dispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_12

    .line 1122
    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->backCallBack:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarView$$ExternalSyntheticApiModelOutline1;->m(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_12
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1102
    iget-boolean p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->interceptedTouchEvent:Z

    return p1
.end method

.method public refreshClipPath()V
    .registers 5

    .line 1086
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1087
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipRoundRect:Landroid/graphics/RectF;

    iget v2, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    const/4 v0, 0x1

    .line 1088
    iput-boolean v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mIsClip:Z

    return-void
.end method

.method public setClipBounds(IIII)V
    .registers 6

    .line 1082
    iget-object v0, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mClipRoundRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setRadius(F)V
    .registers 2

    .line 1078
    iput p1, p0, Lmiuix/appcompat/widget/HyperPopupWindow$ClipLayout;->mRadius:F

    return-void
.end method
