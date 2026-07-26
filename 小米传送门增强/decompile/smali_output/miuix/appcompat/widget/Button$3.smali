.class Lmiuix/appcompat/widget/Button$3;
.super Ljava/lang/Object;
.source "Button.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 85
    iput-object p1, p0, Lmiuix/appcompat/widget/Button$3;->this$0:Lmiuix/appcompat/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 88
    iget-object v0, p0, Lmiuix/appcompat/widget/Button$3;->this$0:Lmiuix/appcompat/widget/Button;

    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_10

    :cond_a
    iget-object v1, p0, Lmiuix/appcompat/widget/Button$3;->this$0:Lmiuix/appcompat/widget/Button;

    invoke-static {v1}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    :goto_10
    # setter for: Lmiuix/appcompat/widget/Button;->mFolmeAnimator:Lmiuix/animation/IFolme;
    invoke-static {v0, v1}, Lmiuix/appcompat/widget/Button;->access$002(Lmiuix/appcompat/widget/Button;Lmiuix/animation/IFolme;)Lmiuix/animation/IFolme;

    return-void
.end method
