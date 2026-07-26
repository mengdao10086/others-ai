.class Lmiuix/animation/controller/FolmeHover$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeHover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeHover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/controller/FolmeHover;


# direct methods
.method constructor <init>(Lmiuix/animation/controller/FolmeHover;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lmiuix/animation/controller/FolmeHover$1;->this$0:Lmiuix/animation/controller/FolmeHover;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 87
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 88
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover$1;->this$0:Lmiuix/animation/controller/FolmeHover;

    iget-object p1, p1, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    invoke-interface {p1, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-static {p1, p2}, Lmiuix/animation/controller/AnimState;->alignState(Lmiuix/animation/controller/AnimState;Ljava/util/Collection;)V

    :cond_15
    return-void
.end method
