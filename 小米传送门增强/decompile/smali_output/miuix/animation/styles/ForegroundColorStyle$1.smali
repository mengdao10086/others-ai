.class Lmiuix/animation/styles/ForegroundColorStyle$1;
.super Ljava/lang/Object;
.source "ForegroundColorStyle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/animation/styles/ForegroundColorStyle;->start(Lmiuix/animation/IAnimTarget;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$infoTintMode:I

.field final synthetic val$target:Lmiuix/animation/IAnimTarget;


# direct methods
.method constructor <init>(Lmiuix/animation/IAnimTarget;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lmiuix/animation/styles/ForegroundColorStyle$1;->val$target:Lmiuix/animation/IAnimTarget;

    iput p2, p0, Lmiuix/animation/styles/ForegroundColorStyle$1;->val$infoTintMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 33
    iget-object v0, p0, Lmiuix/animation/styles/ForegroundColorStyle$1;->val$target:Lmiuix/animation/IAnimTarget;

    # invokes: Lmiuix/animation/styles/ForegroundColorStyle;->getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;
    invoke-static {v0}, Lmiuix/animation/styles/ForegroundColorStyle;->access$000(Lmiuix/animation/IAnimTarget;)Landroid/view/View;

    move-result-object v0

    .line 34
    # invokes: Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z
    invoke-static {v0}, Lmiuix/animation/styles/ForegroundColorStyle;->access$100(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 37
    :cond_d
    iget v1, p0, Lmiuix/animation/styles/ForegroundColorStyle$1;->val$infoTintMode:I

    .line 38
    invoke-static {v0}, Lmiuix/animation/styles/TintDrawable;->setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object v2

    .line 39
    sget v3, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 40
    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_27

    .line 41
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 42
    invoke-virtual {v2, v0}, Lmiuix/animation/styles/TintDrawable;->setHoverCorner(F)V

    goto :goto_34

    .line 43
    :cond_27
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_34

    .line 44
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    .line 45
    invoke-virtual {v2, v0}, Lmiuix/animation/styles/TintDrawable;->setHoverCorner(F)V

    .line 48
    :cond_34
    :goto_34
    invoke-static {}, Lmiuix/device/DeviceUtils;->getDeviceLevel()I

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_3f

    if-ne v1, v3, :cond_3f

    const/4 v1, 0x1

    goto :goto_42

    :cond_3f
    if-ne v1, v3, :cond_42

    const/4 v1, 0x0

    :cond_42
    :goto_42
    and-int/lit8 v0, v1, 0x3

    .line 53
    invoke-virtual {v2, v0}, Lmiuix/animation/styles/TintDrawable;->initTintBuffer(I)V

    return-void
.end method
