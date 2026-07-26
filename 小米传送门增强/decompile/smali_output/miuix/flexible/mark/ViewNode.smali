.class public Lmiuix/flexible/mark/ViewNode;
.super Ljava/lang/Object;
.source "ViewNode.java"


# instance fields
.field private height:I

.field private mark:I

.field private view:Landroid/view/View;

.field private weight:F

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lmiuix/flexible/mark/ViewNode;->weight:F

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 48
    iget v0, p0, Lmiuix/flexible/mark/ViewNode;->height:I

    return v0
.end method

.method public getMark()I
    .registers 2

    .line 16
    iget v0, p0, Lmiuix/flexible/mark/ViewNode;->mark:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 24
    iget-object v0, p0, Lmiuix/flexible/mark/ViewNode;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWeight()F
    .registers 2

    .line 32
    iget v0, p0, Lmiuix/flexible/mark/ViewNode;->weight:F

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 40
    iget v0, p0, Lmiuix/flexible/mark/ViewNode;->width:I

    return v0
.end method

.method public setHeight(I)V
    .registers 2

    .line 52
    iput p1, p0, Lmiuix/flexible/mark/ViewNode;->height:I

    return-void
.end method

.method public setMark(I)V
    .registers 2

    .line 20
    iput p1, p0, Lmiuix/flexible/mark/ViewNode;->mark:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lmiuix/flexible/mark/ViewNode;->view:Landroid/view/View;

    return-void
.end method

.method public setWeight(F)V
    .registers 2

    .line 36
    iput p1, p0, Lmiuix/flexible/mark/ViewNode;->weight:F

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 44
    iput p1, p0, Lmiuix/flexible/mark/ViewNode;->width:I

    return-void
.end method
