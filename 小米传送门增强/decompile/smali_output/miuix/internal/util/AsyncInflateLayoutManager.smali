.class public Lmiuix/internal/util/AsyncInflateLayoutManager;
.super Ljava/lang/Object;
.source "AsyncInflateLayoutManager.java"


# static fields
.field private static final MANAGER:Lmiuix/internal/util/AsyncInflateLayoutManager;


# instance fields
.field private isCachedEnable:Z

.field private isEnabled:Z

.field private isEnabledLog:Z

.field private final mListTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListener:Lmiuix/internal/util/AsyncLayoutInflater$OnInflateFinishedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lmiuix/internal/util/AsyncInflateLayoutManager;

    invoke-direct {v0}, Lmiuix/internal/util/AsyncInflateLayoutManager;-><init>()V

    sput-object v0, Lmiuix/internal/util/AsyncInflateLayoutManager;->MANAGER:Lmiuix/internal/util/AsyncInflateLayoutManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->mListTypeMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->isEnabled:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->isEnabledLog:Z

    .line 35
    iput-boolean v0, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->isCachedEnable:Z

    .line 252
    new-instance v0, Lmiuix/internal/util/AsyncInflateLayoutManager$1;

    invoke-direct {v0, p0}, Lmiuix/internal/util/AsyncInflateLayoutManager$1;-><init>(Lmiuix/internal/util/AsyncInflateLayoutManager;)V

    iput-object v0, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->mListener:Lmiuix/internal/util/AsyncLayoutInflater$OnInflateFinishedListener;

    return-void
.end method

.method public static getInstance()Lmiuix/internal/util/AsyncInflateLayoutManager;
    .registers 1

    .line 23
    sget-object v0, Lmiuix/internal/util/AsyncInflateLayoutManager;->MANAGER:Lmiuix/internal/util/AsyncInflateLayoutManager;

    return-object v0
.end method


# virtual methods
.method public inflateViewById(Ljava/lang/Integer;Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 8

    if-eqz p3, :cond_55

    if-nez p2, :cond_5

    goto :goto_55

    .line 116
    :cond_5
    iget-object v0, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->mListTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    const-string v1, "AsyncInflateManager"

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_3f

    .line 124
    :cond_18
    iget-boolean p2, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->isCachedEnable:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_24

    .line 125
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_2a

    .line 127
    :cond_24
    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 129
    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_35

    .line 130
    iget-object p3, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->mListTypeMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_35
    iget-boolean p1, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->isEnabledLog:Z

    if-eqz p1, :cond_3e

    .line 133
    const-string p1, "inflateCacheById is ok."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-object p2

    .line 118
    :cond_3f
    :goto_3f
    iget-boolean v0, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->isEnabledLog:Z

    if-eqz v0, :cond_48

    .line 119
    const-string v0, "inflateCacheById is null."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_48
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_55
    :goto_55
    const/4 p1, 0x0

    return-object p1
.end method

.method public inflateViewById(Ljava/lang/Integer;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 7

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_4
    iget-object v0, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->mListTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    const-string v1, "AsyncInflateManager"

    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_33

    :cond_17
    const/4 p2, 0x0

    .line 93
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_29

    .line 95
    iget-object p3, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->mListTypeMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_29
    iget-boolean p1, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->isEnabledLog:Z

    if-eqz p1, :cond_32

    .line 98
    const-string p1, "inflateCacheById is ok."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-object p2

    .line 88
    :cond_33
    :goto_33
    iget-boolean v0, p0, Lmiuix/internal/util/AsyncInflateLayoutManager;->isEnabledLog:Z

    if-eqz v0, :cond_3c

    .line 89
    const-string v0, "inflateCacheById is null."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_3c
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
