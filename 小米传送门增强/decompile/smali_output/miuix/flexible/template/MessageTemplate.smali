.class public Lmiuix/flexible/template/MessageTemplate;
.super Lmiuix/flexible/template/AbstractAreaMappingTemplate;
.source "MessageTemplate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lmiuix/flexible/template/AbstractAreaMappingTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public getTemplateResId()I
    .registers 3

    .line 16
    invoke-virtual {p0}, Lmiuix/flexible/template/AbstractAreaMappingTemplate;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 21
    sget v0, Lmiuix/flexible/R$layout;->template_message_large:I

    return v0

    .line 18
    :cond_a
    sget v0, Lmiuix/flexible/R$layout;->template_message_normal:I

    return v0
.end method

.method public onFinishInflate(Landroid/view/ViewGroup;)V
    .registers 2

    .line 27
    invoke-super {p0, p1}, Lmiuix/flexible/template/AbstractAreaMappingTemplate;->onFinishInflate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onFinishLayoutMapping(Landroid/view/ViewGroup;)V
    .registers 3

    .line 32
    invoke-super {p0, p1}, Lmiuix/flexible/template/AbstractAreaMappingTemplate;->onFinishLayoutMapping(Landroid/view/ViewGroup;)V

    .line 33
    sget v0, Lmiuix/flexible/R$id;->area_title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-void
.end method
