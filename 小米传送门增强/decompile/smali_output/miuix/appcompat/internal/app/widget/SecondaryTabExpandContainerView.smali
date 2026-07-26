.class public Lmiuix/appcompat/internal/app/widget/SecondaryTabExpandContainerView;
.super Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.source "SecondaryTabExpandContainerView.java"


# virtual methods
.method protected getDefaultTabTextStyle()I
    .registers 2

    .line 24
    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabTextSecondaryExpandStyle:I

    return v0
.end method

.method protected getTabActivatedTextStyle()I
    .registers 2

    .line 29
    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabActivatedTextSecondaryExpandStyle:I

    return v0
.end method
