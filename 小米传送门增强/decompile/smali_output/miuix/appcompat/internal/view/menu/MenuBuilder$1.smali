.class Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/view/menu/MenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiuix/appcompat/internal/view/menu/MenuItemImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/view/menu/MenuBuilder;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .registers 2

    .line 1124
    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;->this$0:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1124
    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    check-cast p2, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder$1;->compare(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)I

    move-result p1

    return p1
.end method

.method public compare(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)I
    .registers 7

    .line 1127
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v0

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_14

    .line 1128
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result p1

    if-eqz p1, :cond_13

    move v2, v3

    :cond_13
    return v2

    .line 1129
    :cond_14
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v0

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v1

    if-eq v0, v1, :cond_26

    .line 1130
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result p1

    if-eqz p1, :cond_25

    move v2, v3

    :cond_25
    return v2

    .line 1132
    :cond_26
    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result p1

    invoke-virtual {p2}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getOrder()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
