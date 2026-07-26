.class public Lcom/miui/contentextension/utils/TaplusLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "TaplusLinkMovementMethod.java"


# instance fields
.field private mHashCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method private onClick(Landroid/text/style/ClickableSpan;Landroid/view/View;)V
    .registers 6

    .line 55
    instance-of p2, p1, Landroid/text/style/URLSpan;

    if-eqz p2, :cond_19

    .line 56
    check-cast p1, Landroid/text/style/URLSpan;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/miui/contentextension/text/TaplusCtaEvent;

    iget v1, p0, Lcom/miui/contentextension/utils/TaplusLinkMovementMethod;->mHashCode:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/miui/contentextension/text/TaplusCtaEvent;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 26
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 29
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 30
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 32
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 35
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 38
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 39
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    int-to-float v0, v0

    .line 40
    invoke-virtual {v3, v2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 42
    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 44
    array-length v2, v0

    if-eqz v2, :cond_44

    const/4 p2, 0x0

    .line 45
    aget-object p2, v0, p2

    .line 46
    invoke-direct {p0, p2, p1}, Lcom/miui/contentextension/utils/TaplusLinkMovementMethod;->onClick(Landroid/text/style/ClickableSpan;Landroid/view/View;)V

    return v1

    .line 51
    :cond_44
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setHashCode(I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/miui/contentextension/utils/TaplusLinkMovementMethod;->mHashCode:I

    return-void
.end method
