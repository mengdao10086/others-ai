.class Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$3;
.super Ljava/lang/Object;
.source "TabletFloatingActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->notifyDragEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$3;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 336
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$3;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    # getter for: Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$700(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 337
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$3;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    # getter for: Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mOnFloatingCallback:Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;
    invoke-static {v0}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$700(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/appcompat/app/floatingactivity/OnFloatingCallback;->onDragEnd()V

    :cond_11
    return-void
.end method
