.class Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;
.super Ljava/lang/Object;
.source "BaseResponseStateManager.java"

# interfaces
.implements Lmiuix/responsive/interfaces/IResponsive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponsiveView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiuix/responsive/interfaces/IResponsive<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mContainer:Landroid/view/View;

.field private mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

.field final synthetic this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method public constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/view/View;)V
    .registers 3

    .line 270
    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mContainer:Landroid/view/View;

    return-void
.end method

.method private doResponse(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 6

    .line 294
    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    iget-object v0, v0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 295
    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mIViewResponsive:Lmiuix/responsive/interfaces/IViewResponsive;

    if-eqz v1, :cond_16

    invoke-interface {v1, p1, p2, p3, v0}, Lmiuix/responsive/interfaces/IViewResponsive;->onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;ZLjava/util/List;)Z

    move-result p3

    if-nez p3, :cond_7d

    .line 297
    :cond_16
    iget-object p3, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    iget-object p3, p3, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/responsive/map/ResponsiveViewSpec;

    invoke-virtual {p3}, Lmiuix/responsive/map/ResponsiveViewSpec;->getEffectiveScreenOrientation()I

    move-result p3

    if-nez p1, :cond_3e

    .line 298
    iget-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->this$0:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {p1}, Lmiuix/responsive/page/manager/BaseStateManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_3e
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v0, :cond_7d

    .line 299
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 300
    invoke-static {p1, p3}, Lmiuix/responsive/map/ResponsiveSpec;->isScreenOrientationMatch(II)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 302
    invoke-virtual {p3, p2}, Lmiuix/responsive/map/ResponsiveViewSpec;->onResponsiveState(Lmiuix/responsive/map/ScreenSpec;)V

    goto :goto_52

    .line 305
    :cond_62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_66
    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/responsive/map/ResponsiveViewSpec;

    .line 306
    invoke-virtual {p2}, Lmiuix/responsive/map/ResponsiveViewSpec;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_66

    const/4 p3, 0x0

    .line 308
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_66

    :cond_7d
    return-void
.end method


# virtual methods
.method public getResponsiveSubject()Landroid/view/View;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    .line 265
    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->getResponsiveSubject()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    .line 290
    invoke-direct {p0, p1, p2, p3}, Lmiuix/responsive/page/manager/BaseResponseStateManager$ResponsiveView;->doResponse(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V

    return-void
.end method
