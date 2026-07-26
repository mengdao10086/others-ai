.class Lmiuix/appcompat/widget/Spinner$DropdownPopup;
.super Lmiuix/popupwidget/widget/PopupWindow;
.source "Spinner.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mFenceView:Landroid/view/View;

.field private mHintText:Ljava/lang/CharSequence;

.field private mOriginalHorizontalOffset:I

.field private mPopupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mVisibleRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;Landroid/content/Context;)V
    .registers 6

    .line 1185
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    const/4 v0, 0x0

    .line 1186
    invoke-direct {p0, p2, v0}, Lmiuix/popupwidget/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 1188
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1189
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_single_item:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_item_min_height:I

    .line 1190
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    const p2, 0x800053

    .line 1192
    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setDropDownGravity(I)V

    .line 1194
    new-instance p2, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;

    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;Lmiuix/appcompat/widget/Spinner;)V

    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x1

    .line 1210
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mIgnoreAnchorVisibility:Z

    return-void
.end method

.method static synthetic access$200(Lmiuix/appcompat/widget/Spinner$DropdownPopup;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 1172
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setOnPopupItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 1

    .line 1172
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mPopupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method

.method private initListView(II)V
    .registers 5

    .line 1349
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    .line 1350
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1351
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1352
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1353
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 1354
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1355
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method private setOnPopupItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 1214
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mPopupItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private setProperFenceView()V
    .registers 3

    .line 1235
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    if-eqz v0, :cond_5

    return-void

    .line 1240
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 1241
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lmiuix/appcompat/app/IActivity;

    if-eqz v1, :cond_29

    .line 1242
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/IActivity;

    invoke-interface {v1}, Lmiuix/appcompat/app/IActivity;->isInFloatingWindowMode()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1243
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceView(Landroid/view/View;)V

    goto :goto_4b

    .line 1248
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2d
    if-eqz v0, :cond_4b

    .line 1250
    instance-of v1, v0, Lmiuix/view/Fence;

    if-eqz v1, :cond_46

    move-object v1, v0

    check-cast v1, Lmiuix/view/Fence;

    invoke-interface {v1}, Lmiuix/view/Fence;->isFenceEnabled()Z

    move-result v1

    if-eqz v1, :cond_46

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_46

    .line 1251
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceView(Landroid/view/View;)V

    goto :goto_4b

    .line 1254
    :cond_46
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2d

    :cond_4b
    :goto_4b
    return-void
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .registers 5

    .line 1261
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Spinner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_14

    .line 1263
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1265
    :cond_14
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    if-gt v0, v1, :cond_2c

    const/16 v0, 0x53

    .line 1267
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setDropDownGravity(I)V

    goto :goto_31

    :cond_2c
    const/16 v0, 0x55

    .line 1270
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setDropDownGravity(I)V

    .line 1272
    :goto_31
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v0, v1}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v0

    .line 1273
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v1, v2}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v1

    .line 1274
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1275
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1276
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_5a

    const/4 v2, 0x0

    .line 1277
    invoke-virtual {p0, p1, v2, v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_65

    .line 1279
    :cond_5a
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_65
    return-void
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .registers 2

    .line 1225
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;)[[I
    .registers 12

    const/high16 p2, -0x80000000

    const/4 p3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4d

    .line 1287
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1288
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/16 v4, 0x8

    .line 1289
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1290
    new-array v4, p3, [I

    aput p3, v4, v0

    aput v3, v4, v1

    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[I

    move v4, v1

    :goto_24
    if-ge v4, v3, :cond_81

    const/4 v5, 0x0

    .line 1292
    invoke-interface {p1, v4, v5, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1293
    iget-object v6, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v6, v6, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    invoke-static {v6, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1294
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1293
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 1295
    aget-object v6, p3, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aput v7, v6, v1

    .line 1296
    aget-object v6, p3, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    aput v5, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1299
    :cond_4d
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1300
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1299
    invoke-virtual {p1, p2, v2}, Landroid/view/View;->measure(II)V

    .line 1301
    new-array p1, p3, [I

    aput p3, p1, v0

    aput v0, p1, v1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, [[I

    .line 1302
    aget-object p1, p3, v1

    iget-object p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    aput p2, p1, v1

    .line 1303
    aget-object p1, p3, v1

    iget-object p2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    aput p2, p1, v0

    :cond_81
    return-object p3
.end method

.method public prepareShow(Landroid/view/View;)Z
    .registers 2

    .line 1310
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->prepareShow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x2

    .line 1311
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1219
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1220
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setDropDownGravity(I)V
    .registers 2

    .line 1389
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setDropDownGravity(I)V

    return-void
.end method

.method public setFenceView(Landroid/view/View;)V
    .registers 2

    .line 1359
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    .line 1360
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setDecorView(Landroid/view/View;)V

    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .registers 2

    .line 1379
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1231
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public show(II)V
    .registers 5

    .line 1320
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 1322
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setProperFenceView()V

    const/4 v1, 0x2

    .line 1323
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1324
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->prepareShow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1325
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, v1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->showWithAnchor(Landroid/view/View;)V

    .line 1326
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->initListView(II)V

    :cond_1b
    if-eqz v0, :cond_1e

    return-void

    .line 1334
    :cond_1e
    new-instance p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;

    invoke-direct {p1, p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)V

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public show(IIFF)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1345
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->show(II)V

    return-void
.end method
