.class Lcom/miui/contentextension/utils/FolmeUtil$5;
.super Ljava/lang/Object;
.source "FolmeUtil.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/FolmeUtil;->doTintScaleOnTouch([Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 265
    invoke-static {p1, p2}, Lcom/miui/contentextension/utils/FolmeUtil;->doTintScale(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method
