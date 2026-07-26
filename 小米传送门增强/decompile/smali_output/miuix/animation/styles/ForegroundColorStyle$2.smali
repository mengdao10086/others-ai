.class Lmiuix/animation/styles/ForegroundColorStyle$2;
.super Ljava/lang/Object;
.source "ForegroundColorStyle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/styles/ForegroundColorStyle;->end(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lmiuix/animation/IAnimTarget;

.field final synthetic val$update:Lmiuix/animation/listener/UpdateInfo;


# direct methods
.method constructor <init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lmiuix/animation/styles/ForegroundColorStyle$2;->val$target:Lmiuix/animation/IAnimTarget;

    iput-object p2, p0, Lmiuix/animation/styles/ForegroundColorStyle$2;->val$update:Lmiuix/animation/listener/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 62
    iget-object v0, p0, Lmiuix/animation/styles/ForegroundColorStyle$2;->val$target:Lmiuix/animation/IAnimTarget;

    # invokes: Lmiuix/animation/styles/ForegroundColorStyle;->getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;
    invoke-static {v0}, Lmiuix/animation/styles/ForegroundColorStyle;->access$000(Lmiuix/animation/IAnimTarget;)Landroid/view/View;

    move-result-object v0

    .line 63
    # invokes: Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z
    invoke-static {v0}, Lmiuix/animation/styles/ForegroundColorStyle;->access$100(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 66
    :cond_d
    invoke-static {v0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lmiuix/animation/styles/ForegroundColorStyle$2;->val$update:Lmiuix/animation/listener/UpdateInfo;

    iget-object v1, v1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->value:D

    double-to-int v1, v1

    if-eqz v0, :cond_23

    .line 68
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_23

    .line 69
    invoke-virtual {v0}, Lmiuix/animation/styles/TintDrawable;->restoreOriginalDrawable()V

    :cond_23
    return-void
.end method
