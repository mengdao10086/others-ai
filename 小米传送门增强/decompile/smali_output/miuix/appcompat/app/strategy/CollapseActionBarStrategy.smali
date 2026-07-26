.class public Lmiuix/appcompat/app/strategy/CollapseActionBarStrategy;
.super Ljava/lang/Object;
.source "CollapseActionBarStrategy.java"

# interfaces
.implements Lmiuix/appcompat/app/strategy/IActionBarStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Lmiuix/appcompat/app/ActionBar;Lmiuix/appcompat/app/strategy/ActionBarSpec;)Lmiuix/appcompat/app/strategy/ActionBarConfig;
    .registers 3

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    .line 14
    new-instance p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;

    invoke-direct {p1}, Lmiuix/appcompat/app/strategy/ActionBarConfig;-><init>()V

    const/4 p2, 0x0

    .line 15
    iput p2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->expandState:I

    .line 16
    iput-boolean p2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->resizable:Z

    const/4 p2, 0x3

    .line 18
    iput p2, p1, Lmiuix/appcompat/app/strategy/ActionBarConfig;->endMenuMaxItemCount:I

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method
