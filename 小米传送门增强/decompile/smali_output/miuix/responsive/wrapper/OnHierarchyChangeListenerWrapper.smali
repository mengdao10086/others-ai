.class public Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;
.super Ljava/lang/Object;
.source "OnHierarchyChangeListenerWrapper.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field private mOriginOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 12
    iget-object v0, p0, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;->mOriginOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_7

    .line 13
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 19
    iget-object v0, p0, Lmiuix/responsive/wrapper/OnHierarchyChangeListenerWrapper;->mOriginOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_7

    .line 20
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_7
    return-void
.end method
