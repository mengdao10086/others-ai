.class Lcom/miui/contentextension/utils/ViewUtil$1;
.super Ljava/lang/Object;
.source "ViewUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/utils/ViewUtil;->expandTouchArea(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:Landroid/view/View;

.field final synthetic val$parent:Landroid/view/View;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/miui/contentextension/utils/ViewUtil$1;->val$delegate:Landroid/view/View;

    iput p2, p0, Lcom/miui/contentextension/utils/ViewUtil$1;->val$size:I

    iput-object p3, p0, Lcom/miui/contentextension/utils/ViewUtil$1;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/miui/contentextension/utils/ViewUtil$1;->val$delegate:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 26
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/miui/contentextension/utils/ViewUtil$1;->val$size:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 27
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 28
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 29
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 30
    iget-object v1, p0, Lcom/miui/contentextension/utils/ViewUtil$1;->val$parent:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/miui/contentextension/utils/ViewUtil$1;->val$delegate:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
