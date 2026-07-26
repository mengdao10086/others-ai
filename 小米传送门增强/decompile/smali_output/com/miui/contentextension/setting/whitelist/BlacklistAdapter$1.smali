.class Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$1;
.super Ljava/lang/Object;
.source "BlacklistAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 115
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$1;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 118
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 119
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_17

    .line 120
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter$1;->this$0:Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;

    invoke-static {v0}, Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;->-$$Nest$fgetmListener(Lcom/miui/contentextension/setting/whitelist/BlacklistAdapter;)Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;

    move-result-object v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/miui/contentextension/setting/whitelist/OnCheckChangeListener;->onCheckBoxChange(IZ)V

    :cond_17
    return-void
.end method
