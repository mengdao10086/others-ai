.class public Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;
.super Ljava/lang/Object;
.source "HyperPopupHelper.java"

# interfaces
.implements Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFenceDecor:Landroid/view/View;

.field private mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

.field private mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

.field private mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopupAnimationGravity:I

.field private mPopupHorizontalOffset:I

.field private mPopupMaxHeight:I

.field private mPopupVerticalOffset:I

.field private mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

.field private mPrimaryCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryCheckedMap:Ljava/util/Map;
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
.method public static synthetic $r8$lambda$9qpmLk5TYtqe6MCGuWniKUhIumc(Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->lambda$dismiss$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Landroid/view/View;Landroid/view/View;Z)V
    .registers 8

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupHorizontalOffset:I

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupAnimationGravity:I

    .line 50
    iput v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupMaxHeight:I

    .line 69
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 71
    iput-boolean p5, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mOverflowOnly:Z

    .line 73
    iput-object p3, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mAnchorView:Landroid/view/View;

    .line 74
    iput-object p4, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mFenceDecor:Landroid/view/View;

    .line 76
    invoke-virtual {p2, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    return-void
.end method

.method private synthetic lambda$dismiss$0()V
    .registers 1

    .line 150
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->saveData()V

    return-void
.end method

.method private saveData()V
    .registers 3

    .line 156
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    if-eqz v0, :cond_10

    .line 157
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPrimaryCheckedMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->copyPrimaryCheckedData(Ljava/util/Map;)V

    .line 158
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mSecondaryCheckedMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->copySecondaryCheckedData(Ljava/util/Map;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public dismiss(Z)V
    .registers 3

    .line 149
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 150
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    new-instance v0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;)V

    invoke-virtual {p1, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 151
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    :cond_15
    return-void
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 3

    .line 0
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 169
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 210
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 214
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->dismiss(Z)V

    .line 215
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_10

    .line 216
    invoke-interface {v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    :cond_10
    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 163
    invoke-direct {p0}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->saveData()V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    .line 165
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->close()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 173
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    const/16 p1, 0x52

    if-ne p2, p1, :cond_10

    .line 174
    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->dismiss(Z)V

    return v0

    :cond_10
    return p3
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)V
    .registers 4

    .line 250
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public restoreHyperMenuPrimaryCheckedData(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPrimaryCheckedMap:Ljava/util/Map;

    return-void
.end method

.method public restoreHyperMenuSecondaryCheckedData(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mSecondaryCheckedMap:Ljava/util/Map;

    return-void
.end method

.method public setAnimationGravity(I)V
    .registers 2

    .line 80
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupAnimationGravity:I

    return-void
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPresenterCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setPopupMaxHeight(I)V
    .registers 2

    .line 100
    iput p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupMaxHeight:I

    return-void
.end method

.method public tryShow()Z
    .registers 5

    .line 118
    new-instance v0, Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mFenceDecor:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/widget/HyperPopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    const v1, 0x800055

    .line 119
    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setDropDownGravity(I)V

    .line 120
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 121
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/widget/HyperPopupWindow;->setOnMenuItemClickListener(Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;)V

    .line 122
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setWindowAnimationEnabled(Z)V

    .line 124
    new-instance v0, Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mOverflowOnly:Z

    invoke-direct {v0, v1, v2, v3}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    .line 125
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperBaseAdapter;->setOptionalIconsVisible(Z)V

    .line 127
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPrimaryCheckedMap:Ljava/util/Map;

    if-eqz v0, :cond_3f

    .line 128
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckPrimaryItem(Ljava/util/Map;)V

    .line 130
    :cond_3f
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mSecondaryCheckedMap:Ljava/util/Map;

    if-eqz v0, :cond_48

    .line 131
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckSecondaryItem(Ljava/util/Map;)V

    .line 133
    :cond_48
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    .line 134
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->hasSubMenu()Z

    move-result v0

    .line 136
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->setSecondaryMenuEnabled(Z)V

    .line 137
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupHorizontalOffset:I

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setHorizontalOffset(I)V

    .line 138
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupVerticalOffset:I

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->setVerticalOffset(I)V

    .line 139
    iget v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mPopupMaxHeight:I

    if-lez v0, :cond_78

    .line 140
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v1, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setMaxAllowedHeight(I)V

    .line 142
    :cond_78
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->show(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperPopup:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .registers 2

    .line 192
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/HyperPopupHelper;->mHyperMenuAdapter:Lmiuix/appcompat/view/menu/HyperMenuAdapter;

    if-eqz p1, :cond_7

    .line 193
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_7
    return-void
.end method
