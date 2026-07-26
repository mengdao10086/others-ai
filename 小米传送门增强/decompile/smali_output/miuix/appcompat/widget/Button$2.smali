.class Lmiuix/appcompat/widget/Button$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/Button;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/Button;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lmiuix/appcompat/widget/Button$2;->this$0:Lmiuix/appcompat/widget/Button;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .registers 2

    .line 80
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .registers 2

    .line 69
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lmiuix/appcompat/widget/Button$2;->this$0:Lmiuix/appcompat/widget/Button;

    invoke-virtual {p1}, Lmiuix/appcompat/widget/Button;->restoreTextColor()V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void
.end method
