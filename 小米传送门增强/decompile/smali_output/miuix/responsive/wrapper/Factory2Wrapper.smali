.class public abstract Lmiuix/responsive/wrapper/Factory2Wrapper;
.super Ljava/lang/Object;
.source "Factory2Wrapper.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field private mOriginFactory2:Landroid/view/LayoutInflater$Factory2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    .line 22
    iget-object v0, p0, Lmiuix/responsive/wrapper/Factory2Wrapper;->mOriginFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_9

    .line 23
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    .line 32
    iget-object v0, p0, Lmiuix/responsive/wrapper/Factory2Wrapper;->mOriginFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_9

    .line 33
    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public setOriginFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lmiuix/responsive/wrapper/Factory2Wrapper;->mOriginFactory2:Landroid/view/LayoutInflater$Factory2;

    return-void
.end method
