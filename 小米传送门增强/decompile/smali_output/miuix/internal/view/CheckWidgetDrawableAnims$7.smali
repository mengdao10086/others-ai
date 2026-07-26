.class Lmiuix/internal/view/CheckWidgetDrawableAnims$7;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/view/CheckWidgetDrawableAnims;->startUnPressedAnim(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method constructor <init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 354
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;
    invoke-static {v0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$100(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_15

    .line 355
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;
    invoke-static {v0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$100(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 357
    :cond_15
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;
    invoke-static {v0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$200(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 358
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    # getter for: Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;
    invoke-static {v0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$200(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_2a
    return-void
.end method
