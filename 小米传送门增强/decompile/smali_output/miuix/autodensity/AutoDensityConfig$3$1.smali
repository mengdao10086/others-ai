.class Lmiuix/autodensity/AutoDensityConfig$3$1;
.super Ljava/lang/Object;
.source "AutoDensityConfig.java"

# interfaces
.implements Landroid/view/ViewRootImpl$ActivityConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/autodensity/AutoDensityConfig$3;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/autodensity/AutoDensityConfig$3;

.field final synthetic val$callback:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lmiuix/autodensity/AutoDensityConfig$3;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->this$1:Lmiuix/autodensity/AutoDensityConfig$3;

    iput-object p2, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->val$callback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 8

    .line 363
    :try_start_0
    const-class v0, Landroid/view/ViewRootImpl$ActivityConfigCallback;

    iget-object v1, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->val$callback:Ljava/lang/Object;

    const-string v2, "onConfigurationChanged"

    const-class v3, Landroid/content/res/Configuration;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    .line 369
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 363
    invoke-static {v0, v1, v2, v3, p1}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->this$1:Lmiuix/autodensity/AutoDensityConfig$3;

    iget-object p1, p1, Lmiuix/autodensity/AutoDensityConfig$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    # invokes: Lmiuix/autodensity/AutoDensityConfig;->isShouldAdaptAutoDensity(Landroid/app/Application;)Z
    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->access$000(Landroid/app/Application;)Z

    move-result p1

    .line 372
    iget-object p2, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->this$1:Lmiuix/autodensity/AutoDensityConfig$3;

    iget-object p2, p2, Lmiuix/autodensity/AutoDensityConfig$3;->val$activity:Landroid/app/Activity;

    instance-of v0, p2, Lmiuix/autodensity/IDensity;

    if-eqz v0, :cond_33

    .line 373
    check-cast p2, Lmiuix/autodensity/IDensity;

    invoke-interface {p2}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    move-result p1

    :cond_33
    if-eqz p1, :cond_3c

    .line 376
    iget-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$3$1;->this$1:Lmiuix/autodensity/AutoDensityConfig$3;

    iget-object p1, p1, Lmiuix/autodensity/AutoDensityConfig$3;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lmiuix/autodensity/DensityUtil;->updateCustomDensity(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    return-void
.end method

.method public requestCompatCameraControl(ZZLandroid/app/ICompatCameraControlCallback;)V
    .registers 4

    .line 0
    return-void
.end method
