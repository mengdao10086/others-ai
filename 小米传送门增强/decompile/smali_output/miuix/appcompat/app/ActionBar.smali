.class public abstract Lmiuix/appcompat/app/ActionBar;
.super Landroidx/appcompat/app/ActionBar;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/ActionBar$OnScrollListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isAdsorptionToNoOverlay()Z
.end method

.method public abstract registerCoordinateScrollView(Landroid/view/View;)V
.end method

.method public abstract setEndView(Landroid/view/View;)V
.end method

.method public abstract setExpandState(I)V
.end method

.method public abstract setResizable(Z)V
.end method

.method public abstract setStartView(Landroid/view/View;)V
.end method

.method public abstract unregisterCoordinateScrollView(Landroid/view/View;)V
.end method
