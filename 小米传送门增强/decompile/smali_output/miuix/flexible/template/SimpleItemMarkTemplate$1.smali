.class Lmiuix/flexible/template/SimpleItemMarkTemplate$1;
.super Ljava/lang/Object;
.source "SimpleItemMarkTemplate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/flexible/template/SimpleItemMarkTemplate;->onFinishInflate(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/flexible/template/SimpleItemMarkTemplate;

.field final synthetic val$head:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/flexible/template/SimpleItemMarkTemplate;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lmiuix/flexible/template/SimpleItemMarkTemplate$1;->this$0:Lmiuix/flexible/template/SimpleItemMarkTemplate;

    iput-object p2, p0, Lmiuix/flexible/template/SimpleItemMarkTemplate$1;->val$head:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 54
    iget-object p1, p0, Lmiuix/flexible/template/SimpleItemMarkTemplate$1;->val$head:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_7
    return-void
.end method
