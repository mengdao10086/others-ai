.class public final synthetic Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Configuration;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lmiuix/app/Application$ComponentCallbacksWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/content/res/Configuration;

    check-cast p1, Landroid/content/ComponentCallbacks;

    invoke-static {v0, p1}, Lmiuix/app/Application$ComponentCallbacksWrapper;->$r8$lambda$Z4WEei5xtq_Z1Nenf1iINl3y1GQ(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V

    return-void
.end method
