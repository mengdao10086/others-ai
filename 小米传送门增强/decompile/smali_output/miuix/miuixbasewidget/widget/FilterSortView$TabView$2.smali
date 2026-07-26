.class Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

.field final synthetic val$l:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Landroid/view/View$OnClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 758
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->val$l:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 761
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    # getter for: Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mFiltered:Z
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$800(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 762
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    # getter for: Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescendingEnabled:Z
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$900(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 763
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    # getter for: Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->mDescending:Z
    invoke-static {v0}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1000(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Z

    move-result v2

    xor-int/2addr v1, v2

    # invokes: Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setDescending(Z)V
    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1100(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    goto :goto_21

    .line 766
    :cond_1c
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    # invokes: Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->setFiltered(Z)V
    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V

    .line 768
    :cond_21
    :goto_21
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->val$l:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 769
    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 770
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$2;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    # invokes: Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;->access$1200(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;)Lmiuix/util/HapticFeedbackCompat;

    move-result-object p1

    const/16 v0, 0xcc

    invoke-virtual {p1, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_3f

    .line 772
    :cond_3a
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :goto_3f
    return-void
.end method
