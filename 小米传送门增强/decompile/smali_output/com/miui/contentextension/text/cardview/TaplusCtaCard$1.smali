.class Lcom/miui/contentextension/text/cardview/TaplusCtaCard$1;
.super Ljava/lang/Object;
.source "TaplusCtaCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/cardview/TaplusCtaCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/cardview/TaplusCtaCard;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/cardview/TaplusCtaCard;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard$1;->this$0:Lcom/miui/contentextension/text/cardview/TaplusCtaCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 64
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/contentextension/text/TaplusCtaEvent;

    iget-object v1, p0, Lcom/miui/contentextension/text/cardview/TaplusCtaCard$1;->this$0:Lcom/miui/contentextension/text/cardview/TaplusCtaCard;

    invoke-static {v1}, Lcom/miui/contentextension/text/cardview/TaplusCtaCard;->-$$Nest$fgetmHashCode(Lcom/miui/contentextension/text/cardview/TaplusCtaCard;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/text/TaplusCtaEvent;-><init>(IZ)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
