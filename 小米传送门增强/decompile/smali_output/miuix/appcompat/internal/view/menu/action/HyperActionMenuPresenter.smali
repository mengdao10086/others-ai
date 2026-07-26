.class public Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;
.super Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;
.source "HyperActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter$HyperPopupOverflowMenu;
    }
.end annotation


# instance fields
.field private mHyperMenuPrimaryCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperMenuSecondaryCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V
    .registers 7

    .line 29
    invoke-direct/range {p0 .. p6}, Lmiuix/appcompat/internal/view/menu/action/EndActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;->mHyperMenuPrimaryCheckedMap:Ljava/util/Map;

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;->mHyperMenuSecondaryCheckedMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;
    .registers 1

    .line 18
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method


# virtual methods
.method public getHyperPrimaryCheckedData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;->mHyperMenuPrimaryCheckedMap:Ljava/util/Map;

    return-object v0
.end method

.method public getHyperSecondaryCheckedData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;->mHyperMenuSecondaryCheckedMap:Ljava/util/Map;

    return-object v0
.end method

.method protected getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;
    .registers 9

    .line 34
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->shouldShowPopupOverflow()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 35
    new-instance v0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter$HyperPopupOverflowMenu;

    iget-object v3, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiuix/appcompat/internal/view/menu/BaseMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    iget-object v6, p0, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->mDecorView:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v7, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter$HyperPopupOverflowMenu;-><init>(Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V

    .line 36
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;->mHyperMenuPrimaryCheckedMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->restoreHyperMenuPrimaryCheckedData(Ljava/util/Map;)V

    .line 37
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/action/HyperActionMenuPresenter;->mHyperMenuSecondaryCheckedMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->restoreHyperMenuSecondaryCheckedData(Ljava/util/Map;)V

    return-object v0

    .line 40
    :cond_21
    invoke-super {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getOverflowMenu()Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter$OverflowMenu;

    move-result-object v0

    return-object v0
.end method
