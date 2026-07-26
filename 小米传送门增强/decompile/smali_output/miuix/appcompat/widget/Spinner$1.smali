.class Lmiuix/appcompat/widget/Spinner$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/Spinner;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/widget/Spinner;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/Spinner;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 575
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    iput-object p2, p0, Lmiuix/appcompat/widget/Spinner$1;->val$listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 579
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    # getter for: Lmiuix/appcompat/widget/Spinner;->mSelectedPosition:I
    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->access$100(Lmiuix/appcompat/widget/Spinner;)I

    move-result v0

    if-ltz v0, :cond_2b

    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    # getter for: Lmiuix/appcompat/widget/Spinner;->mSelectedPosition:I
    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->access$100(Lmiuix/appcompat/widget/Spinner;)I

    move-result v0

    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 580
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    # getter for: Lmiuix/appcompat/widget/Spinner;->mSelectedPosition:I
    invoke-static {v0}, Lmiuix/appcompat/widget/Spinner;->access$100(Lmiuix/appcompat/widget/Spinner;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 583
    :cond_2b
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 585
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$1;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$1;->val$listener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_3a
    return-void
.end method
