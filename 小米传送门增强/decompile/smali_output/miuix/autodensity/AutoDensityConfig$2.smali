.class Lmiuix/autodensity/AutoDensityConfig$2;
.super Ljava/lang/Object;
.source "AutoDensityConfig.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/autodensity/AutoDensityConfig;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/autodensity/AutoDensityConfig;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$2;->this$0:Lmiuix/autodensity/AutoDensityConfig;

    iput-object p2, p0, Lmiuix/autodensity/AutoDensityConfig$2;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 168
    iget-object v0, p0, Lmiuix/autodensity/AutoDensityConfig$2;->this$0:Lmiuix/autodensity/AutoDensityConfig;

    iget-object v1, p0, Lmiuix/autodensity/AutoDensityConfig$2;->val$application:Landroid/app/Application;

    invoke-virtual {v0, v1, p1}, Lmiuix/autodensity/AutoDensityConfig;->processOnAppConfigChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .line 0
    return-void
.end method
