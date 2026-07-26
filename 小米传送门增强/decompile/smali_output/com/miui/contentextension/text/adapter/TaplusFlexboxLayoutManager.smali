.class public Lcom/miui/contentextension/text/adapter/TaplusFlexboxLayoutManager;
.super Lcom/google/android/flexbox/FlexboxLayoutManager;
.source "TaplusFlexboxLayoutManager.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/miui/contentextension/text/adapter/TaplusFlexboxLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/text/adapter/TaplusFlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    .line 33
    iput-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusFlexboxLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 4

    .line 41
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    return-void
.end method
