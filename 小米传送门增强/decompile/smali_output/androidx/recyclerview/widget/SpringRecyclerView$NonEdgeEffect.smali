.class Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonEdgeEffect"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 446
    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public finish()V
    .registers 1

    .line 0
    return-void
.end method

.method public getBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColor()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxHeight()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isFinished()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public onAbsorb(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPull(F)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPull(FF)V
    .registers 3

    .line 0
    return-void
.end method

.method public onRelease()V
    .registers 1

    .line 0
    return-void
.end method

.method public setBlendMode(Landroid/graphics/BlendMode;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setColor(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setSize(II)V
    .registers 3

    .line 0
    return-void
.end method
