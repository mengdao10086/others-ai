.class public Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;
.super Ljava/lang/Object;
.source "HyperContextMenuImpl.java"


# instance fields
.field private mAdapter:Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuAdapter;

.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

.field private final mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mPrimaryPreCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondaryPreCheckedMap:Ljava/util/Map;
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
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p3, :cond_1f

    .line 44
    sget-object p3, Lmiuix/appcompat/R$styleable;->miuiPopupMenu:[I

    sget v1, Lmiuix/appcompat/R$attr;->miuiPopupMenuStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 46
    :try_start_f
    sget v1, Lmiuix/appcompat/R$styleable;->miuiPopupMenu_miuiPopupTheme:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_1a

    .line 48
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    move p3, v1

    goto :goto_1f

    :catchall_1a
    move-exception p1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    throw p1

    :cond_1f
    :goto_1f
    if-eqz p3, :cond_29

    .line 52
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mContext:Landroid/content/Context;

    goto :goto_2b

    .line 54
    :cond_29
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mContext:Landroid/content/Context;

    .line 57
    :goto_2b
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mAnchor:Landroid/view/View;

    .line 58
    new-instance p2, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p3, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    .line 59
    new-instance p2, Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-direct {p2, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    .line 60
    invoke-virtual {p2, v0}, Lmiuix/popupwidget/widget/PopupWindow;->setWindowAnimationEnabled(Z)V

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->setClippingEnabled(Z)V

    .line 62
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->setAutoDismiss(Z)V

    .line 63
    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->setWindowAnimationEnabled(Z)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 134
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public inflate(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 4

    .line 119
    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuAdapter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuAdapter;

    .line 120
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mPrimaryPreCheckedMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckPrimaryItem(Ljava/util/Map;)V

    .line 121
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuAdapter;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mSecondaryPreCheckedMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->preCheckSecondaryItem(Ljava/util/Map;)V

    .line 122
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuAdapter;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->update(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    return-void
.end method

.method public isShowing()Z
    .registers 2

    .line 130
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAutoDismiss(Z)V
    .registers 3

    .line 138
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAutoDismiss(Z)V

    return-void
.end method

.method public setClippingEnabled(Z)V
    .registers 3

    .line 176
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    .line 172
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->setOnMenuItemClickListener(Lmiuix/appcompat/widget/HyperPopupWindow$OnMenuItemClickListener;)V

    return-void
.end method

.method public setPopupWindowStrategy(Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V
    .registers 3

    .line 126
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/HyperPopupWindow;->setPopupWindowStrategy(Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;)V

    return-void
.end method

.method public setWindowAnimationEnabled(Z)V
    .registers 3

    .line 142
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setWindowAnimationEnabled(Z)V

    return-void
.end method

.method public show()V
    .registers 3

    .line 157
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuAdapter;

    invoke-virtual {v0}, Lmiuix/appcompat/view/menu/HyperMenuAdapter;->hasSubMenu()Z

    move-result v0

    .line 158
    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->setSecondaryMenuEnabled(Z)V

    .line 159
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuAdapter;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    iget-object v1, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/HyperPopupWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method public update()V
    .registers 2

    .line 164
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/context/HyperContextMenuImpl;->mHyperPopupWindow:Lmiuix/appcompat/widget/HyperPopupWindow;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/HyperPopupWindow;->update()V

    return-void
.end method
