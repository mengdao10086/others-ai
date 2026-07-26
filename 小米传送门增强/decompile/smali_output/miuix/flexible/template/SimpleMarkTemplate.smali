.class public Lmiuix/flexible/template/SimpleMarkTemplate;
.super Lmiuix/flexible/template/AbstractMarkTemplate;
.source "SimpleMarkTemplate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lmiuix/flexible/template/AbstractMarkTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutParams(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/flexible/template/AbstractMarkTemplate;->getChildViewLayoutParamsSafe(Landroid/view/View;)Lmiuix/flexible/view/HyperCellLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method
