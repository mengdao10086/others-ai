.class Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$2;
.super Ljava/lang/Object;
.source "BlacklistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const v0, 0x7f0a0236

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 129
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 130
    check-cast p1, Landroid/widget/CompoundButton;

    .line 131
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 132
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_37

    .line 133
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 134
    iget-object v1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$2;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    invoke-static {v1}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->-$$Nest$fgetmListener(Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;)Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;->onCheckBoxChange(IZ)V

    :cond_37
    return-void
.end method
