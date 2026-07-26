.class public Lmiuix/autodensity/MiuixApplication;
.super Lmiuix/app/Application;
.source "MiuixApplication.java"

# interfaces
.implements Lmiuix/autodensity/IDensity;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lmiuix/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .line 10
    invoke-super {p0}, Lmiuix/app/Application;->onCreate()V

    .line 11
    invoke-static {p0}, Lmiuix/autodensity/AutoDensityConfig;->init(Landroid/app/Application;)Lmiuix/autodensity/AutoDensityConfig;

    return-void
.end method

.method public shouldAdaptAutoDensity()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
