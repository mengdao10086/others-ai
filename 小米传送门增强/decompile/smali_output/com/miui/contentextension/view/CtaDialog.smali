.class public Lcom/miui/contentextension/view/CtaDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "CtaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/view/CtaDialog$DialogListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/contentextension/view/CtaDialog$DialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/contentextension/view/CtaDialog$DialogListener;)V
    .registers 4

    const v0, 0x7f110009

    .line 22
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p2, p0, Lcom/miui/contentextension/view/CtaDialog;->mListener:Lcom/miui/contentextension/view/CtaDialog$DialogListener;

    .line 24
    invoke-direct {p0, p1}, Lcom/miui/contentextension/view/CtaDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0a005d

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f1000d6

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance p1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {p1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p1, 0x7f0a0097

    .line 35
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0099

    .line 36
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0098

    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/miui/contentextension/view/CtaDialog;->mListener:Lcom/miui/contentextension/view/CtaDialog$DialogListener;

    invoke-interface {v0}, Lcom/miui/contentextension/view/CtaDialog$DialogListener;->onDismiss()V

    .line 59
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_1e

    goto :goto_19

    .line 47
    :pswitch_8
    iget-object p1, p0, Lcom/miui/contentextension/view/CtaDialog;->mListener:Lcom/miui/contentextension/view/CtaDialog$DialogListener;

    invoke-interface {p1}, Lcom/miui/contentextension/view/CtaDialog$DialogListener;->onDisagreeAndUseClick()V

    goto :goto_19

    .line 50
    :pswitch_e
    iget-object p1, p0, Lcom/miui/contentextension/view/CtaDialog;->mListener:Lcom/miui/contentextension/view/CtaDialog$DialogListener;

    invoke-interface {p1}, Lcom/miui/contentextension/view/CtaDialog$DialogListener;->onCancelClick()V

    goto :goto_19

    .line 44
    :pswitch_14
    iget-object p1, p0, Lcom/miui/contentextension/view/CtaDialog;->mListener:Lcom/miui/contentextension/view/CtaDialog$DialogListener;

    invoke-interface {p1}, Lcom/miui/contentextension/view/CtaDialog$DialogListener;->onAgreeAndUseClick()V

    .line 53
    :goto_19
    invoke-virtual {p0}, Lcom/miui/contentextension/view/CtaDialog;->dismiss()V

    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x7f0a0097
        :pswitch_14
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method
