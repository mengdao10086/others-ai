.class Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$4;
.super Ljava/lang/Object;
.source "TabletFloatingActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->onEnd(Ljava/lang/Object;)V
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

    .line 351
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$4;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 354
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$4;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    iget-object v0, v0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->realFinish()V

    return-void
.end method
