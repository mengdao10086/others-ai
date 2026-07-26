.class Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$1;
.super Ljava/lang/Object;
.source "CollapseTitle.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle$1;->this$0:Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
