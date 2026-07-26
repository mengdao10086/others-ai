.class public Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;
.super Landroid/widget/LinearLayout;
.source "TaplusRecognitionShrinkCard.java"

# interfaces
.implements Lcom/miui/contentextension/text/cardview/ITaplusCardView;


# instance fields
.field private mRecognitionIcon:Landroid/widget/ImageView;

.field private mRecognitionText:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0024

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0278

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->mRecognitionIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a0279

    .line 39
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->mRecognitionText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getRecognitionIcon()Landroid/widget/ImageView;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->mRecognitionIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRecognitionText()Landroid/widget/TextView;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->mRecognitionText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->mType:I

    return v0
.end method

.method public setRecognitionIcon(I)V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->mRecognitionIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setRecognitionText(I)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->mRecognitionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/miui/contentextension/text/cardview/TaplusRecognitionShrinkCard;->mType:I

    return-void
.end method
