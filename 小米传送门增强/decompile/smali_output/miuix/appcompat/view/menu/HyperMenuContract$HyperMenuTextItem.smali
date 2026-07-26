.class public Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;
.super Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;
.source "HyperMenuContract.java"


# instance fields
.field public checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

.field public isExpandable:Z

.field public isHeaderItem:Z

.field public itemForeignKey:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;-><init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V

    .line 59
    sget-object p1, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->NON_SUPPORT:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->itemForeignKey:I

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 3

    .line 66
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuTextItem;->checkStatus:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    sget-object v1, Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;->CHECKED:Lmiuix/appcompat/view/menu/HyperMenuContract$CheckableType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
