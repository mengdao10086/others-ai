.class public Lmiuix/recyclerview/card/base/ViewOutlineHelper;
.super Ljava/lang/Object;
.source "ViewOutlineHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/recyclerview/card/base/ViewOutlineHelper$CardViewOutlineProvider;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$_Y4a-MuJp98pSBHISDmXhtImAT8(Landroid/view/View;IF)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lmiuix/recyclerview/card/base/ViewOutlineHelper;->lambda$setItemCardOutline$0(Landroid/view/View;IF)V

    return-void
.end method

.method private static synthetic lambda$setItemCardOutline$0(Landroid/view/View;IF)V
    .registers 3

    .line 36
    invoke-static {p0, p1, p2}, Lmiuix/recyclerview/card/base/ViewOutlineHelper;->setOutline(Landroid/view/View;IF)V

    return-void
.end method

.method public static obtainCardViewOutlineProvider(IF)Lmiuix/recyclerview/card/base/ViewOutlineHelper$CardViewOutlineProvider;
    .registers 3

    .line 23
    new-instance v0, Lmiuix/recyclerview/card/base/ViewOutlineHelper$CardViewOutlineProvider;

    invoke-direct {v0, p0, p1}, Lmiuix/recyclerview/card/base/ViewOutlineHelper$CardViewOutlineProvider;-><init>(IF)V

    return-object v0
.end method

.method public static setItemCardOutline(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IFZJ)V
    .registers 6

    .line 34
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p3, :cond_15

    .line 36
    new-instance p3, Lmiuix/recyclerview/card/base/ViewOutlineHelper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lmiuix/recyclerview/card/base/ViewOutlineHelper$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;IF)V

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-gtz p1, :cond_11

    const-wide/16 p4, 0x64

    :cond_11
    invoke-virtual {p0, p3, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    .line 39
    :cond_15
    invoke-static {p0, p1, p2}, Lmiuix/recyclerview/card/base/ViewOutlineHelper;->setOutline(Landroid/view/View;IF)V

    :goto_18
    return-void
.end method

.method private static setOutline(Landroid/view/View;IF)V
    .registers 5

    .line 44
    invoke-static {p0}, Lmiuix/animation/Folme;->isInDraggingState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    if-ne p1, v1, :cond_10

    goto :goto_19

    :cond_10
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_23

    .line 46
    :cond_19
    :goto_19
    invoke-static {p1, p2}, Lmiuix/recyclerview/card/base/ViewOutlineHelper;->obtainCardViewOutlineProvider(IF)Lmiuix/recyclerview/card/base/ViewOutlineHelper$CardViewOutlineProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_23
    :goto_23
    return-void
.end method
