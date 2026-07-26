.class public Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;
.super Ljava/lang/Object;
.source "HyperMenuContract.java"


# instance fields
.field private final itemId:I

.field private final menuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->menuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_e

    .line 27
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->itemId:I

    goto :goto_12

    :cond_e
    const/16 p1, -0xc8

    .line 29
    iput p1, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->itemId:I

    :goto_12
    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->menuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    .line 21
    iput p2, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->itemId:I

    return-void
.end method


# virtual methods
.method public getItemId()I
    .registers 2

    .line 38
    iget v0, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->itemId:I

    return v0
.end method

.method public getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .registers 2

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->menuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object v0
.end method
